"""El Lua generado tiene que ser valido, estable y sin logica."""

import subprocess
import shutil

import pytest

from scraper.emit_lua import class_file_name, lua_value, render_class, update_toc
from scraper.model import GearEntry, Guide, SpecGuides, StatEntry, TalentBuild

TOC_TEMPLATE = """## Interface: 120000

Core.lua

# BEGIN GENERATED DATA
Data\\Vieja.lua
# END GENERATED DATA

UI\\MainPanel.lua
"""


def make_spec():
    guide = Guide(
        content="mplus", hero_id=40, hero_name="Spellslinger",
        stat_priority=[StatEntry("HASTE", 900, 40.0, 1.0)],
        talent_builds=[TalentBuild("Spellslinger #1", "C" + "A" * 100, "mythicstats",
                                   "https://mythicstats.com/spec/frost-mage", 40, 3.7)],
        gear={"TRINKET1": [GearEntry(249343, 75.0)]},
    )
    return SpecGuides("MAGE", "Mage", 64, "Frost", "frost-mage", [guide])


def test_numeric_keys_are_bracketed():
    assert lua_value({64: "x"}) == '{\n\t[64] = "x",\n}'


def test_strings_with_quotes_are_escaped():
    assert lua_value('di "hola"') == '"di \\"hola\\""'


def test_nil_and_empty_values_are_dropped():
    # Emitir claves vacias solo engorda el fichero que carga el cliente.
    assert lua_value({"a": None, "b": [], "c": {}, "d": 1}) == "{\n\td = 1,\n}"


def test_output_is_deterministic():
    first = render_class("MAGE", [make_spec()])
    second = render_class("MAGE", [make_spec()])
    assert first == second


def test_key_order_does_not_depend_on_dict_order():
    assert lua_value({"b": 1, "a": 2}) == lua_value({"a": 2, "b": 1})


def test_class_file_name_strips_spaces():
    assert class_file_name("Death Knight") == "DeathKnight.lua"


@pytest.mark.skipif(not shutil.which("luac"), reason="luac no instalado")
def test_generated_lua_compiles(tmp_path):
    path = tmp_path / "Mage.lua"
    path.write_text(render_class("MAGE", [make_spec()]), encoding="utf-8")
    subprocess.run(["luac", "-p", str(path)], check=True)


def test_toc_block_is_replaced_not_appended(tmp_path):
    toc = tmp_path / "EquipHelper.toc"
    toc.write_text(TOC_TEMPLATE, encoding="utf-8")

    update_toc(toc, ["Mage.lua", "DeathKnight.lua"])
    content = toc.read_text(encoding="utf-8")

    assert "Data\\Vieja.lua" not in content
    assert content.index("Data\\DeathKnight.lua") < content.index("Data\\Mage.lua")
    assert "Core.lua" in content and "UI\\MainPanel.lua" in content
    assert content.count("# BEGIN GENERATED DATA") == 1


def test_manifest_always_leads_the_block(tmp_path):
    toc = tmp_path / "EquipHelper.toc"
    toc.write_text(TOC_TEMPLATE, encoding="utf-8")
    update_toc(toc, ["Mage.lua"])
    lines = toc.read_text(encoding="utf-8").splitlines()
    assert lines[lines.index("# BEGIN GENERATED DATA") + 1] == "Data\\Manifest.lua"


def test_toc_without_markers_is_a_loud_error(tmp_path):
    toc = tmp_path / "EquipHelper.toc"
    toc.write_text("## Interface: 120000\nCore.lua\n", encoding="utf-8")
    with pytest.raises(RuntimeError, match="marcadores"):
        update_toc(toc, ["Mage.lua"])
