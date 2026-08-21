"""Icy Veins es la voz editorial: dice que recomienda alguien, y por que.

Lo que justifica tenerla ademas de Mythicstats es el detalle por pieza —de que
jefe cae, con que gema y con que encante—, asi que casi todo lo que se fija aqui
es eso.
"""

import pytest

from scraper.model import SLOTS
from scraper.sources import icyveins as iv


@pytest.fixture(scope="module")
def gear(iv_gear_html):
    return iv.parse_gear(iv_gear_html)


@pytest.fixture(scope="module")
def consumables(iv_consumables_html):
    return iv.parse_consumables(iv_consumables_html)[0]


# --- URLs -----------------------------------------------------------------

def test_url_uses_the_spec_class_slug(frost_mage):
    assert iv.page_urls(frost_mage, "gear")[0] == (
        "https://www.icy-veins.com/wow/frost-mage-pve-dps-gear-best-in-slot")


def test_the_three_roles_are_tried_in_order(frost_mage):
    roles = [url.rsplit("-gear", 1)[0].rsplit("-", 2)[-2:] for url
             in iv.page_urls(frost_mage, "gear")]
    assert roles == [["pve", "dps"], ["pve", "healing"], ["pve", "tank"]]


def test_slugs_lose_their_spaces():
    class Spec:
        class_name = "Death Knight"
        spec_name = "Beast Mastery"

    assert "/beast-mastery-death-knight-pve-dps-" in iv.page_urls(Spec(), "gear")[0]


# --- Equipo ---------------------------------------------------------------

def test_gear_is_split_by_content(gear):
    # Icy Veins ya publica M+ y banda por separado, mas un "overall" que sirve
    # de respaldo para el que falte.
    assert set(gear) == {"mplus", "raid", "overall"}


def test_slots_map_to_addon_keys(gear):
    assert all(slot in SLOTS for slot in gear["mplus"])


def test_shirt_and_tabard_are_dropped(gear):
    # Icy Veins los lista, pero no llevan estadisticas: solo ensucian.
    assert "SHIRT" not in gear["mplus"] and "TABARD" not in gear["mplus"]


def test_paired_slots_are_numbered_in_order(gear):
    # Dos anillos y dos abalorios por conjunto, y el panel etiqueta cada clave
    # por separado: meterlos todos en FINGER1 los pintaria bajo "Ring 1".
    for first, second in (("FINGER1", "FINGER2"), ("TRINKET1", "TRINKET2")):
        assert gear["mplus"][first][0].item_id != gear["mplus"][second][0].item_id


def test_the_bonus_ids_do_not_contaminate_the_item_id(gear):
    # El data-wowhead trae "item=271874&bonus=13846:13848:10835".
    assert all(entry.item_id < 2_000_000
               for entries in gear["mplus"].values() for entry in entries)


def test_each_piece_carries_where_it_drops(gear):
    drops = [e.drop_source for entries in gear["mplus"].values() for e in entries]
    assert sum(1 for d in drops if d) >= 12
    assert all(d.strip() == d for d in drops if d)


def test_pieces_carry_their_own_gem_and_enchant(gear):
    # Es el dato que ningun ranking de uso puede dar: no que gema se lleva en
    # general, sino cual va en esta pieza.
    entries = [e for slots in gear["mplus"].values() for e in slots]
    assert any(e.gem_id for e in entries)
    assert any(e.enchant_id for e in entries)


def test_a_page_without_the_grid_yields_nothing():
    assert iv.parse_gear("<html><body>nada</body></html>") == {}


# --- Talentos -------------------------------------------------------------

def test_talent_builds_are_labelled_by_scenario(iv_talents_html):
    labels = [b.label for b in iv.parse_talents(iv_talents_html)]
    assert len(labels) == 3
    assert any("Single Target" in label for label in labels)


def test_talent_builds_are_not_hero_specific(iv_talents_html):
    # Los codigos viven en un bloque anterior a las secciones por heroe, que son
    # prosa. Marcarlos como especificos seria inventarse una atribucion.
    assert all(not b.hero_specific for b in iv.parse_talents(iv_talents_html))


def test_import_strings_look_like_blizzard_loadouts(iv_talents_html):
    for build in iv.parse_talents(iv_talents_html):
        assert build.import_string.startswith("C") and len(build.import_string) > 50


def test_a_page_without_export_blocks_yields_nothing():
    assert iv.parse_talents("<html></html>") == []


# --- Consumibles ----------------------------------------------------------

def test_every_category_is_found(consumables):
    assert {c.category for c in consumables} == {
        "FLASK", "POTION", "HEALTH_POTION", "FOOD", "RUNE", "WEAPON_OIL"}


def test_one_section_can_fill_two_categories(consumables):
    # #potions cubre la pocion de combate y la de vida en parrafos distintos.
    combat = next(c for c in consumables if c.category == "POTION")
    health = next(c for c in consumables if c.category == "HEALTH_POTION")
    assert combat.item_id != health.item_id


def test_the_warlock_healthstone_is_not_a_health_potion(consumables):
    # Se menciona en el mismo parrafo; tomar solo el primer item lo deja fuera.
    assert all(c.item_id != 5512 for c in consumables)


def test_each_category_has_exactly_one_primary(consumables):
    for category in {c.category for c in consumables}:
        primaries = [c for c in consumables if c.category == category and c.is_primary]
        assert len(primaries) == 1


def test_weapon_oil_takes_only_the_first_paragraph(consumables):
    # Esa seccion sigue con los encantes por ranura, que ya vienen mejor desde
    # las tarjetas de equipo.
    assert len([c for c in consumables if c.category == "WEAPON_OIL"]) == 1


def test_gems_come_from_their_own_section(iv_consumables_html):
    gems = iv.parse_consumables(iv_consumables_html)[1]
    assert len(gems) >= 2 and all(g.item_id > 0 for g in gems)


# --- Abalorios ------------------------------------------------------------

def test_the_trinket_section_yields_its_written_reasoning(iv_gear_html):
    note = iv.parse_trinket_note(iv_gear_html)
    assert note and len(note) > 60


def test_a_page_without_trinket_prose_yields_nothing():
    assert iv.parse_trinket_note("<html></html>") is None
