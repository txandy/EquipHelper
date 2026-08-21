"""El catalogo de specs es la referencia contra la que se mide todo lo demas."""


def test_slug_matches_source_url_format(frost_mage):
    assert frost_mage.slug == "frost-mage"


def test_class_file_uses_wow_token(specs):
    # 'Death Knight' -> DEATHKNIGHT: es la clave que espera el addon.
    assert {s.class_file for s in specs} == {"MAGE", "WARRIOR"}


def test_hero_trees_are_named_and_identified(frost_mage):
    assert frost_mage.hero_names == {40: "Spellslinger", 41: "Frostfire"}


def test_spell_to_hero_map_is_populated(frost_mage):
    # Sin este mapa no se puede saber a que arbol pertenece una build.
    assert len(frost_mage.spell_to_hero) > 20
    assert set(frost_mage.spell_to_hero.values()) == {40, 41}
