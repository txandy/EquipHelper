"""Los consumibles son lo unico que Wowhead aporta y nadie mas publica."""

import pytest

from scraper.model import CONSUMABLE_CATEGORIES
from scraper.sources import wowhead


@pytest.fixture(scope="module")
def consumables(consumables_html):
    return wowhead.parse_consumables(consumables_html)


def test_urls_cover_the_three_roles(frost_mage):
    urls = wowhead.guide_urls(frost_mage)
    assert urls[0] == ("https://www.wowhead.com/guide/classes/mage/frost/"
                       "enchants-gems-pve-dps")
    assert any("healer" in url for url in urls) and any("tank" in url for url in urls)


def test_url_slugs_lose_their_spaces():
    class Spec:
        class_name = "Death Knight"
        spec_name = "Beast Mastery"

    assert "/death-knight/beast-mastery/" in wowhead.guide_urls(Spec())[0]


def test_every_category_the_guide_publishes_is_found(consumables):
    found = {entry["category"] for entry in consumables}
    assert found == {"FLASK", "POTION", "HEALTH_POTION", "WEAPON_OIL", "RUNE", "FOOD"}


def test_categories_are_ones_the_addon_understands(consumables):
    assert all(entry["category"] in CONSUMABLE_CATEGORIES for entry in consumables)


def test_each_category_has_exactly_one_primary(consumables):
    for category in {entry["category"] for entry in consumables}:
        primaries = [e for e in consumables if e["category"] == category and e["is_primary"]]
        assert len(primaries) == 1


def test_health_potion_is_not_swallowed_by_the_combat_potion(consumables):
    # "Health Potion" contiene "Potion": si el orden de los patrones se invierte,
    # las dos secciones caen en la misma categoria y una se pierde.
    potion = next(e for e in consumables if e["category"] == "POTION" and e["is_primary"])
    health = next(e for e in consumables if e["category"] == "HEALTH_POTION")
    assert potion["item_id"] != health["item_id"]


def test_caveat_sentences_do_not_leak_items(consumables):
    # La seccion de pocion de combate sigue con "si llevas [item=245880], la
    # pocion empeora". Ese 245880 es un abalorio: publicarlo como pocion seria
    # un dato confiadamente falso.
    potions = [e["item_id"] for e in consumables if e["category"] == "POTION"]
    assert 245880 not in potions
    assert len(potions) == 2


def test_food_is_read_from_its_list_not_its_prose(consumables):
    # La seccion de comida empieza con un parrafo sin items y pone las opciones
    # debajo, en un [ul]. Si solo se mirara la primera frase, saldria vacia.
    food = [e for e in consumables if e["category"] == "FOOD"]
    assert len(food) == 2 and food[0]["is_primary"]


def test_a_page_without_the_guide_yields_nothing():
    assert wowhead.parse_consumables("<html>nada</html>") == []


def test_a_section_without_items_is_skipped():
    text = '[h3 toc="Flasks"]Flask[/h3]Sim your character.[h3 toc="Food"]Food[/h3]Use [item=1].'
    parsed = wowhead.parse_consumables(text)
    assert [e["category"] for e in parsed] == ["FOOD"]


def test_only_the_first_section_per_category_counts():
    # Algunas guias repiten la cabecera mas abajo con salvedades; la primera
    # es la recomendacion.
    text = '[h3]Flask[/h3]Use [item=1].[h3]Flask[/h3]Or maybe [item=2].'
    assert [e["item_id"] for e in wowhead.parse_consumables(text)] == [1]
