"""Fuente: pagina de consumibles de las guias de clase de Wowhead.

Aporta lo unico que ninguna otra fuente publica: que frasco, pocion, comida,
aceite de arma y runa de aumento usa cada spec. Mythicstats y Warcraft Logs
miden equipo y rendimiento; los consumibles no salen en ningun ranking.

Wowhead no tiene API y sus terminos no contemplan la extraccion automatica, asi
que este modulo es conservador: una peticion por segundo, cache en disco,
User-Agent identificable, y aislado para poder desactivarlo sin tocar nada mas.
La guia se publica con atribucion y enlace en el addon.

La guia viaja como BBCode dentro de una cadena de JavaScript. Aqui juega a
favor: [h3 toc="Combat Potion"] e [item=241288] son mucho mas estables que unas
clases CSS, y cada consumible tiene su propia cabecera.
"""

from __future__ import annotations

import re

SOURCE_KEY = "wowhead"
BASE_URL = "https://www.wowhead.com/guide/classes"

# El sufijo depende del rol y no lo sabemos de antemano; se prueban por orden.
ROLE_SUFFIXES = ("enchants-gems-pve-dps", "enchants-gems-pve-healer",
                 "enchants-gems-pve-tank")

# Se clasifica por el texto de la cabecera, y el orden importa: "Health Potion"
# tiene que probarse antes que "Potion" o se lo comeria la pocion de combate.
CATEGORIES = (
    ("HEALTH_POTION", re.compile(r"health(?:ing)?\s+potions?", re.I)),
    ("POTION", re.compile(r"(?:combat\s+)?potions?", re.I)),
    ("FLASK", re.compile(r"flasks?", re.I)),
    ("FOOD", re.compile(r"food|feast", re.I)),
    ("WEAPON_OIL", re.compile(r"weapon\s+(?:buff|oil)", re.I)),
    ("RUNE", re.compile(r"augment\s+rune", re.I)),
)

HEADING = re.compile(r"\[h[23][^\]]*\](.*?)\[/h[23]\]", re.S)
ITEM_TAG = re.compile(r"\[item=(\d+)")
UL_BLOCK = re.compile(r"\[ul\](.*?)\[/ul\]", re.S)
BBCODE_TAG = re.compile(r"\[/?[^\]]*\]")


def guide_urls(spec) -> list[str]:
    class_slug = spec.class_name.lower().replace(" ", "-")
    spec_slug = spec.spec_name.lower().replace(" ", "-")
    return [f"{BASE_URL}/{class_slug}/{spec_slug}/{suffix}" for suffix in ROLE_SUFFIXES]


def _unescape(html: str) -> str:
    """La guia viaja escapada dentro de una cadena JS; se deshace ese escapado."""
    return (html.replace("\\r\\n", "\n").replace("\\n", "\n")
                .replace('\\"', '"').replace("\\/", "/"))


def _classify(heading: str) -> str | None:
    label = BBCODE_TAG.sub("", heading)
    for category, pattern in CATEGORIES:
        if pattern.search(label):
            return category
    return None


def _recommended_items(section: str) -> list[int]:
    """Los items que la seccion recomienda de verdad.

    Solo se miran la primera frase o la primera lista, nunca la seccion entera.
    El texto sigue despues con salvedades que citan otros items ("si llevas
    [item=245880], la pocion empeora"), y tragarselos meteria un abalorio en la
    lista de pociones. El precio de esta prudencia es perder alguna alternativa
    que el autor menciona en una frase posterior; a cambio, lo que se publica
    nunca esta mal.
    """
    body = section.strip()

    listed = UL_BLOCK.search(body)
    first_sentence = body.split(".", 1)[0]

    # La lista manda si aparece antes de que acabe la primera frase, que es como
    # se escriben las secciones de comida: prosa, y debajo las opciones.
    if listed and not ITEM_TAG.search(first_sentence):
        scope = listed.group(1)
    else:
        scope = first_sentence

    seen: list[int] = []
    for match in ITEM_TAG.finditer(scope):
        item_id = int(match.group(1))
        if item_id not in seen:
            seen.append(item_id)
    return seen


def parse_consumables(html: str, spec=None) -> list[dict]:
    """[{category, item_id, is_primary}] en el orden en que los da la guia."""
    text = _unescape(html)
    headings = list(HEADING.finditer(text))
    found: list[dict] = []
    covered: set[str] = set()

    for index, match in enumerate(headings):
        category = _classify(match.group(1))
        if category is None or category in covered:
            continue

        end = headings[index + 1].start() if index + 1 < len(headings) else len(text)
        items = _recommended_items(text[match.end():end])
        if not items:
            continue

        covered.add(category)
        for position, item_id in enumerate(items):
            found.append({
                "category": category,
                "item_id": item_id,
                "is_primary": position == 0,
            })

    return found


def fetch_consumables(fetcher, spec) -> tuple[list[dict], str | None]:
    """Devuelve los consumibles y la URL que funciono, o ([], None)."""
    for url in guide_urls(spec):
        try:
            html = fetcher.get(url)
        except Exception:
            continue

        consumables = parse_consumables(html, spec)
        if consumables:
            return consumables, url

    return [], None
