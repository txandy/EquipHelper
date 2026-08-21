"""La puerta de calidad existe para que un fallo silencioso sea ruidoso."""

import pytest

from scraper.model import GearEntry, Guide, SpecGuides, StatEntry, TalentBuild
from scraper.validate import churn, validate

GOOD_IMPORT = "C" + "A" * 100


def make_guide(**overrides):
    guide = Guide(
        content="mplus",
        hero_id=40,
        hero_name="Spellslinger",
        stat_priority=[StatEntry("HASTE", 900, 40.0, 1.0)],
        talent_builds=[TalentBuild("Spellslinger #1", GOOD_IMPORT, "mythicstats", "u", 40, 3.7)],
        gear={"TRINKET1": [GearEntry(249343, 75.0)]},
    )
    for key, value in overrides.items():
        setattr(guide, key, value)
    return guide


def make_spec(guides=None, slug="frost-mage"):
    return SpecGuides("MAGE", "Mage", 64, "Frost", slug, guides if guides is not None else [make_guide()])


def test_healthy_run_passes(frost_mage):
    assert validate([make_spec()], [frost_mage]).ok


def test_empty_run_is_an_error(frost_mage):
    report = validate([], [frost_mage])
    assert not report.ok
    assert "ninguna spec" in report.errors[0]


def test_low_coverage_fails(specs):
    # Una sola spec de dos: 50%, por debajo del minimo del 90%.
    report = validate([make_spec()], specs)
    assert not report.ok
    assert any("cobertura" in error for error in report.errors)


def test_guide_without_builds_fails(frost_mage):
    report = validate([make_spec([make_guide(talent_builds=[])])], [frost_mage])
    assert not report.ok
    assert any("sin builds" in error for error in report.errors)


def test_truncated_import_string_fails(frost_mage):
    broken = make_guide(talent_builds=[TalentBuild("x", "CAE", "mythicstats", "u", 40)])
    report = validate([make_spec([broken])], [frost_mage])
    assert any("import string" in error for error in report.errors)


@pytest.mark.parametrize("item_id", [0, -1, 99_000_000, "249343"])
def test_implausible_item_ids_fail(frost_mage, item_id):
    broken = make_guide(gear={"TRINKET1": [GearEntry(item_id, 75.0)]})
    report = validate([make_spec([broken])], [frost_mage])
    assert any("itemID implausible" in error for error in report.errors)


def test_unknown_slot_fails(frost_mage):
    broken = make_guide(gear={"TABARD": [GearEntry(249343, 10.0)]})
    report = validate([make_spec([broken])], [frost_mage])
    assert any("ranura desconocida" in error for error in report.errors)


def test_missing_gear_is_a_warning_not_an_error(frost_mage):
    report = validate([make_spec([make_guide(gear={})])], [frost_mage])
    assert report.ok
    assert any("sin datos de equipo" in warning for warning in report.warnings)


def _spec_dict(item_ids):
    return {"guides": [{"gear": {"TRINKET1": [{"item_id": i} for i in item_ids]},
                        "gems": [], "enchants": []}]}


def test_churn_flags_a_wholesale_item_swap():
    previous = {"frost-mage": _spec_dict([1, 2, 3, 4])}
    current = {"frost-mage": _spec_dict([90, 91, 92, 93])}
    assert churn(previous, current)


def test_churn_ignores_normal_week_to_week_drift():
    previous = {"frost-mage": _spec_dict([1, 2, 3, 4])}
    current = {"frost-mage": _spec_dict([1, 2, 3, 9])}
    assert churn(previous, current) == []


def test_churn_ignores_specs_that_are_new():
    assert churn({}, {"frost-mage": _spec_dict([1, 2])}) == []
