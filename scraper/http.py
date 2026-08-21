"""Cliente HTTP compartido por todas las fuentes.

Las fuentes que no tienen API publica se consultan con cuidado deliberado:
una peticion por segundo como maximo, cache en disco para no repetir la misma
descarga entre ejecuciones, y un User-Agent que dice quienes somos y donde
reclamar. Si una fuente nos bloquea, queremos enterarnos por un 403 claro, no
que nos confundan con un scraper anonimo.
"""

from __future__ import annotations

import hashlib
import time
from pathlib import Path

import requests

USER_AGENT = "EquipHelper/0.1 (+https://github.com/txandy/EquipHelper)"
CACHE_DIR = Path(__file__).parent / ".httpcache"
MIN_INTERVAL = 1.0       # segundos entre peticiones al mismo host
CACHE_TTL = 6 * 3600     # una descarga vale 6 horas


class FetchError(RuntimeError):
    pass


class Fetcher:
    def __init__(self, cache_dir: Path | None = None, offline: bool = False):
        self.cache_dir = cache_dir or CACHE_DIR
        self.cache_dir.mkdir(parents=True, exist_ok=True)
        self.offline = offline
        self.session = requests.Session()
        self.session.headers["User-Agent"] = USER_AGENT
        self._last_request: dict[str, float] = {}

    def _cache_path(self, url: str) -> Path:
        digest = hashlib.sha256(url.encode()).hexdigest()[:24]
        return self.cache_dir / f"{digest}.cache"

    def _throttle(self, url: str) -> None:
        host = requests.utils.urlparse(url).netloc
        last = self._last_request.get(host)
        if last is not None:
            wait = MIN_INTERVAL - (time.monotonic() - last)
            if wait > 0:
                time.sleep(wait)
        self._last_request[host] = time.monotonic()

    def get(self, url: str, *, ttl: int = CACHE_TTL) -> str:
        cached = self._cache_path(url)
        if cached.exists() and (time.time() - cached.stat().st_mtime) < ttl:
            return cached.read_text(encoding="utf-8")

        if self.offline:
            if cached.exists():
                return cached.read_text(encoding="utf-8")
            raise FetchError(f"modo offline y sin cache para {url}")

        self._throttle(url)

        last_error: Exception | None = None
        for attempt in range(3):
            try:
                response = self.session.get(url, timeout=30)
                if response.status_code == 429:
                    # Backoff explicito: la fuente nos esta pidiendo que paremos.
                    time.sleep(5 * (attempt + 1))
                    continue
                response.raise_for_status()
                cached.write_text(response.text, encoding="utf-8")
                return response.text
            except requests.RequestException as exc:
                last_error = exc
                time.sleep(2 ** attempt)

        raise FetchError(f"no se pudo descargar {url}: {last_error}")
