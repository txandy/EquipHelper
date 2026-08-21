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


def _view_table(view: dict) -> dict:
    """Recorta una vista al subconjunto que el addon consume, con claves Lua."""
    return {
        "source": view["source"],
        "url": view["url"],
        "fetchedAt": view["fetched_at"],
        "statPriority": [
            {"stat": s["stat"], "weight": s["weight"], "share": s["share"]}
            for s in view["stat_priority"]
        ],
        "talentBuilds": [
            {
                "label": b["label"],
                "importString": b["import_string"],
                "usagePct": b["usage_pct"],
                "metrics": b["metrics"],
                # Solo se emite cuando es falso: en Lua, nil ya significa "si",
                # y ahorrarse la clave en el caso comun adelgaza el fichero.
                "heroSpecific": None if b["hero_specific"] else False,
            }
            for b in view["talent_builds"]
        ],
        "gear": {
            slot: [
                {
                    "itemID": e["item_id"],
                    "usagePct": e["usage_pct"],
                    "sourceHint": e["source_hint"],
                    "dropSource": e["drop_source"],
                    "gemID": e["gem_id"],
                    "enchantID": e["enchant_id"],
                }
                for e in entries
            ]
            for slot, entries in view["gear"].items()
        },
        "gems": [
            {"itemID": e["item_id"], "usagePct": e["usage_pct"], "note": e["note"]}
            for e in view["gems"]
        ],
        "enchants": [
            {"itemID": e["item_id"], "slot": e["slot"], "usagePct": e["usage_pct"]}
            for e in view["enchants"]
        ],
        "consumables": [
            {"category": e["category"], "itemID": e["item_id"], "primary": e["is_primary"]}
            for e in view["consumables"]
        ],
        "notes": dict(view["notes"]),
    }


def _guide_table(guide: dict) -> dict:
    return {
        "views": {key: _view_table(v) for key, v in guide["views"].items()},
        "performance": _performance_table(guide.get("performance")),
    }


def _performance_table(perf: dict | None) -> dict | None:
    if not perf:
        return None
    return {
        "metric": perf["metric"],
        "median": perf["median"],
        "top": perf["top"],
        "sample": perf["sample"],
        "difficulty": perf["difficulty"],
        "zone": perf["zone"],
        "rank": perf["rank"],
        "outOf": perf["out_of"],
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


def write_all(out_dir: Path, toc_path: Path | None, by_class: dict[str, list[SpecGuides]],
              generated: date, sources: list[dict]) -> list[Path]:
    """toc_path a None deja el .toc intacto, para builds parciales."""
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

    if toc_path is not None:
        update_toc(toc_path, names)
    return written
