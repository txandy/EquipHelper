"""Fuente: mythicstats.com.

Sirve HTML renderizado en servidor, sin API. La pagina de cada spec tiene una
forma muy regular que es lo que aprovechamos:

  - "Top talent builds": una tabla cuya cabecera nombra las columnas y donde el
    import string vive en el atributo data-export de la celda "Copy talents".
  - "Top gear", "Gems", "<X> enchants": un <h3> con el titulo seguido de filas
    <a href=".../item=ID"> + <span>NN.N%</span>.
  - "Secondary stats": una tabla de nombre de stat y "rating (share%)".

Parseamos contra la cabecera y contra los titulos, no contra posiciones fijas ni
clases de Tailwind: los nombres de columna sobreviven a un rediseno, `px-2` no.
"""

from __future__ import annotations

import collections
import re
from datetime import date

from bs4 import BeautifulSoup, Tag

from scraper.model import (
    EnchantEntry, GearEntry, Guide, SourceView, SpecGuides, StatEntry,
    normalize_stat_weights,
)
from scraper.talent_tree import Spec

SOURCE_KEY = "mythicstats"
BASE_URL = "https://mythicstats.com"

# Titulo de seccion en la pagina -> clave de ranura del addon.
GEAR_SECTIONS = {
    "Head": "HEAD", "Neck": "NECK", "Shoulder": "SHOULDER", "Back": "BACK",
    "Chest": "CHEST", "Wrist": "WRIST", "Hands": "HANDS", "Belt": "WAIST",
    "Legs": "LEGS", "Boots": "FEET", "Ring": "FINGER1", "Trinket": "TRINKET1",
    "Main-hand": "MAINHAND", "Off-hand": "OFFHAND",
}

ENCHANT_SECTIONS = {
    "Main-hand enchants": "MAINHAND", "Off-hand enchants": "OFFHAND",
    "Head enchants": "HEAD", "Shoulder enchants": "SHOULDER",
    "Chest enchants": "CHEST", "Legs enchants": "LEGS",
    "Boots enchants": "FEET", "Ring enchants": "FINGER1",
    "Back enchants": "BACK", "Wrist enchants": "WRIST",
    "Bracer enchants": "WRIST",
}

STAT_NAMES = {
    "critical strike": "CRIT", "crit": "CRIT", "haste": "HASTE",
    "mastery": "MASTERY", "versatility": "VERSATILITY",
    "leech": "LEECH", "speed": "SPEED", "avoidance": "AVOIDANCE",
}

ITEM_HREF = re.compile(r"/item=(\d+)")
SPELL_HREF = re.compile(r"/spell=(\d+)")
HERO_SHARE = re.compile(r"(\d+)%\s+([A-Za-z][A-Za-z' -]*?)(?=[.,]|\s+\d+%|$)")
PERCENT = re.compile(r"([\d.]+)\s*%")
RATING_SHARE = re.compile(r"([\d,]+)\s*\(([\d.]+)%\)")


def spec_url(slug: str, content: str) -> str:
    return f"{BASE_URL}/spec/{slug}" if content == "mplus" else f"{BASE_URL}/raid/spec/{slug}"


def _text(node: Tag) -> str:
    return node.get_text(" ", strip=True)


def _section_rows(soup: BeautifulSoup, title: str) -> list[tuple[int, float | None]]:
    """Filas item+porcentaje que cuelgan del <h3> con ese titulo exacto."""
    heading = soup.find(
        lambda tag: tag.name in ("h2", "h3") and _text(tag).lower() == title.lower()
    )
    if heading is None:
        return []

    container = heading.find_next_sibling("div") or heading.parent
    rows: list[tuple[int, float | None]] = []
    for link in container.select('a[href*="/item="]'):
        match = ITEM_HREF.search(link["href"])
        if not match:
            continue
        percent = None
        sibling = link.find_next("span")
        if sibling is not None:
            found = PERCENT.search(_text(sibling))
            if found:
                percent = float(found.group(1))
        rows.append((int(match.group(1)), percent))
    return rows


def _parse_stats(soup: BeautifulSoup) -> list[StatEntry]:
    heading = soup.find(
        lambda tag: tag.name in ("h2", "h3") and _text(tag).lower() == "secondary stats"
    )
    if heading is None:
        return []

    table = heading.find_next("table")
    if table is None:
        return []

    entries: list[StatEntry] = []
    for row in table.select("tr"):
        cells = row.find_all("td")
        if len(cells) < 2:
            continue
        key = STAT_NAMES.get(_text(cells[0]).lower())
        match = RATING_SHARE.search(_text(cells[1]))
        if key and match:
            entries.append(StatEntry(
                stat=key,
                rating=int(match.group(1).replace(",", "")),
                share=float(match.group(2)),
            ))
    return normalize_stat_weights(entries)


def _hero_distribution(subtitle: str, spec: Spec) -> list[tuple[int, int]]:
    """Reparto de hero talents que la pagina declara en su subtitulo.

    Ej: "94% Deathbringer.  Only talents that vary among top builds are shown."
    Hace falta porque la tabla oculta las columnas que no varian: si el 100% de
    los mejores juega el mismo arbol, la columna de talentos de heroe sale vacia
    y no hay nada que votar.
    """
    by_name = {tree.name.lower(): tree.hero_id for tree in spec.hero_trees}
    found: list[tuple[int, int]] = []

    for percent, name in HERO_SHARE.findall(subtitle):
        hero_id = by_name.get(name.strip().lower())
        if hero_id:
            found.append((hero_id, int(percent)))

    return sorted(found, key=lambda pair: pair[1], reverse=True)


def _parse_builds(soup: BeautifulSoup, spec: Spec, url: str) -> list[dict]:
    """Devuelve builds crudas con su hero_id ya resuelto."""
    heading = soup.find(
        lambda tag: tag.name in ("h2", "h3") and _text(tag).lower() == "top talent builds"
    )
    if heading is None:
        return []

    table = heading.find_next("table")
    if table is None:
        return []

    rows = table.find_all("tr")
    if not rows:
        return []

    subtitle = heading.find_next("p")
    distribution = _hero_distribution(_text(subtitle) if subtitle else "", spec)
    dominant = distribution[0][0] if distribution else None

    columns = [_text(cell) for cell in rows[0].find_all("td")]
    builds: list[dict] = []

    for index, row in enumerate(rows[1:], start=1):
        cells = row.find_all("td")
        export = row.select_one("[data-export]")
        if export is None or not cells:
            continue

        by_name = {name: cells[i] for i, name in enumerate(columns) if i < len(cells) and name}

        # A que hero talent pertenece: se vota con los spellId de la columna de
        # talentos de heroe. Una sola build puede rozar iconos compartidos, asi
        # que gana el arbol mas representado en vez del primero que aparezca.
        votes: collections.Counter[int] = collections.Counter()
        hero_cell = by_name.get("Hero talents")
        for link in (hero_cell.select('a[href*="/spell="]') if hero_cell else []):
            match = SPELL_HREF.search(link["href"])
            if match:
                hero_id = spec.spell_to_hero.get(int(match.group(1)))
                if hero_id:
                    votes[hero_id] += 1
        # Sin votos solo puede significar que ningun talento de heroe varia entre
        # builds, y entonces todas comparten el arbol dominante del subtitulo.
        hero_id = votes.most_common(1)[0][0] if votes else dominant
        if not hero_id:
            continue

        usage = None
        for name, cell in by_name.items():
            if name.lower().startswith("overall"):
                found = PERCENT.search(_text(cell))
                if found:
                    usage = float(found.group(1))

        metrics = {
            name: _text(cell)
            for name, cell in by_name.items()
            if name in ("Max key", "Avg key", "Max dps", "Avg dps") and _text(cell)
        }

        builds.append({
            "hero_id": hero_id,
            "index": index,
            "import_string": export["data-export"],
            "usage_pct": usage,
            "metrics": metrics,
            "url": url,
        })

    return builds


def parse_page(html: str, spec: Spec, content: str, url: str, fetched_at: str) -> list[Guide]:
    """Una pagina cubre una spec y un tipo de contenido, con varias hero trees."""
    soup = BeautifulSoup(html, "html.parser")

    stats = _parse_stats(soup)
    builds = _parse_builds(soup, spec, url)

    gear: dict[str, list[GearEntry]] = {}
    for title, slot in GEAR_SECTIONS.items():
        rows = _section_rows(soup, title)
        if rows:
            gear[slot] = [GearEntry(item_id=i, usage_pct=p) for i, p in rows]

    gems = [GearEntry(item_id=i, usage_pct=p) for i, p in _section_rows(soup, "Gems")]

    enchants: list[EnchantEntry] = []
    for title, slot in ENCHANT_SECTIONS.items():
        for item_id, percent in _section_rows(soup, title):
            enchants.append(EnchantEntry(item_id=item_id, slot=slot, usage_pct=percent))

    # El equipo y los stats son de la spec entera; las builds se reparten por
    # arbol de heroe. Cada guia queda autocontenida para que el addon no tenga
    # que cruzar tablas en runtime.
    guides: list[Guide] = []
    for hero in spec.hero_trees:
        mine = [b for b in builds if b["hero_id"] == hero.hero_id]
        if not mine:
            continue

        view = SourceView(
            source=SOURCE_KEY,
            url=url,
            fetched_at=fetched_at,
            stat_priority=list(stats),
            talent_builds=[
                _build_entry(b, hero.name, position)
                for position, b in enumerate(mine, start=1)
            ],
            gear={slot: list(entries) for slot, entries in gear.items()},
            gems=list(gems),
            enchants=list(enchants),
        )

        guides.append(Guide(
            content=content,
            hero_id=hero.hero_id,
            hero_name=hero.name,
            views={SOURCE_KEY: view},
        ))

    return guides


def _build_entry(raw: dict, hero_name: str, position: int):
    from scraper.model import TalentBuild

    return TalentBuild(
        label=f"{hero_name} #{position}",
        import_string=raw["import_string"],
        source=SOURCE_KEY,
        url=raw["url"],
        hero_id=raw["hero_id"],
        usage_pct=raw["usage_pct"],
        metrics=raw["metrics"],
    )


def fetch_spec(fetcher, spec: Spec, contents=("mplus", "raid")) -> SpecGuides:
    fetched_at = date.today().isoformat()
    result = SpecGuides(
        class_file=spec.class_file,
        class_name=spec.class_name,
        spec_id=spec.spec_id,
        spec_name=spec.spec_name,
        slug=spec.slug,
    )

    for content in contents:
        url = spec_url(spec.slug, content)
        html = fetcher.get(url)
        result.guides.extend(parse_page(html, spec, content, url, fetched_at))

    return result
