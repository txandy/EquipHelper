"""La rotacion es lo unico que Wowhead aporta y nadie mas da."""

import pytest

from scraper.sources import wowhead


@pytest.fixture(scope="module")
def rotations(wowhead_html, frost_mage):
    return wowhead.parse_rotations(wowhead_html, frost_mage)


def test_urls_cover_the_three_roles(frost_mage):
    urls = wowhead.guide_urls(frost_mage)
    assert urls[0] == ("https://www.wowhead.com/guide/classes/mage/frost/"
                       "rotation-cooldowns-pve-dps")
    assert any("healer" in url for url in urls) and any("tank" in url for url in urls)


def test_url_slugs_lose_their_spaces():
    class Spec:
        class_name = "Death Knight"
        spec_name = "Beast Mastery"

    assert "/death-knight/beast-mastery/" in wowhead.guide_urls(Spec())[0]


def test_rotation_is_split_per_hero_talent(rotations, frost_mage):
    assert set(rotations) == set(frost_mage.hero_names)


def test_both_single_target_and_aoe_are_captured(rotations):
    # La cabecera de AoE lleva dos espacios en esta guia; si el regex exige uno,
    # este test se cae y ese fue exactamente el bug.
    for modes in rotations.values():
        assert set(modes) == {"st", "aoe"}
        assert len(modes["aoe"]) > 5


def test_opener_is_not_mistaken_for_a_rotation(rotations):
    # La secuencia de apertura vive en bloques del mismo tipo, justo despues.
    for modes in rotations.values():
        assert set(modes) <= {"st", "aoe"}


def test_conditions_keep_their_spells_as_tokens(rotations):
    notes = [e["note"] for modes in rotations.values()
             for entries in modes.values() for e in entries if e["note"]]
    assert any("{190447}" in note for note in notes)
    # Y nunca el nombre en ingles, que rompe la regla de solo-IDs.
    assert not any("Brain Freeze" in note for note in notes)


def test_entries_without_a_condition_have_no_note(rotations):
    entries = rotations[40]["st"]
    assert any(entry["note"] is None for entry in entries)


def test_bbcode_leftovers_are_stripped(rotations):
    notes = [e["note"] for modes in rotations.values()
             for entries in modes.values() for e in entries if e["note"]]
    assert not any("[" in note or "]" in note for note in notes)


def test_a_page_without_the_guide_yields_nothing(frost_mage):
    assert wowhead.parse_rotations("<html>nada</html>", frost_mage) == {}


# --- Atribucion cuando la guia usa taquigrafia propia ---------------------
#
# Cada autor se inventa sus display-options. La de Brewmaster usa "spm" y "moh",
# que no se parecen a "Shado-Pan" ni a "Master of Harmony": la unica via fiable
# es mirar que talentos de heroe aparecen en la propia lista.

@pytest.fixture(scope="module")
def brewmaster_rotations(brewmaster_html, brewmaster):
    return wowhead.parse_rotations(brewmaster_html, brewmaster)


def test_shorthand_labels_are_resolved_by_their_spells(brewmaster_rotations, brewmaster):
    assert set(brewmaster_rotations) == set(brewmaster.hero_names)


def test_prose_mentions_of_the_opener_do_not_end_a_section(brewmaster_rotations):
    # La palabra "opener" sale en el texto de la seccion de AoE. Si se busca
    # suelta en vez de en las cabeceras, los bloques posteriores pierden su modo.
    for modes in brewmaster_rotations.values():
        assert "aoe" in modes


def test_headings_are_read_only_as_headings():
    text = "[h3]Best AoE  Rotation[/h3] blah opener blah [h3]Priority[/h3]"
    headings = wowhead._headings(text)
    assert [mode for _, mode in headings] == ["aoe"]


def test_opener_heading_still_closes_the_section():
    text = "[h3]Single Target Rotation[/h3] x [h3]Best Opener[/h3]"
    headings = wowhead._headings(text)
    assert wowhead._mode_at(headings, len(text)) is None
    assert wowhead._mode_at(headings, 30) == "st"


def test_label_can_carry_the_mode_itself():
    # "slayer-st" / "thane-mt": algunas guias ponen ambas variantes bajo una
    # sola cabecera y distinguen en la etiqueta.
    assert wowhead._mode_for_block("slayer-st", [], 0) == "st"
    assert wowhead._mode_for_block("thane-mt", [], 0) == "aoe"


def test_negated_blocks_are_not_content(brewmaster_html, brewmaster):
    # "!(spm)&!(moh)" es el aviso de "elige un hero talent".
    assert all(entries for modes in wowhead.parse_rotations(brewmaster_html, brewmaster).values()
               for entries in modes.values())
