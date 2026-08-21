"""El parser corre contra HTML grabado: si la fuente cambia, rompe un test."""

import pytest

from scraper.sources.mythicstats import parse_page, spec_url

URL = "https://mythicstats.com/spec/frost-mage"


@pytest.fixture(scope="module")
def guides(frost_mage_html, frost_mage):
    return parse_page(frost_mage_html, frost_mage, "mplus", URL, "2026-08-21")


def test_url_differs_per_content():
    assert spec_url("frost-mage", "mplus").endswith("/spec/frost-mage")
    assert "/raid/" in spec_url("frost-mage", "raid")


def test_one_guide_per_hero_tree_with_builds(guides):
    assert {g.hero_name for g in guides} == {"Frostfire", "Spellslinger"}


def test_builds_are_attributed_to_the_dominant_hero_tree(guides):
    # La pagina declara "93% Spellslinger", asi que ese arbol debe llevarse
    # la mayoria de las builds.
    by_hero = {g.hero_name: len(g.talent_builds) for g in guides}
    assert by_hero["Spellslinger"] > by_hero["Frostfire"]


def test_import_strings_look_like_blizzard_loadouts(guides):
    for guide in guides:
        for build in guide.talent_builds:
            assert build.import_string.startswith("C")
            assert len(build.import_string) > 50


def test_stat_priority_is_ordered_and_weighted(guides):
    stats = guides[0].stat_priority
    assert [s.stat for s in stats][0] == "MASTERY"
    assert stats[0].weight == 1.0
    assert all(stats[i].weight >= stats[i + 1].weight for i in range(len(stats) - 1))


def test_gear_is_keyed_by_addon_slot(guides):
    gear = guides[0].gear
    assert "TRINKET1" in gear and "MAINHAND" in gear
    assert all(entry.item_id > 0 for entries in gear.values() for entry in entries)


def test_gear_and_stats_are_shared_across_hero_trees(guides):
    # Mythicstats publica un solo bloque de equipo por spec; cada guia debe
    # quedar autocontenida para que el addon no cruce tablas en runtime.
    assert guides[0].gear.keys() == guides[1].gear.keys()


def test_enchants_carry_their_slot(guides):
    slots = {e.slot for e in guides[0].enchants}
    assert "MAINHAND" in slots and "HEAD" in slots


def test_empty_html_yields_no_guides(frost_mage):
    assert parse_page("<html></html>", frost_mage, "mplus", URL, "2026-08-21") == []


def test_hero_distribution_reads_the_subtitle(frost_mage):
    from scraper.sources.mythicstats import _hero_distribution

    subtitle = "93% Spellslinger.  Only talents that vary among top builds are shown."
    assert _hero_distribution(subtitle, frost_mage) == [(40, 93)]


def test_hero_distribution_handles_a_split_field(frost_mage):
    from scraper.sources.mythicstats import _hero_distribution

    assert _hero_distribution("60% Frostfire, 40% Spellslinger.", frost_mage) == [(41, 60), (40, 40)]


def test_hero_distribution_ignores_trees_of_other_specs(frost_mage):
    from scraper.sources.mythicstats import _hero_distribution

    assert _hero_distribution("100% Deathbringer.", frost_mage) == []
