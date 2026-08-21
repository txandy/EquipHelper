"""Fuente: guias de clase de Icy Veins.

Es la voz editorial frente a la estadistica de Mythicstats: no dice que lleva
mas gente, dice que recomienda un autor y por que. Y en equipo da cosas que
ningun ranking de uso puede dar — de que jefe cae la pieza, y con que gema y
que encante concretos va cada ranura.

Su marcado es el mas estable de las tres fuentes que hemos mirado: los items
viajan en `data-wowhead="item=NNN"` y cada seccion tiene un `id` fijo
(`#flask`, `#best-gear-from-raid`). Todo aqui se ancla a esos ids y nunca al
texto de la cabecera, que es lo que hizo fragil el parser de Wowhead.

Su robots.txt permite estas paginas; solo bloquea /wow/*/modules/, /util/ y
similares, que no tocamos.
"""

from __future__ import annotations

import re
from datetime import date

from bs4 import BeautifulSoup, Tag

from scraper.model import (
    ConsumableEntry, GearEntry, SourceView, StatEntry, TalentBuild,
)

SOURCE_KEY = "icyveins"
BASE_URL = "https://www.icy-veins.com/wow"

# El sufijo depende del rol y no lo sabemos de antemano; se prueban por orden.
ROLE_SUFFIXES = ("pve-dps", "pve-healing", "pve-tank")

PAGES = {
    "talents": "spec-builds-talents",
    "gear": "gear-best-in-slot",
    "consumables": "gems-enchants-consumables",
}

ITEM_ID = re.compile(r"item=(\d+)")

# Nombre de ranura de Icy Veins -> clave del addon. Shirt y Tabard se ignoran
# a proposito: no llevan estadisticas y solo ensucian la pestana.
SLOT_NAMES = {
    "Helm": "HEAD", "Neck": "NECK", "Shoulders": "SHOULDER", "Cloak": "BACK",
    "Chest": "CHEST", "Bracers": "WRIST", "Hands": "HANDS", "Waist": "WAIST",
    "Legs": "LEGS", "Feet": "FEET",
    "Main Hand": "MAINHAND", "Off Hand": "OFFHAND",
}

# Ranuras que Icy Veins lista dos veces por conjunto. Se numeran en el orden en
# que aparecen para que caigan en las claves que el panel ya sabe etiquetar.
PAIRED_SLOTS = {"Ring": ("FINGER1", "FINGER2"), "Trinket": ("TRINKET1", "TRINKET2")}

# Id de seccion de equipo -> tipo de contenido. "overall" no es un contenido:
# es el respaldo para el que falte.
GEAR_SECTIONS = {
    "best-gear-from-mythic": "mplus",
    "best-gear-from-raid": "raid",
    "overall-best-in-slot": "overall",
}

TRINKET_SECTION = "trinkets"

# Id de seccion de consumibles -> categoria del addon. "potions" va a None
# porque esa seccion cubre dos categorias y se decide parrafo a parrafo.
CONSUMABLE_SECTIONS = {
    "flask": "FLASK",
    "potions": None,
    "food-buff": "FOOD",
    "augment-rune": "RUNE",
    "best-enchants-and-weapon-augments": "WEAPON_OIL",
    "recommended-gems": "GEMS",
}


def page_urls(spec, page: str) -> list[str]:
    """Las tres variantes de rol de una pagina, para probarlas por orden."""
    slug = f"{spec.spec_name} {spec.class_name}".lower().replace(" ", "-")
    return [f"{BASE_URL}/{slug}-{role}-{PAGES[page]}" for role in ROLE_SUFFIXES]


def _item_id(node: Tag | None) -> int | None:
    """El primer item de un nodo. El data-wowhead trae `item=N&bonus=...`."""
    if node is None:
        return None
    holder = node if node.get("data-wowhead") else node.find(attrs={"data-wowhead": True})
    if holder is None:
        return None
    match = ITEM_ID.search(holder["data-wowhead"])
    return int(match.group(1)) if match else None


def _section_nodes(soup: BeautifulSoup, section_id: str) -> list[Tag]:
    """Los nodos entre una cabecera con ese id y la siguiente cabecera.

    Icy Veins envuelve cada cabecera en un div, asi que se recorre el documento
    en orden en vez de fiarse de la jerarquia.
    """
    heading = soup.find(id=section_id)
    if heading is None:
        return []

    collected: list[Tag] = []
    for node in heading.parent.find_all_next():
        if node.name in ("h2", "h3") and node.get("id") and node.get("id") != section_id:
            break
        collected.append(node)
    return collected


def _paragraph_items(nodes: list[Tag]) -> list[tuple[str, list[int]]]:
    """(texto, items) de cada parrafo de la seccion, en orden."""
    out: list[tuple[str, list[int]]] = []
    for node in nodes:
        if node.name != "p":
            continue
        ids: list[int] = []
        for holder in node.find_all(attrs={"data-wowhead": True}):
            item = _item_id(holder)
            if item and item not in ids:
                ids.append(item)
        text = re.sub(r"\s+", " ", node.get_text(" ", strip=True))
        if ids or text:
            out.append((text, ids))
    return out


# --------------------------------------------------------------------------
# Talentos
# --------------------------------------------------------------------------

def parse_talents(html: str) -> list[TalentBuild]:
    """Los import strings del bloque "Quick Start", con su escenario.

    Icy Veins los publica por spec y no por arbol de heroe: los tres codigos
    viven antes de las secciones por heroe, que son prosa sin codigos. Se
    marcan con hero_specific=False para que el addon lo diga en pantalla en vez
    de inventarse una atribucion.
    """
    soup = BeautifulSoup(html, "html.parser")
    builds: list[TalentBuild] = []

    for block in soup.select(".export-string"):
        title = block.select_one(".export-string__title")
        code = block.select_one(".export-string__code")
        if not code or not code.get_text(strip=True):
            continue

        builds.append(TalentBuild(
            label=title.get_text(strip=True) if title else "Build",
            import_string=code.get_text(strip=True),
            source=SOURCE_KEY,
            url="",
            hero_id=0,
            hero_specific=False,
        ))

    return builds


# --------------------------------------------------------------------------
# Equipo
# --------------------------------------------------------------------------

def _parse_card(card: Tag, counters: dict[str, int]) -> tuple[str, GearEntry] | None:
    slot_node = card.select_one(".bis_item_slot")
    if slot_node is None:
        return None

    name = slot_node.get_text(strip=True)
    if name in PAIRED_SLOTS:
        seen = counters.get(name, 0)
        counters[name] = seen + 1
        keys = PAIRED_SLOTS[name]
        slot = keys[seen] if seen < len(keys) else keys[-1]
    else:
        slot = SLOT_NAMES.get(name)
    if slot is None:
        return None

    # El primer spell_icon_span de la tarjeta es la pieza; los de extras y pie
    # son su gema y su encante, y se leen de sus contenedores.
    item_id = _item_id(card.select_one(".spell_icon_span"))
    if not item_id:
        return None

    drop = card.select_one(".bis_item_drop")
    return slot, GearEntry(
        item_id=item_id,
        drop_source=drop.get_text(" ", strip=True) or None if drop else None,
        gem_id=_item_id(card.select_one(".bis_item_extras")),
        enchant_id=_item_id(card.select_one(".bis_item_enchant")),
    )


def parse_gear(html: str) -> dict[str, dict[str, list[GearEntry]]]:
    """{contenido: {ranura: [piezas]}} para mplus, raid y overall."""
    soup = BeautifulSoup(html, "html.parser")
    result: dict[str, dict[str, list[GearEntry]]] = {}

    for section_id, content in GEAR_SECTIONS.items():
        gear: dict[str, list[GearEntry]] = {}
        counters: dict[str, int] = {}

        for node in _section_nodes(soup, section_id):
            if node.name != "div" or "bis_item" not in (node.get("class") or []):
                continue
            parsed = _parse_card(node, counters)
            if parsed:
                slot, entry = parsed
                gear.setdefault(slot, []).append(entry)

        if gear:
            result[content] = gear

    return result


def parse_trinket_note(html: str) -> str | None:
    """El porque escrito de los abalorios, que es lo que un ranking no da."""
    soup = BeautifulSoup(html, "html.parser")
    for text, _ in _paragraph_items(_section_nodes(soup, TRINKET_SECTION)):
        if len(text) > 60:
            return text
    return None


# --------------------------------------------------------------------------
# Gemas y consumibles
# --------------------------------------------------------------------------

def parse_consumables(html: str) -> tuple[list[ConsumableEntry], list[GearEntry]]:
    """(consumibles, gemas). Van juntos porque comparten pagina y recorrido."""
    soup = BeautifulSoup(html, "html.parser")
    consumables: list[ConsumableEntry] = []
    gems: list[GearEntry] = []

    for section_id, category in CONSUMABLE_SECTIONS.items():
        paragraphs = _paragraph_items(_section_nodes(soup, section_id))
        if not paragraphs:
            continue

        if category == "GEMS":
            for _, ids in paragraphs[:1]:
                gems.extend(GearEntry(item_id=item) for item in ids)
            continue

        if category == "WEAPON_OIL":
            # Solo el primer parrafo: el resto de la seccion son los encantes
            # por ranura, que ya vienen mejor desde las tarjetas de equipo.
            for _, ids in paragraphs[:1]:
                for position, item in enumerate(ids[:1]):
                    consumables.append(ConsumableEntry(category, item, position == 0))
            continue

        if category is None:
            # La seccion de pociones cubre dos categorias. Se decide por parrafo
            # y se toma solo su primer item: el resto son menciones de paso,
            # como la piedra de salud del brujo.
            for text, ids in paragraphs:
                if not ids:
                    continue
                key = "HEALTH_POTION" if "health" in text.lower() else "POTION"
                if any(c.category == key for c in consumables):
                    continue
                consumables.append(ConsumableEntry(key, ids[0], True))
            continue

        for _, ids in paragraphs[:1]:
            for position, item in enumerate(ids):
                consumables.append(ConsumableEntry(category, item, position == 0))

    return consumables, gems


# --------------------------------------------------------------------------
# Descarga
# --------------------------------------------------------------------------

def _fetch_first(fetcher, spec, page: str) -> tuple[str | None, str | None]:
    for url in page_urls(spec, page):
        try:
            return fetcher.get(url), url
        except Exception:
            continue
    return None, None


def fetch_views(fetcher, spec) -> dict[str, SourceView]:
    """{contenido: vista} para mplus y raid, o {} si la spec no esta cubierta.

    El equipo de Icy Veins ya viene partido en M+ y banda; "overall" cubre el
    que falte. Lo demas —talentos, gemas, consumibles— es de la spec entera y
    se copia a las dos vistas.
    """
    fetched_at = date.today().isoformat()

    gear_html, gear_url = _fetch_first(fetcher, spec, "gear")
    talents_html, talents_url = _fetch_first(fetcher, spec, "talents")
    consum_html, _ = _fetch_first(fetcher, spec, "consumables")

    gear = parse_gear(gear_html) if gear_html else {}
    builds = parse_talents(talents_html) if talents_html else []
    consumables, gems = parse_consumables(consum_html) if consum_html else ([], [])
    trinket_note = parse_trinket_note(gear_html) if gear_html else None

    if not gear and not builds and not consumables:
        return {}

    for build in builds:
        build.url = talents_url or ""

    views: dict[str, SourceView] = {}
    for content in ("mplus", "raid"):
        slots = gear.get(content) or gear.get("overall") or {}

        views[content] = SourceView(
            source=SOURCE_KEY,
            url=gear_url or talents_url or "",
            fetched_at=fetched_at,
            talent_builds=list(builds),
            gear={slot: list(entries) for slot, entries in slots.items()},
            gems=list(gems),
            consumables=list(consumables),
            notes={"trinkets": trinket_note} if trinket_note else {},
        )

    return views
