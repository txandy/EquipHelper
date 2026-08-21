"""Arboles de talentos, desde el volcado publico de Raidbots.

Resuelve dos cosas que ninguna fuente de builds da directamente:

1. El catalogo autoritativo de specs (id, clase, nombre), que es contra lo que el
   validador mide la cobertura. Si Blizzard anade una spec, aparece aqui sola.
2. El mapa spellId -> subTreeId, necesario para saber a que hero talent pertenece
   una build. Mythicstats muestra los iconos de talento pero no dice el arbol.
"""

from __future__ import annotations

import json
from dataclasses import dataclass
from pathlib import Path

TALENTS_URL = "https://www.raidbots.com/static/data/live/talents.json"


@dataclass(frozen=True)
class HeroTree:
    hero_id: int
    name: str


@dataclass(frozen=True)
class Spec:
    class_file: str
    class_name: str
    class_id: int
    spec_id: int
    spec_name: str
    slug: str
    hero_trees: tuple[HeroTree, ...]
    spell_to_hero: dict[int, int]

    @property
    def hero_names(self) -> dict[int, str]:
        return {tree.hero_id: tree.name for tree in self.hero_trees}


def _class_file(class_name: str) -> str:
    """Nombre legible -> token de WoW. 'Death Knight' -> 'DEATHKNIGHT'."""
    return class_name.replace(" ", "").replace("-", "").upper()


def _slug(spec_name: str, class_name: str) -> str:
    """Slug tal y como lo usan Mythicstats y Archon: 'frost-mage'."""
    return f"{spec_name} {class_name}".lower().replace(" ", "-")


def parse(raw: str) -> list[Spec]:
    specs: list[Spec] = []

    for entry in json.loads(raw):
        spec_id = entry.get("specId")
        if not spec_id:
            # El volcado incluye alguna entrada sin spec real; se descarta.
            continue

        hero_trees = []
        for node in entry.get("subTreeNodes", []):
            for sub in node.get("entries", []):
                hero_trees.append(HeroTree(hero_id=sub["traitSubTreeId"], name=sub["name"]))

        spell_to_hero: dict[int, int] = {}
        for node in entry.get("heroNodes", []):
            hero_id = node.get("subTreeId")
            if not hero_id:
                continue
            for sub in node.get("entries", []):
                spell_id = sub.get("spellId")
                if spell_id:
                    spell_to_hero[spell_id] = hero_id

        specs.append(Spec(
            class_file=_class_file(entry["className"]),
            class_name=entry["className"],
            class_id=entry["classId"],
            spec_id=spec_id,
            spec_name=entry["specName"],
            slug=_slug(entry["specName"], entry["className"]),
            hero_trees=tuple(sorted(hero_trees, key=lambda t: t.name)),
            spell_to_hero=spell_to_hero,
        ))

    return specs


def load(fetcher, path: Path | None = None) -> list[Spec]:
    if path is not None:
        return parse(path.read_text(encoding="utf-8"))
    return parse(fetcher.get(TALENTS_URL, ttl=24 * 3600))
