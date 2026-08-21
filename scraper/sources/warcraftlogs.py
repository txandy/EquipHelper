"""Fuente: API oficial de Warcraft Logs (GraphQL v2).

Es la unica fuente del proyecto con API publica y autenticada, asi que se usa
para lo que ninguna otra da limpio: cuanto rinde de verdad una spec. Mythicstats
y Archon dicen que juega la gente; esto dice como les va.

Lo que se guarda por spec y tipo de contenido es la mediana del top 100 y su
puesto entre las 40 specs. La mediana y no el maximo: el mejor parse del mundo
mide al jugador, la mediana del top mide a la spec.

Credenciales por entorno (WCL_CLIENT_ID / WCL_CLIENT_SECRET). Sin ellas el
modulo se desactiva solo y el build sigue sin esta fuente.
"""

from __future__ import annotations

import os
import statistics
from dataclasses import dataclass

import requests

from scraper.model import Performance

SOURCE_KEY = "warcraftlogs"
TOKEN_URL = "https://www.warcraftlogs.com/oauth/token"
API_URL = "https://www.warcraftlogs.com/api/v2/client"

# Las dificultades no son las mismas en banda que en mitica+. En banda se prueba
# de mas dificil a mas facil, porque al principio de una temporada la dificultad
# mitica todavia no tiene registros; en mitica+ solo existe un nivel.
# En ingles porque este texto viaja en los datos hasta la interfaz del addon,
# que es internacional. Todo lo que se emite a Lua es un ID o texto en ingles.
DIFFICULTY_NAMES = {10: "Mythic+", 5: "Mythic", 4: "Heroic", 3: "Normal"}
DIFFICULTIES = {
    "raid": (5, 4, 3),
    "mplus": (10,),
}

# Cuantos encuentros se muestrean por zona. Uno solo lo decide un jefe raro;
# todos agotarian el limite de puntos de la API.
SAMPLE_SIZE = 3

# Una dificultad con cuatro logs no dice nada de la spec, solo de quien los subio.
# Si no llega a esto, se baja a la dificultad siguiente en vez de publicar ruido.
MIN_SAMPLE = 20

# Margen de seguridad: por debajo de esto se para y se publica lo que haya.
POINTS_RESERVE = 300


class NoCredentials(RuntimeError):
    pass


class Client:
    def __init__(self, client_id: str | None = None, client_secret: str | None = None):
        self.client_id = client_id or os.environ.get("WCL_CLIENT_ID")
        self.client_secret = client_secret or os.environ.get("WCL_CLIENT_SECRET")
        if not self.client_id or not self.client_secret:
            raise NoCredentials(
                "faltan WCL_CLIENT_ID / WCL_CLIENT_SECRET; se omite Warcraft Logs"
            )

        self.session = requests.Session()
        self._token: str | None = None
        self.points_spent = 0.0
        self.points_limit = 3600.0

    def _authenticate(self) -> str:
        if self._token:
            return self._token

        response = self.session.post(
            TOKEN_URL,
            auth=(self.client_id, self.client_secret),
            data={"grant_type": "client_credentials"},
            timeout=30,
        )
        response.raise_for_status()
        self._token = response.json()["access_token"]
        return self._token

    def query(self, document: str, variables: dict | None = None) -> dict:
        response = self.session.post(
            API_URL,
            json={"query": document, "variables": variables or {}},
            headers={"Authorization": f"Bearer {self._authenticate()}"},
            timeout=60,
        )
        response.raise_for_status()
        payload = response.json()

        if payload.get("errors"):
            raise RuntimeError(f"warcraftlogs: {payload['errors']}")
        return payload["data"]

    @property
    def points_left(self) -> float:
        return self.points_limit - self.points_spent

    def refresh_budget(self) -> None:
        data = self.query("{ rateLimitData { limitPerHour pointsSpentThisHour } }")
        self.points_limit = float(data["rateLimitData"]["limitPerHour"])
        self.points_spent = float(data["rateLimitData"]["pointsSpentThisHour"])


ZONES_QUERY = """
{
  worldData {
    expansions {
      id
      name
      zones { id name frozen encounters { id name } }
    }
  }
}
"""

RANKINGS_QUERY = """
query($encounter: Int!, $className: String!, $specName: String!,
      $metric: CharacterRankingMetricType!, $difficulty: Int!) {
  worldData {
    encounter(id: $encounter) {
      characterRankings(className: $className, specName: $specName,
                        metric: $metric, difficulty: $difficulty, page: 1)
    }
  }
}
"""


@dataclass
class Zone:
    id: int
    name: str
    encounters: list[tuple[int, str]]


def current_zones(client: Client) -> dict[str, Zone]:
    """Zona activa de banda y de mitica+ de la expansion mas reciente.

    Se eligen por su marca `frozen`: una zona congelada es historico cerrado, y
    publicar el rendimiento de una temporada terminada seria enganoso.
    """
    data = client.query(ZONES_QUERY)
    expansion = max(data["worldData"]["expansions"], key=lambda e: e["id"])

    live = [z for z in expansion["zones"] if not z["frozen"] and z["encounters"]]
    raid = None
    mplus = None

    for zone in live:
        parsed = Zone(zone["id"], zone["name"],
                      [(e["id"], e["name"]) for e in zone["encounters"]])
        if "mythic+" in zone["name"].lower():
            if mplus is None or zone["id"] > mplus.id:
                mplus = parsed
        elif len(parsed.encounters) >= 5 and (raid is None or zone["id"] > raid.id):
            # Una banda de verdad tiene varios jefes; asi se descartan los
            # "Complete Raid" de un solo encuentro y los maniquies de pruebas.
            raid = parsed

    zones: dict[str, Zone] = {}
    if mplus:
        zones["mplus"] = mplus
    if raid:
        zones["raid"] = raid
    return zones


def _wcl_names(class_name: str, spec_name: str) -> tuple[str, str]:
    """La API no acepta espacios: 'Death Knight' / 'Beast Mastery' -> sin ellos."""
    return class_name.replace(" ", ""), spec_name.replace(" ", "")


def _rankings(client: Client, encounter_id: int, class_name: str, spec_name: str,
              metric: str, difficulty: int) -> list[float]:
    data = client.query(RANKINGS_QUERY, {
        "encounter": encounter_id,
        "className": class_name,
        "specName": spec_name,
        "metric": metric,
        "difficulty": difficulty,
    })
    payload = data["worldData"]["encounter"]["characterRankings"] or {}
    rankings = payload.get("rankings") or []
    return [float(entry["amount"]) for entry in rankings if entry.get("amount")]


def fetch_performance(client: Client, spec, zone: Zone, content: str) -> Performance | None:
    """Rendimiento de una spec en una zona, probando metrica y dificultad.

    El rol no se declara en ningun sitio del que tiremos, asi que se deduce:
    si una spec no tiene rankings de dps, es que cura.
    """
    class_name, spec_name = _wcl_names(spec.class_name, spec.spec_name)
    encounters = zone.encounters[:SAMPLE_SIZE]

    for metric in ("dps", "hps"):
        for level in DIFFICULTIES.get(content, (4,)):
            amounts: list[float] = []
            for encounter_id, _ in encounters:
                if client.points_left < POINTS_RESERVE:
                    return None
                amounts.extend(_rankings(client, encounter_id, class_name,
                                         spec_name, metric, level))
                client.points_spent += 5  # estimacion; se corrige al refrescar

            if len(amounts) >= MIN_SAMPLE:
                label = DIFFICULTY_NAMES.get(level, str(level))
                return Performance(
                    metric=metric,
                    median=round(statistics.median(amounts), 1),
                    top=round(max(amounts), 1),
                    sample=len(amounts),
                    difficulty=label,
                    zone=zone.name,
                )

    return None


def rank_specs(results: dict[str, Performance]) -> None:
    """Anade el puesto de cada spec, comparando solo contra su mismo rol.

    Ordenar un sanador contra un dps no significa nada; el numero seria ruido
    con aspecto de dato.
    """
    by_metric: dict[str, list[str]] = {}
    for slug, performance in results.items():
        by_metric.setdefault(performance.metric, []).append(slug)

    for metric, slugs in by_metric.items():
        ordered = sorted(slugs, key=lambda s: results[s].median, reverse=True)
        for position, slug in enumerate(ordered, start=1):
            results[slug].rank = position
            results[slug].out_of = len(ordered)
