"""Esquema canonico.

Toda fuente se normaliza a estas estructuras antes de tocar nada mas. El emisor
de Lua y el validador solo conocen esto, nunca el HTML del que salieron.

Regla: se guardan IDs, nunca nombres. El cliente de WoW resuelve nombre, icono y
calidad ya localizados, asi que meter texto aqui solo anade peso y bugs de idioma.
"""

from __future__ import annotations

from dataclasses import dataclass, field, asdict
from typing import Any

CONTENT_TYPES = ("mplus", "raid")

# Claves de ranura que entiende el addon (ver UI/Tabs/Gear.lua).
SLOTS = (
    "HEAD", "NECK", "SHOULDER", "BACK", "CHEST", "WRIST", "HANDS", "WAIST",
    "LEGS", "FEET", "FINGER1", "FINGER2", "TRINKET1", "TRINKET2",
    "MAINHAND", "OFFHAND",
)

# Claves de stat que entiende el addon (ver UI/Tabs/Stats.lua).
STATS = ("CRIT", "HASTE", "MASTERY", "VERSATILITY", "LEECH", "SPEED", "AVOIDANCE")


@dataclass
class StatEntry:
    stat: str
    rating: int
    share: float          # % del presupuesto secundario que representa
    weight: float = 0.0   # rating normalizado al stat mas alto; lo rellena normalize()


@dataclass
class TalentBuild:
    label: str
    import_string: str
    source: str
    url: str
    hero_id: int
    usage_pct: float | None = None
    metrics: dict[str, str] = field(default_factory=dict)


@dataclass
class GearEntry:
    item_id: int
    usage_pct: float | None = None
    source_hint: str | None = None
    note: str | None = None


@dataclass
class EnchantEntry:
    item_id: int
    slot: str
    usage_pct: float | None = None


@dataclass
class RotationEntry:
    spell_id: int
    note: str | None = None


@dataclass
class Provenance:
    url: str
    fetched_at: str


@dataclass
class Guide:
    """Una guia = una combinacion (spec, hero talent, tipo de contenido)."""

    content: str
    hero_id: int
    hero_name: str
    stat_priority: list[StatEntry] = field(default_factory=list)
    talent_builds: list[TalentBuild] = field(default_factory=list)
    gear: dict[str, list[GearEntry]] = field(default_factory=dict)
    gems: list[GearEntry] = field(default_factory=list)
    enchants: list[EnchantEntry] = field(default_factory=list)
    rotation: list[RotationEntry] = field(default_factory=list)
    provenance: dict[str, Provenance] = field(default_factory=dict)


@dataclass
class SpecGuides:
    class_file: str      # token de WoW: MAGE, DEATHKNIGHT...
    class_name: str
    spec_id: int
    spec_name: str
    slug: str            # como lo nombra la fuente: frost-mage
    guides: list[Guide] = field(default_factory=list)

    def to_dict(self) -> dict[str, Any]:
        return asdict(self)


def normalize_stat_weights(entries: list[StatEntry]) -> list[StatEntry]:
    """Ordena por rating y anade un peso relativo al stat mas alto.

    El peso es lo que hace accionable la lista: dice cuanto mejor es el primer
    stat que el tercero, no solo que va antes.
    """
    if not entries:
        return entries

    ordered = sorted(entries, key=lambda e: e.rating, reverse=True)
    top = ordered[0].rating or 1
    for entry in ordered:
        entry.weight = round(entry.rating / top, 3)
    return ordered
