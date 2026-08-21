"""Entrada del pipeline: python -m scraper build"""

from __future__ import annotations

import argparse
import json
import sys
from collections import defaultdict
from datetime import date
from pathlib import Path

from scraper import emit_lua, validate
from scraper.http import Fetcher
from scraper.model import SpecGuides  # noqa: F401
from scraper.model import ConsumableEntry, SourceView
from scraper.sources import icyveins, mythicstats, warcraftlogs, wowhead
from scraper.talent_tree import load as load_talents

ROOT = Path(__file__).resolve().parent.parent
DATA_DIR = ROOT / "data" / "specs"
ADDON_DATA = ROOT / "EquipHelper" / "Data"
TOC = ROOT / "EquipHelper" / "EquipHelper.toc"
DATA_ADDONS = ROOT / "data-addons"
PKGMETA = ROOT / ".pkgmeta"

SOURCES = [
    {"key": "mythicstats", "label": "Mythicstats", "url": "https://mythicstats.com"},
    {"key": "warcraftlogs", "label": "Warcraft Logs", "url": "https://www.warcraftlogs.com"},
    {"key": "wowhead", "label": "Wowhead", "url": "https://www.wowhead.com"},
    {"key": "icyveins", "label": "Icy Veins", "url": "https://www.icy-veins.com"},
]


def _attach_icyveins(fetcher, results, specs, report) -> None:
    """Anade la vista de Icy Veins a las guias ya construidas.

    Su equipo viene partido por contenido, asi que cada guia recibe la vista de
    su tipo. Talentos, gemas y consumibles son de la spec entera y se comparten.
    """
    by_slug = {spec.slug: spec for spec in specs}
    covered = 0

    for result in results:
        spec = by_slug.get(result.slug)
        if not spec:
            continue

        try:
            views = icyveins.fetch_views(fetcher, spec)
        except Exception as exc:
            report.warnings.append(f"icyveins {result.slug}: {exc}")
            continue

        if not views:
            report.warnings.append(f"icyveins: sin datos para {result.slug}")
            continue

        covered += 1
        for guide in result.guides:
            view = views.get(guide.content)
            if view:
                guide.views[icyveins.SOURCE_KEY] = view

    print(f"  icyveins: {covered} specs")


def _attach_consumables(fetcher, results, specs, report) -> None:
    """Anade los consumibles de Wowhead a las guias ya construidas.

    Dependen de la spec pero no del hero talent ni del tipo de contenido: el
    mismo frasco vale en banda y en mitica+, y por eso se copian a todas sus
    guias.
    """
    by_slug = {spec.slug: spec for spec in specs}
    covered = 0

    for result in results:
        spec = by_slug.get(result.slug)
        if not spec:
            continue

        try:
            consumables, url = wowhead.fetch_consumables(fetcher, spec)
        except Exception as exc:
            report.warnings.append(f"wowhead {result.slug}: {exc}")
            continue

        if not consumables:
            report.warnings.append(f"wowhead: sin consumibles para {result.slug}")
            continue

        covered += 1
        fetched_at = date.today().isoformat()

        for guide in result.guides:
            guide.views[wowhead.SOURCE_KEY] = SourceView(
                source=wowhead.SOURCE_KEY,
                url=url,
                fetched_at=fetched_at,
                consumables=[
                    ConsumableEntry(category=entry["category"], item_id=entry["item_id"],
                                    is_primary=entry["is_primary"])
                    for entry in consumables
                ],
            )

    print(f"  wowhead: {covered} specs con consumibles")


def _attach_performance(results: list[SpecGuides], specs, report) -> None:
    """Anade el rendimiento de Warcraft Logs a las guias ya construidas.

    Es aditivo a proposito: sin credenciales, o con la API caida, el build sigue
    y el addon simplemente no muestra esa linea. Una fuente opcional no deberia
    poder tumbar una publicacion.
    """
    try:
        client = warcraftlogs.Client()
    except warcraftlogs.NoCredentials as exc:
        report.warnings.append(str(exc))
        return

    try:
        client.refresh_budget()
        zones = warcraftlogs.current_zones(client)
    except Exception as exc:
        report.warnings.append(f"warcraftlogs no disponible: {exc}")
        return

    by_slug = {spec.slug: spec for spec in specs}

    for content, zone in zones.items():
        measured: dict[str, object] = {}

        for result in results:
            spec = by_slug.get(result.slug)
            if not spec:
                continue
            try:
                performance = warcraftlogs.fetch_performance(client, spec, zone, content)
            except Exception as exc:
                report.warnings.append(f"warcraftlogs {result.slug}/{content}: {exc}")
                continue
            if performance:
                measured[result.slug] = performance

        # El puesto solo tiene sentido una vez medidas todas las specs.
        warcraftlogs.rank_specs(measured)

        for result in results:
            performance = measured.get(result.slug)
            if not performance:
                continue
            for guide in result.guides:
                if guide.content == content:
                    guide.performance = performance

        print(f"  warcraftlogs: {len(measured)} specs medidas en {zone.name}")


def _load_previous() -> dict[str, dict]:
    previous: dict[str, dict] = {}
    for path in DATA_DIR.glob("*.json"):
        try:
            previous[path.stem] = json.loads(path.read_text(encoding="utf-8"))
        except json.JSONDecodeError:
            continue
    return previous


def _write_json(results: list[SpecGuides]) -> dict[str, dict]:
    DATA_DIR.mkdir(parents=True, exist_ok=True)
    current: dict[str, dict] = {}

    for spec in results:
        payload = spec.to_dict()
        current[spec.slug] = payload
        # sort_keys para que el diff del PR sea legible y estable.
        (DATA_DIR / f"{spec.slug}.json").write_text(
            json.dumps(payload, indent=2, sort_keys=True, ensure_ascii=False) + "\n",
            encoding="utf-8",
        )

    return current


def build(args: argparse.Namespace) -> int:
    fetcher = Fetcher(offline=args.offline)

    talents_path = Path(args.talents) if args.talents else None
    specs = load_talents(fetcher, talents_path)
    if args.spec:
        specs = [s for s in specs if s.slug in args.spec]
        if not specs:
            print(f"ninguna spec coincide con {args.spec}", file=sys.stderr)
            return 2

    contents = tuple(args.content)
    results: list[SpecGuides] = []
    failures: list[str] = []
    _pending_warnings = validate.Report()

    for spec in specs:
        try:
            results.append(mythicstats.fetch_spec(fetcher, spec, contents))
            print(f"  ok    {spec.slug}")
        except Exception as exc:  # una fuente caida no debe tirar el resto
            failures.append(f"{spec.slug}: {exc}")
            print(f"  FALLO {spec.slug}: {exc}", file=sys.stderr)

    # La cobertura se mide contra el catalogo completo aunque se pidiera un
    # subconjunto; con --spec eso seria ruido, asi que se compara consigo mismo.
    if not args.no_icyveins:
        _attach_icyveins(fetcher, results, specs, _pending_warnings)

    if not args.no_wowhead:
        _attach_consumables(fetcher, results, specs, _pending_warnings)

    if not args.no_warcraftlogs:
        _attach_performance(results, specs, _pending_warnings)

    report = validate.validate(results, specs)
    report.warnings.extend(_pending_warnings.warnings)
    for failure in failures:
        report.warnings.append(f"descarga fallida: {failure}")

    previous = _load_previous()
    current = _write_json(results)

    for flagged in validate.churn(previous, current):
        report.warnings.append(f"cambio grande sin explicar: {flagged}")

    print(report.summary())
    if not report.ok:
        print("\nNo se emite Lua: los datos no pasan la puerta de calidad.", file=sys.stderr)
        return 1

    by_class: dict[str, list[SpecGuides]] = defaultdict(list)
    for spec in results:
        if spec.guides:
            by_class[spec.class_file].append(spec)

    # Con --spec el resultado es parcial: reescribir el .toc dejaria fuera las
    # clases que no se pidieron y el addon cargaria a medias.
    partial = bool(args.spec)
    written = emit_lua.write_all(
        ADDON_DATA, None if partial else TOC, by_class, date.today(), SOURCES,
        data_root=DATA_ADDONS, pkgmeta_path=None if partial else PKGMETA,
    )
    print(f"\nEscritos {len(written)} paquetes de datos en {DATA_ADDONS.relative_to(ROOT)}")
    if partial:
        print("Build parcial: el .toc y el .pkgmeta no se han tocado.")
    return 0


def main() -> int:
    parser = argparse.ArgumentParser(prog="scraper")
    sub = parser.add_subparsers(dest="command", required=True)

    build_cmd = sub.add_parser("build", help="descarga, valida y emite Lua")
    build_cmd.add_argument("--spec", action="append", help="limita a estos slugs")
    build_cmd.add_argument("--content", action="append", choices=["mplus", "raid"],
                           default=None, help="tipos de contenido (por defecto ambos)")
    build_cmd.add_argument("--offline", action="store_true",
                           help="usa solo la cache en disco, sin red")
    build_cmd.add_argument("--talents", help="ruta local a talents.json")
    build_cmd.add_argument("--no-warcraftlogs", action="store_true",
                           help="omite la fuente de rendimiento (util al iterar)")
    build_cmd.add_argument("--no-icyveins", action="store_true",
                           help="omite Icy Veins (util al iterar)")
    build_cmd.add_argument("--no-wowhead", action="store_true",
                           help="omite la fuente de consumibles (util al iterar)")
    build_cmd.set_defaults(func=build)

    args = parser.parse_args()
    if args.command == "build" and not args.content:
        args.content = ["mplus", "raid"]
    return args.func(args)


if __name__ == "__main__":
    raise SystemExit(main())
