"""Fuente: guias de clase de Wowhead.

Aporta lo unico que ninguna otra fuente da: la lista de prioridad de la
rotacion, con sus condiciones ("Ice Lance si Fingers of Frost esta activo").
Mythicstats y Warcraft Logs miden que se juega y como rinde; nadie mas explica
en que orden pulsar los botones.

Wowhead no tiene API y sus terminos no contemplan la extraccion automatica, asi
que este modulo es el mas conservador del proyecto: una peticion por segundo,
cache en disco, User-Agent identificable, y aislado para poder desactivarlo sin
tocar nada mas. La guia se publica con atribucion y enlace en el addon.

Detalle tecnico: la guia viaja como BBCode dentro de una cadena de JavaScript,
no como HTML. Eso juega a favor: los marcadores [ol] / [li] / [spell=ID] son
mucho mas estables que unas clases CSS, y el propio Wowhead ya separa la
rotacion por hero talent con [div display-options="Spellslinger"], que es
exactamente el corte que necesita el addon.
"""

from __future__ import annotations

import re

SOURCE_KEY = "wowhead"
BASE_URL = "https://www.wowhead.com/guide/classes"

# El sufijo depende del rol y no lo sabemos de antemano; se prueban por orden.
ROLE_SUFFIXES = ("rotation-cooldowns-pve-dps", "rotation-cooldowns-pve-healer",
                 "rotation-cooldowns-pve-tank")

# El espaciado de estas cabeceras no es de fiar: la guia de Mago Escarcha
# escribe "AoE  Rotation" con dos espacios. \s+ en vez de un espacio literal.
# "Opener" entra con modo None a proposito: marca donde dejan de ser listas de
# prioridad, para no colar la secuencia de apertura como si fuera la rotacion.
# Las cabeceras se clasifican por su texto, pero solo se miran cabeceras de
# verdad: "opener" aparece tambien en prosa ("...and your opener sequence"), y
# buscarla suelta hacia que un bloque perdiera su seccion.
HEADING = re.compile(r"\[h[23][^\]]*\](.*?)\[/h[23]\]", re.S)

HEADING_MODES = (
    ("aoe", re.compile(r"\b(aoe|cleave|multi[\s-]*target)\b", re.I)),
    ("st", re.compile(r"single[\s-]*target", re.I)),
    # Guias de sanador y algunas de dps no separan por numero de objetivos:
    # publican una sola lista, que va al modo por defecto.
    ("st", re.compile(r"\b(healing|dps|priority)\s+rotation\b", re.I)),
    ("st", re.compile(r"\brotation\s+priority\b", re.I)),
    # Centinela: a partir del opener ya no hay listas de prioridad.
    (None, re.compile(r"\bopener\b", re.I)),
)

DIV_BLOCK = re.compile(r'\[div display-options="([^"]+)"\](.*?)\[/div\]', re.S)
LABEL_AOE = re.compile(r"\b(aoe|mt|multi)\b", re.I)
LABEL_ST = re.compile(r"\b(st|single)\b", re.I)
OL_BLOCK = re.compile(r"\[ol\](.*?)\[/ol\]", re.S)
LI_ITEM = re.compile(r"\[li\](.*?)\[/li\]", re.S)
SPELL_TAG = re.compile(r"\[spell=(\d+)\]")
BBCODE_TAG = re.compile(r"\[/?[^\]]*\]")


def guide_urls(spec) -> list[str]:
    class_slug = spec.class_name.lower().replace(" ", "-")
    spec_slug = spec.spec_name.lower().replace(" ", "-")
    return [f"{BASE_URL}/{class_slug}/{spec_slug}/{suffix}" for suffix in ROLE_SUFFIXES]


def _unescape(html: str) -> str:
    """La guia viaja escapada dentro de una cadena JS; se deshace ese escapado."""
    return (html.replace("\\r\\n", "\n").replace("\\n", "\n")
                .replace('\\"', '"').replace("\\/", "/"))


def _clean(text: str) -> str:
    """Quita el BBCode y deja la condicion legible.

    Los hechizos que la condicion menciona ("si [spell=190447] esta activo") se
    conservan como tokens {190447}. Guardar aqui el nombre en ingles romperia la
    regla de solo-IDs y dejaria la frase sin traducir; el addon los sustituye por
    el nombre localizado al renderizar.
    """
    with_tokens = SPELL_TAG.sub(lambda m: "{" + m.group(1) + "}", text)
    without_tags = BBCODE_TAG.sub("", with_tokens)
    collapsed = re.sub(r"\s+", " ", without_tags).strip()
    return collapsed.strip(" -–—")


def _headings(text: str) -> list[tuple[int, str | None]]:
    """Posicion y modo de cada cabecera que dice a que rotacion pertenece.

    Las que no dicen nada (por ejemplo "Priority") no aparecen: no cambian de
    seccion, solo titulan la lista que viene debajo.
    """
    found: list[tuple[int, str | None]] = []

    for match in HEADING.finditer(text):
        label = BBCODE_TAG.sub("", match.group(1))
        for mode, pattern in HEADING_MODES:
            if pattern.search(label):
                found.append((match.start(), mode))
                break

    return found


def _mode_at(headings: list[tuple[int, str | None]], position: int) -> str | None:
    """A que rotacion pertenece un bloque: la ultima cabecera que lo precede."""
    mode = None
    for start, candidate in headings:
        if start > position:
            break
        mode = candidate
    return mode


def _parse_priority(block: str) -> list[dict]:
    """Convierte el primer [ol] del bloque en una lista de prioridad."""
    ordered = OL_BLOCK.search(block)
    if not ordered:
        return []

    entries: list[dict] = []
    for item in LI_ITEM.findall(ordered.group(1)):
        spell = SPELL_TAG.search(item)
        if not spell:
            continue
        # La condicion es el resto de la linea sin el hechizo principal.
        condition = _clean(SPELL_TAG.sub("", item, count=1))
        entries.append({"spell_id": int(spell.group(1)), "note": condition or None})

    return entries


def _hero_for_block(label: str, entries: list[dict], spec) -> int | None:
    """A que hero talent pertenece un bloque.

    La etiqueta display-options no sirve como identificador: cada autor de guia
    se inventa la suya ("slayer-st", "SS", "DB&AoE"), y solo algunas coinciden
    con el nombre del arbol. Lo que si es univoco son los hechizos: si la
    prioridad incluye un talento de heroe, ese talento dice de que arbol es.
    Se vota porque una rotacion puede rozar un talento compartido.
    """
    votes: dict[int, int] = {}
    for entry in entries:
        hero_id = spec.spell_to_hero.get(entry["spell_id"])
        if hero_id:
            votes[hero_id] = votes.get(hero_id, 0) + 1

    if votes:
        return max(votes, key=votes.get)

    # Sin talentos de heroe en la lista, la etiqueta es el ultimo recurso.
    normalized = re.sub(r"[^a-z]+", " ", label.lower())
    for tree in spec.hero_trees:
        words = re.sub(r"[^a-z]+", " ", tree.name.lower()).split()
        if any(word in normalized.split() for word in words):
            return tree.hero_id

    return None


def _mode_for_block(label: str, headings, position: int) -> str | None:
    """El modo lo dice la etiqueta si lo lleva; si no, la cabecera anterior.

    Varias guias marcan el bloque como "slayer-st" / "thane-mt" y ponen las dos
    variantes bajo la misma cabecera, asi que la etiqueta manda cuando habla.
    """
    if LABEL_AOE.search(label):
        return "aoe"
    if LABEL_ST.search(label):
        return "st"
    return _mode_at(headings, position)


def parse_rotations(html: str, spec) -> dict[int, dict[str, list[dict]]]:
    """{hero_id: {"st": [entradas], "aoe": [...]}} con las prioridades.

    Las guias sin division por hero talent (varias de sanador) publican una sola
    rotacion; en ese caso se asigna a todos los arboles, que es lo que el propio
    autor esta diciendo.
    """
    text = _unescape(html)
    headings = _headings(text)
    result: dict[int, dict[str, list[dict]]] = {}

    for match in DIV_BLOCK.finditer(text):
        label = match.group(1).strip()
        if label.startswith("!"):
            # Bloques negados: son el aviso de "elige un hero talent", no contenido.
            continue

        entries = _parse_priority(match.group(2))
        if not entries:
            continue

        mode = _mode_for_block(label, headings, match.start())
        hero_id = _hero_for_block(label, entries, spec)
        if mode is None or hero_id is None:
            continue

        result.setdefault(hero_id, {}).setdefault(mode, entries)

    if result:
        return result

    return _parse_shared(text, headings, spec)


def _parse_shared(text: str, headings, spec) -> dict[int, dict[str, list[dict]]]:
    """Guias que no separan por hero talent: una rotacion para todos."""
    shared: dict[str, list[dict]] = {}

    for match in OL_BLOCK.finditer(text):
        mode = _mode_at(headings, match.start())
        if mode is None or mode in shared:
            continue

        entries = _parse_priority(match.group(0))
        if entries:
            shared[mode] = entries

    if not shared:
        return {}

    return {tree.hero_id: dict(shared) for tree in spec.hero_trees}


def fetch_rotations(fetcher, spec) -> tuple[dict[int, dict[str, list[dict]]], str | None]:
    """Devuelve las rotaciones y la URL que funciono, o ({}, None)."""
    for url in guide_urls(spec):
        try:
            html = fetcher.get(url)
        except Exception:
            continue

        rotations = parse_rotations(html, spec)
        if rotations:
            return rotations, url

    return {}, None
