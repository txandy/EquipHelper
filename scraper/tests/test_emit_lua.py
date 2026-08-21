"""El Lua generado tiene que ser valido, estable y sin logica."""

import subprocess
import shutil

import pytest

from scraper.emit_lua import (
    lua_value, render_class, update_pkgmeta, update_toc, write_data_package,
)
from scraper.model import GearEntry, Guide, SourceView, SpecGuides, StatEntry, TalentBuild

TOC_TEMPLATE = """## Interface: 120000

Core.lua

# BEGIN GENERATED DATA
Data\\Vieja.lua
# END GENERATED DATA

UI\\MainPanel.lua
"""


def make_spec():
    view = SourceView(
        source="mythicstats",
        url="https://mythicstats.com/spec/frost-mage",
        fetched_at="2026-08-21",
        stat_priority=[StatEntry("HASTE", 900, 40.0, 1.0)],
        talent_builds=[TalentBuild("Spellslinger #1", "C" + "A" * 100, "mythicstats",
                                   "https://mythicstats.com/spec/frost-mage", 40, 3.7)],
        gear={"TRINKET1": [GearEntry(249343, 75.0, drop_source="Ula'tek",
                                     gem_id=240908, enchant_id=244007)]},
    )
    guide = Guide(content="mplus", hero_id=40, hero_name="Spellslinger",
                  views={"mythicstats": view})
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


@pytest.mark.skipif(not shutil.which("luac"), reason="luac no instalado")
def test_generated_lua_compiles(tmp_path):
    path = tmp_path / "Mage.lua"
    path.write_text(render_class("MAGE", [make_spec()]), encoding="utf-8")
    subprocess.run(["luac", "-p", str(path)], check=True)


def test_toc_block_is_replaced_not_appended(tmp_path):
    toc = tmp_path / "EquipHelper.toc"
    toc.write_text(TOC_TEMPLATE, encoding="utf-8")

    update_toc(toc, ["Data\\Manifest.lua"])
    content = toc.read_text(encoding="utf-8")

    assert "Data\\Vieja.lua" not in content
    assert "Core.lua" in content and "UI\\MainPanel.lua" in content
    assert content.count("# BEGIN GENERATED DATA") == 1


def test_the_main_addon_only_loads_the_manifest(tmp_path):
    # Todo lo demas llega por C_AddOns.LoadAddOn al abrir esa clase; listarlo
    # en el .toc lo cargaria al iniciar sesion y anularia la carga diferida.
    toc = tmp_path / "EquipHelper.toc"
    toc.write_text(TOC_TEMPLATE, encoding="utf-8")
    update_toc(toc, ["Data\\Manifest.lua"])
    lines = toc.read_text(encoding="utf-8").splitlines()
    begin = lines.index("# BEGIN GENERATED DATA")
    assert lines[begin + 1:lines.index("# END GENERATED DATA")] == ["Data\\Manifest.lua"]


def test_toc_without_markers_is_a_loud_error(tmp_path):
    toc = tmp_path / "EquipHelper.toc"
    toc.write_text("## Interface: 120000\nCore.lua\n", encoding="utf-8")
    with pytest.raises(RuntimeError, match="marcadores"):
        update_toc(toc, ["Mage.lua"])


# --- Vistas por fuente -----------------------------------------------------

def test_each_source_becomes_its_own_view():
    rendered = render_class("MAGE", [make_spec()])
    assert "views = {" in rendered
    assert 'mythicstats = {' in rendered


def test_the_icy_veins_extras_reach_the_lua():
    # De que jefe cae la pieza, y con que gema y encante va. Es lo que
    # justifica tener una segunda fuente, asi que no puede quedarse por el
    # camino en el emisor.
    rendered = render_class("MAGE", [make_spec()])
    assert 'dropSource = "Ula\'tek"' in rendered
    assert "gemID = 240908" in rendered
    assert "enchantID = 244007" in rendered


def test_hero_specific_is_only_emitted_when_false():
    # En Lua nil ya significa "si"; emitir la clave en el caso comun solo
    # engorda 40 ficheros.
    spec = make_spec()
    assert "heroSpecific" not in render_class("MAGE", [spec])

    spec.guides[0].views["mythicstats"].talent_builds[0].hero_specific = False
    assert "heroSpecific = false" in render_class("MAGE", [spec])


def test_performance_stays_outside_the_views():
    # Es una medicion, no la opinion de una web: no debe cambiar al cambiar
    # de fuente en el desplegable.
    from scraper.model import Performance

    spec = make_spec()
    spec.guides[0].performance = Performance("dps", 1.0, 2.0, 100, "Heroic", "Abyss", 3, 40)
    rendered = render_class("MAGE", [spec])
    assert rendered.index("performance = {") < rendered.index("views = {")


# --- Paquetes de carga bajo demanda ---------------------------------------

PKGMETA_TEMPLATE = """package-as: EquipHelper

move-folders:
  EquipHelper/EquipHelper: EquipHelper
  # BEGIN GENERATED DATA PACKAGES
  EquipHelper/data-addons/EquipHelper_Data_Vieja: EquipHelper_Data_Vieja
  # END GENERATED DATA PACKAGES

ignore:
  - scraper
"""


def test_a_data_package_is_self_contained(tmp_path):
    folder = write_data_package(tmp_path, "MAGE", "Mage", [make_spec()])
    toc = (folder / "EquipHelper_Data_MAGE.toc").read_text(encoding="utf-8")

    assert folder.name == "EquipHelper_Data_MAGE"
    assert "## LoadOnDemand: 1" in toc
    # Sin la dependencia el paquete podria cargarse sin nadie que lo registre.
    assert "## Dependencies: EquipHelper" in toc
    assert (folder / "Data.lua").exists()


def test_data_packages_register_through_the_global(tmp_path):
    # Un addon hermano recibe su propio namespace por varargs, asi que no puede
    # tocar `ns`: la unica via es la funcion global del addon principal.
    folder = write_data_package(tmp_path, "MAGE", "Mage", [make_spec()])
    data = (folder / "Data.lua").read_text(encoding="utf-8")

    assert data.startswith("-- GENERATED FILE")
    assert 'EquipHelper_RegisterClassData("MAGE"' in data
    assert "local ADDON_NAME, ns = ..." not in data


def test_pkgmeta_block_is_regenerated(tmp_path):
    pkgmeta = tmp_path / ".pkgmeta"
    pkgmeta.write_text(PKGMETA_TEMPLATE, encoding="utf-8")

    update_pkgmeta(pkgmeta, ["MAGE", "DEATHKNIGHT"])
    content = pkgmeta.read_text(encoding="utf-8")

    assert "EquipHelper_Data_Vieja" not in content
    assert "EquipHelper/data-addons/EquipHelper_Data_MAGE: EquipHelper_Data_MAGE" in content
    # La linea del addon principal no se toca.
    assert "EquipHelper/EquipHelper: EquipHelper" in content


def test_pkgmeta_without_markers_is_a_loud_error(tmp_path):
    pkgmeta = tmp_path / ".pkgmeta"
    pkgmeta.write_text("package-as: EquipHelper\n", encoding="utf-8")
    with pytest.raises(RuntimeError, match="marcadores"):
        update_pkgmeta(pkgmeta, ["MAGE"])


def test_the_manifest_lists_every_class_for_the_dropdown(tmp_path):
    from datetime import date

    from scraper.emit_lua import render_manifest

    rendered = render_manifest(date(2026, 8, 21), [], {}, ["MAGE", "DEATHKNIGHT"])
    # Con carga diferida ns.data solo tiene las clases ya abiertas; sin esta
    # lista el desplegable de clase saldria a medias.
    assert 'classes = {\n\t\t"DEATHKNIGHT",\n\t\t"MAGE",\n\t}' in rendered
