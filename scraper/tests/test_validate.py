"""Puerta de calidad: convierte un fallo silencioso en un error ruidoso."""

import pytest

from scraper.model import (
    ConsumableEntry, GearEntry, Guide, SourceView, SpecGuides, StatEntry, TalentBuild,
)
from scraper.validate import churn, validate

GOOD_IMPORT = "C" + "A" * 100


def make_view(source="mythicstats", **overrides):
    view = SourceView(
        source=source,
        url="https://example.test",
        fetched_at="2026-08-21",
        stat_priority=[StatEntry("HASTE", 900, 40.0, 1.0)],
        talent_builds=[TalentBuild("Spellslinger #1", GOOD_IMPORT, source, "u", 40, 3.7)],
        gear={"TRINKET1": [GearEntry(249343, 75.0)]},
    )
    for key, value in overrides.items():
        setattr(view, key, value)
    return view


def make_guide(views=None):
    return Guide(content="mplus", hero_id=40, hero_name="Spellslinger",
                 views=views if views is not None else {"mythicstats": make_view()})


def make_spec(guides=None, slug="frost-mage"):
    return SpecGuides("MAGE", "Mage", 64, "Frost", slug,
                      guides if guides is not None else [make_guide()])


def test_healthy_run_passes(frost_mage):
    assert validate([make_spec()], [frost_mage]).ok


def test_empty_run_is_an_error(frost_mage):
    report = validate([], [frost_mage])
    assert not report.ok
    assert "ninguna spec" in report.errors[0]


def test_low_coverage_fails(specs):
    # Una spec de tres: muy por debajo del minimo del 90%.
    report = validate([make_spec()], specs)
    assert not report.ok
    assert any("cobertura" in error for error in report.errors)


def test_guide_without_any_source_fails(frost_mage):
    report = validate([make_spec([make_guide(views={})])], [frost_mage])
    assert not report.ok
    assert any("sin ninguna fuente" in error for error in report.errors)


def test_unknown_source_fails(frost_mage):
    guide = make_guide(views={"reddit": make_view(source="reddit")})
    report = validate([make_spec([guide])], [frost_mage])
    assert any("fuente desconocida" in error for error in report.errors)


def test_a_view_that_fills_nothing_fails(frost_mage):
    # Una vista vacia no es un hueco legitimo: es una descarga que salio mal.
    empty = SourceView(source="icyveins", url="u", fetched_at="2026-08-21")
    guide = make_guide(views={"mythicstats": make_view(), "icyveins": empty})
    report = validate([make_spec([guide])], [frost_mage])
    assert any("no trae ninguna seccion" in error for error in report.errors)


def test_a_view_with_only_consumables_is_legitimate(frost_mage):
    # Es exactamente la forma de la vista de Wowhead, y de la de Icy Veins
    # cuando una spec solo tiene consumibles publicados.
    only = SourceView(source="wowhead", url="u", fetched_at="2026-08-21",
                      consumables=[ConsumableEntry("FLASK", 241322, True)])
    guide = make_guide(views={"mythicstats": make_view(), "wowhead": only})
    assert validate([make_spec([guide])], [frost_mage]).ok


def test_truncated_import_string_fails(frost_mage):
    broken = make_view(talent_builds=[TalentBuild("x", "CAE", "mythicstats", "u", 40)])
    report = validate([make_spec([make_guide({"mythicstats": broken})])], [frost_mage])
    assert any("import string" in error for error in report.errors)


@pytest.mark.parametrize("item_id", [0, -1, 99_000_000, "249343"])
def test_implausible_item_ids_fail(frost_mage, item_id):
    broken = make_view(gear={"TRINKET1": [GearEntry(item_id, 75.0)]})
    report = validate([make_spec([make_guide({"mythicstats": broken})])], [frost_mage])
    assert any("itemID implausible" in error for error in report.errors)


def test_the_gem_and_enchant_of_a_piece_are_checked_too(frost_mage):
    # Campos que solo rellena Icy Veins; si no se validan, entran sin mirar.
    broken = make_view(gear={"TRINKET1": [GearEntry(249343, 75.0, gem_id=0)]})
    report = validate([make_spec([make_guide({"mythicstats": broken})])], [frost_mage])
    assert any("itemID implausible" in error for error in report.errors)


def test_unknown_slot_fails(frost_mage):
    broken = make_view(gear={"TABARD": [GearEntry(249343, 10.0)]})
    report = validate([make_spec([make_guide({"mythicstats": broken})])], [frost_mage])
    assert any("ranura desconocida" in error for error in report.errors)


def test_no_source_with_gear_is_a_warning_not_an_error(frost_mage):
    report = validate([make_spec([make_guide({"mythicstats": make_view(gear={})})])],
                      [frost_mage])
    assert report.ok
    assert any("ninguna fuente trae equipo" in warning for warning in report.warnings)


def _spec_dict(item_ids, source="mythicstats"):
    return {"guides": [{"views": {source: {
        "gear": {"TRINKET1": [{"item_id": i} for i in item_ids]},
        "gems": [], "enchants": [], "consumables": [],
    }}}]}


def test_churn_flags_a_wholesale_item_swap():
    assert churn({"frost-mage": _spec_dict([1, 2, 3, 4])},
                 {"frost-mage": _spec_dict([90, 91, 92, 93])})


def test_churn_ignores_normal_week_to_week_drift():
    assert churn({"frost-mage": _spec_dict([1, 2, 3, 4])},
                 {"frost-mage": _spec_dict([1, 2, 3, 9])}) == []


def test_churn_looks_across_every_source():
    # Si solo mirase la primera vista, cambiar de fuente pareceria un cambio
    # total de items y marcaria todas las specs cada vez.
    previous = {"frost-mage": _spec_dict([1, 2, 3, 4], source="mythicstats")}
    current = {"frost-mage": _spec_dict([1, 2, 3, 4], source="icyveins")}
    assert churn(previous, current) == []


def test_churn_ignores_specs_that_are_new():
    assert churn({}, {"frost-mage": _spec_dict([1, 2])}) == []
