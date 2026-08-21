"""La fuente de rendimiento se prueba con un cliente falso: sin red ni creds."""

import pytest

from scraper.model import Performance
from scraper.sources import warcraftlogs as wcl


class FakeClient:
    """Responde a las dos consultas del modulo con lo que le pongas."""

    def __init__(self, zones_payload=None, amounts_by_call=None):
        self.zones_payload = zones_payload
        self.amounts_by_call = list(amounts_by_call or [])
        self.calls = []
        self.points_left = 10_000
        self.points_spent = 0

    def query(self, document, variables=None):
        if "expansions" in document:
            return self.zones_payload
        self.calls.append(variables)
        amounts = self.amounts_by_call.pop(0) if self.amounts_by_call else []
        return {"worldData": {"encounter": {"characterRankings": {
            "rankings": [{"amount": a} for a in amounts]}}}}


def zone_payload():
    return {"worldData": {"expansions": [
        {"id": 6, "name": "Vieja", "zones": [
            {"id": 40, "name": "Raid Antigua", "frozen": False,
             "encounters": [{"id": i, "name": f"e{i}"} for i in range(5)]},
        ]},
        {"id": 7, "name": "Midnight", "zones": [
            {"id": 55, "name": "Mythic+ Season 2", "frozen": False,
             "encounters": [{"id": 100 + i, "name": f"d{i}"} for i in range(8)]},
            {"id": 56, "name": "Mythic+ Season 2 (PTR)", "frozen": True,
             "encounters": [{"id": 200, "name": "ptr"}]},
            {"id": 53, "name": "The Venomous Abyss", "frozen": False,
             "encounters": [{"id": 300 + i, "name": f"b{i}"} for i in range(9)]},
            {"id": 510, "name": "The Venomous Abyss Complete Raid", "frozen": False,
             "encounters": [{"id": 400, "name": "todo"}]},
            {"id": 52, "name": "Dummy Dome", "frozen": False,
             "encounters": [{"id": 500 + i, "name": f"m{i}"} for i in range(5)]},
        ]},
    ]}}


def test_only_the_newest_expansion_is_considered():
    zones = wcl.current_zones(FakeClient(zone_payload()))
    assert zones["raid"].name == "The Venomous Abyss"


def test_frozen_zones_are_ignored():
    # Una zona congelada es una temporada cerrada: publicar su meta enganaria.
    zones = wcl.current_zones(FakeClient(zone_payload()))
    assert zones["mplus"].id == 55


def test_single_encounter_raids_are_not_mistaken_for_the_real_one():
    # "Complete Raid" agrega la banda entera en un encuentro; no sirve de muestra.
    zones = wcl.current_zones(FakeClient(zone_payload()))
    assert zones["raid"].id == 53


@pytest.mark.parametrize("class_name,spec_name,expected", [
    ("Death Knight", "Frost", ("DeathKnight", "Frost")),
    ("Hunter", "Beast Mastery", ("Hunter", "BeastMastery")),
    ("Mage", "Frost", ("Mage", "Frost")),
])
def test_names_lose_their_spaces_for_the_api(class_name, spec_name, expected):
    assert wcl._wcl_names(class_name, spec_name) == expected


class FakeSpec:
    class_name = "Mage"
    spec_name = "Frost"
    slug = "frost-mage"


def test_mythic_plus_uses_its_own_difficulty():
    client = FakeClient(amounts_by_call=[[100.0] * 30, [], []])
    zone = wcl.Zone(55, "Mythic+ Season 2", [(1, "a"), (2, "b"), (3, "c")])
    wcl.fetch_performance(client, FakeSpec(), zone, "mplus")
    assert {call["difficulty"] for call in client.calls} == {10}


def test_raid_walks_down_from_mythic_to_a_difficulty_with_logs():
    # Mitico vacio, heroico poblado: debe quedarse con heroico.
    client = FakeClient(amounts_by_call=[[], [], [], [200.0] * 30, [], []])
    zone = wcl.Zone(53, "Abyss", [(1, "a"), (2, "b"), (3, "c")])
    performance = wcl.fetch_performance(client, FakeSpec(), zone, "raid")
    assert performance.difficulty == "Heroic"


def test_a_difficulty_with_too_few_logs_is_skipped():
    # Cuatro registros describen a quien los subio, no a la spec.
    client = FakeClient(amounts_by_call=[[1.0] * 4, [], [], [2.0] * 30, [], []])
    zone = wcl.Zone(53, "Abyss", [(1, "a"), (2, "b"), (3, "c")])
    performance = wcl.fetch_performance(client, FakeSpec(), zone, "raid")
    assert performance.difficulty == "Heroic" and performance.sample == 30


def test_healers_are_found_by_falling_back_to_hps():
    # dps se agota primero: 3 dificultades x 3 encuentros = 9 llamadas vacias.
    client = FakeClient(amounts_by_call=[[]] * 9 + [[50.0] * 30, [], []])
    zone = wcl.Zone(53, "Abyss", [(1, "a"), (2, "b"), (3, "c")])
    performance = wcl.fetch_performance(client, FakeSpec(), zone, "raid")
    assert performance.metric == "hps"


def test_no_logs_at_all_yields_nothing():
    client = FakeClient(amounts_by_call=[[]] * 20)
    zone = wcl.Zone(53, "Abyss", [(1, "a")])
    assert wcl.fetch_performance(client, FakeSpec(), zone, "raid") is None


def _perf(median, metric="dps"):
    return Performance(metric=metric, median=median, top=median, sample=100,
                       difficulty="Heroic", zone="Abyss")


def test_rank_is_by_median_descending():
    results = {"a": _perf(100), "b": _perf(300), "c": _perf(200)}
    wcl.rank_specs(results)
    assert (results["b"].rank, results["c"].rank, results["a"].rank) == (1, 2, 3)
    assert results["b"].out_of == 3


def test_healers_and_damage_are_ranked_separately():
    # Un sanador "por debajo" de un dps seria un numero sin significado.
    results = {"dps1": _perf(300), "dps2": _perf(200), "heal": _perf(50, "hps")}
    wcl.rank_specs(results)
    assert results["heal"].rank == 1 and results["heal"].out_of == 1
    assert results["dps1"].out_of == 2


def test_missing_credentials_raise_a_typed_error(monkeypatch):
    monkeypatch.delenv("WCL_CLIENT_ID", raising=False)
    monkeypatch.delenv("WCL_CLIENT_SECRET", raising=False)
    with pytest.raises(wcl.NoCredentials):
        wcl.Client()


def test_difficulty_labels_are_english():
    # Estas cadenas viajan en los datos hasta el addon, que solo habla ingles.
    assert set(wcl.DIFFICULTY_NAMES.values()) == {"Mythic+", "Mythic", "Heroic", "Normal"}
