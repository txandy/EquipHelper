"""JSON canonico -> tablas Lua que carga el addon.

Dos reglas gobiernan este modulo:

1. Salida determinista. Las claves salen ordenadas siempre, para que un diff en
   git solo muestre lo que de verdad cambio en la fuente y no un reordenamiento
   aleatorio de un dict de Python.
2. Cero logica. El Lua generado es solo datos. Todo el criterio (que build gana,
   como se normaliza un stat) ya se aplico antes de llegar aqui.
"""

from __future__ import annotations

import re
from datetime import date, datetime, timezone
from pathlib import Path

from scraper.model import SpecGuides

HEADER = """-- GENERATED FILE -- do not edit by hand.
-- Regenerar con: python -m scraper build
local ADDON_NAME, ns = ...

"""

TOC_BEGIN = "# BEGIN GENERATED DATA"
TOC_END = "# END GENERATED DATA"

_LUA_IDENT = re.compile(r"^[A-Za-z_][A-Za-z0-9_]*$")


def lua_value(value, indent: int = 0) -> str:
    pad = "\t" * indent
    inner = "\t" * (indent + 1)

    if value is None:
        return "nil"
    if isinstance(value, bool):
        return "true" if value else "false"
    if isinstance(value, (int, float)):
        return repr(round(value, 3) if isinstance(value, float) else value)
    if isinstance(value, str):
        escaped = value.replace("\\", "\\\\").replace('"', '\\"').replace("\n", "\\n")
        return f'"{escaped}"'

    if isinstance(value, (list, tuple)):
        if not value:
            return "{}"
        items = [f"{inner}{lua_value(v, indent + 1)}," for v in value]
        return "{\n" + "\n".join(items) + f"\n{pad}}}"

    if isinstance(value, dict):
        clean = {k: v for k, v in value.items() if v is not None and v != {} and v != []}
        if not clean:
            return "{}"

        lines = []
        # Claves numericas primero y en orden, luego las de texto alfabeticamente:
        # el objetivo es que el mismo dato produzca siempre el mismo fichero.
        for key in sorted(clean, key=lambda k: (isinstance(k, str), k)):
            rendered = lua_value(clean[key], indent + 1)
            if isinstance(key, int):
                lines.append(f"{inner}[{key}] = {rendered},")
            elif _LUA_IDENT.match(key):
                lines.append(f"{inner}{key} = {rendered},")
            else:
                lines.append(f'{inner}["{key}"] = {rendered},')
        return "{\n" + "\n".join(lines) + f"\n{pad}}}"

    raise TypeError(f"no se como serializar {type(value)!r} a Lua")


def _guide_table(guide: dict) -> dict:
    """Recorta el guide al subconjunto que el addon consume, con sus claves Lua."""
    return {
        "statPriority": [
            {"stat": s["stat"], "weight": s["weight"], "share": s["share"]}
            for s in guide["stat_priority"]
        ],
        "talentBuilds": [
            {
                "label": b["label"],
                "importString": b["import_string"],
                "source": b["source"],
                "url": b["url"],
                "usagePct": b["usage_pct"],
                "metrics": b["metrics"],
            }
            for b in guide["talent_builds"]
        ],
        "gear": {
            slot: [
                {"itemID": e["item_id"], "usagePct": e["usage_pct"], "sourceHint": e["source_hint"]}
                for e in entries
            ]
            for slot, entries in guide["gear"].items()
        },
        "gems": [
            {"itemID": e["item_id"], "usagePct": e["usage_pct"], "note": e["note"]}
            for e in guide["gems"]
        ],
        "enchants": [
            {"itemID": e["item_id"], "slot": e["slot"], "usagePct": e["usage_pct"]}
            for e in guide["enchants"]
        ],
        "rotation": [
            {"spellID": e["spell_id"], "note": e["note"]} for e in guide["rotation"]
        ],
        "provenance": {
            key: {"url": p["url"], "fetchedAt": p["fetched_at"]}
            for key, p in guide["provenance"].items()
        },
    }


def class_file_name(class_name: str) -> str:
    """'Death Knight' -> 'DeathKnight.lua'."""
    return class_name.replace(" ", "").replace("-", "") + ".lua"


def render_class(class_file: str, specs: list[SpecGuides]) -> str:
    payload: dict = {"specs": {}}

    for spec in sorted(specs, key=lambda s: s.spec_id):
        data = spec.to_dict()
        heroes: dict[int, dict] = {}

        for guide in data["guides"]:
            hero = heroes.setdefault(guide["hero_id"], {"name": guide["hero_name"]})
            hero[guide["content"]] = _guide_table(guide)

        payload["specs"][spec.spec_id] = {"name": spec.spec_name, "heroes": heroes}

    body = lua_value(payload, 0)
    return f'{HEADER}ns.RegisterClassData("{class_file}", {body})\n'


def render_manifest(generated: date, sources: list[dict], counts: dict) -> str:
    epoch = int(datetime(generated.year, generated.month, generated.day,
                         tzinfo=timezone.utc).timestamp())
    payload = {
        "generated": generated.isoformat(),
        "generatedEpoch": epoch,
        "specCount": counts.get("specs", 0),
        "guideCount": counts.get("guides", 0),
        "sources": sources,
    }
    return f"{HEADER}ns.Manifest = {lua_value(payload, 0)}\n"


def update_toc(toc_path: Path, data_files: list[str]) -> None:
    """Reescribe el bloque de ficheros de datos del .toc, dejando el resto intacto."""
    lines = toc_path.read_text(encoding="utf-8").splitlines()
    try:
        start = lines.index(TOC_BEGIN)
        end = lines.index(TOC_END)
    except ValueError as exc:
        raise RuntimeError(
            f"{toc_path} no tiene los marcadores {TOC_BEGIN}/{TOC_END}"
        ) from exc

    block = ["Data\\Manifest.lua"] + [f"Data\\{name}" for name in sorted(data_files)]
    toc_path.write_text(
        "\n".join(lines[:start + 1] + block + lines[end:]) + "\n", encoding="utf-8"
    )


def write_all(out_dir: Path, toc_path: Path, by_class: dict[str, list[SpecGuides]],
              generated: date, sources: list[dict]) -> list[Path]:
    out_dir.mkdir(parents=True, exist_ok=True)
    written: list[Path] = []
    names: list[str] = []

    total_guides = 0
    for class_file, specs in sorted(by_class.items()):
        file_name = class_file_name(specs[0].class_name)
        path = out_dir / file_name
        path.write_text(render_class(class_file, specs), encoding="utf-8")
        written.append(path)
        names.append(file_name)
        total_guides += sum(len(s.guides) for s in specs)

    counts = {"specs": sum(len(s) for s in by_class.values()), "guides": total_guides}
    manifest = out_dir / "Manifest.lua"
    manifest.write_text(render_manifest(generated, sources, counts), encoding="utf-8")
    written.append(manifest)

    update_toc(toc_path, names)
    return written
