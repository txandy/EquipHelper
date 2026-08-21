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
from scraper.model import SpecGuides
from scraper.sources import mythicstats
from scraper.talent_tree import load as load_talents

ROOT = Path(__file__).resolve().parent.parent
DATA_DIR = ROOT / "data" / "specs"
ADDON_DATA = ROOT / "EquipHelper" / "Data"
TOC = ROOT / "EquipHelper" / "EquipHelper.toc"

SOURCES = [
    {"key": "mythicstats", "label": "Mythicstats", "url": "https://mythicstats.com"},
]


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

    for spec in specs:
        try:
            results.append(mythicstats.fetch_spec(fetcher, spec, contents))
            print(f"  ok    {spec.slug}")
        except Exception as exc:  # una fuente caida no debe tirar el resto
            failures.append(f"{spec.slug}: {exc}")
            print(f"  FALLO {spec.slug}: {exc}", file=sys.stderr)

    # La cobertura se mide contra el catalogo completo aunque se pidiera un
    # subconjunto; con --spec eso seria ruido, asi que se compara consigo mismo.
    report = validate.validate(results, specs)
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

    written = emit_lua.write_all(ADDON_DATA, TOC, by_class, date.today(), SOURCES)
    print(f"\nEscritos {len(written)} ficheros Lua en {ADDON_DATA.relative_to(ROOT)}")
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
    build_cmd.set_defaults(func=build)

    args = parser.parse_args()
    if args.command == "build" and not args.content:
        args.content = ["mplus", "raid"]
    return args.func(args)


if __name__ == "__main__":
    raise SystemExit(main())
