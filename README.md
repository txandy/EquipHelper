# EquipHelper

Addon de World of Warcraft (retail) que muestra in-game prioridad de stats, builds
de talentos, rotación y BiS para tu spec y hero talent — con los datos agregados
automáticamente desde varias fuentes en vez de una sola lista curada a mano.

## Por qué está partido en dos

Los addons de WoW **no tienen acceso a red**. Todo dato externo tiene que estar
compilado a tablas Lua antes de empaquetar. Por eso el repo tiene dos mitades que
solo se tocan a través de ficheros generados:

| Mitad | Qué es | Corre en |
|-------|--------|----------|
| `scraper/` | El bot: descarga, normaliza, valida y emite Lua | GitHub Actions (cron diario) |
| `EquipHelper/` | El addon: solo lee tablas, nunca sabe de dónde vinieron | El cliente de WoW |

`data/` guarda el JSON intermedio versionado, para que un scrape que se rompe
aparezca como un diff feo en un PR y no como un addon corrupto en producción.

## Estado

- [x] **Fase 1** — Esqueleto del addon: panel con pestañas Stats / Talentos / Rotación / Equipo, detección de spec y hero talent.
- [x] **Fase 2** — Scraper de Mythicstats + esquema canónico + emisor de Lua + gate de calidad. **40 specs cubiertas.**
- [x] **Fase 3** — Workflows de CI (scrape diario, test, release).
- [x] **Fase 4** — API oficial de Warcraft Logs: rendimiento medido por spec. **Archon.gg descartado**, ver abajo.
- [x] **Fase 5** — Wowhead: consumibles (frasco, comida, pociones, aceite, runa). **40 de 40 specs.**
- [x] **Fase 6** — Tooltips de objeto enriquecidos.

Los datos son reales: **40 specs, 58 guías** (spec × hero talent × M+/banda),
con prioridad de stats, builds de talentos importables, BiS por ranura, gemas,
encantamientos, consumibles y rendimiento medido.

Cuatro pestañas: **Stats · Talentos · Equipo · Consumibles**.

### Por qué no está Archon.gg

Estaba en el plan y se descartó al inspeccionarlo: publica las builds como IDs
de nodo (`selectedNodes`), no como import strings. Convertirlos exigiría
reimplementar la codificación de loadouts de Blizzard, que cambia cada parche.
Lo demás que ofrece —popularidad, DPS, equipo— ya lo dan Mythicstats y la API
oficial de Warcraft Logs, de donde Archon deriva sus propios datos.

## Desarrollo

```bash
make venv                                               # entorno de Python del scraper
make test                                               # tests del scraper (sin red)
make check                                              # sintaxis + luacheck
make build                                              # descarga, valida y regenera Data/*.lua
make install WOW_PATH="/ruta/a/World of Warcraft/_retail_"   # symlink al cliente
```

`make build` no emite nada si los datos no pasan la puerta de calidad: por
debajo del 90% de specs cubiertas, con un import string truncado o con un
`itemID` implausible, falla en vez de publicar.

`make install` enlaza `EquipHelper/` dentro de `Interface/AddOns`, así que editar
un `.lua` y hacer `/reload` basta. La primera vez hay que reiniciar el cliente
para que descubra el addon.

Dentro del juego: `/eh` o `/equiphelper`.

Requiere `luacheck` sobre Lua 5.1 (el dialecto de WoW):

```bash
brew install luajit luarocks
luarocks --lua-version=5.1 --lua-dir=/opt/homebrew/opt/luajit install luacheck
```

## Credenciales

Warcraft Logs necesita una app OAuth (créala en
[warcraftlogs.com/api/clients](https://www.warcraftlogs.com/api/clients)):

```bash
export WCL_CLIENT_ID=...
export WCL_CLIENT_SECRET=...
```

En local van en un `.env` que git ignora; en CI, como secrets del repo con esos
mismos nombres. Si faltan, `make build` sigue adelante y solo omite el
rendimiento.

## Fuentes y atribución

| Fuente | Qué aporta | Cómo se accede |
|--------|-----------|----------------|
| [Mythicstats](https://mythicstats.com) | Builds de talentos importables, BiS, gemas, encantes, prioridad de stats | HTML renderizado en servidor |
| [Warcraft Logs](https://www.warcraftlogs.com) | Rendimiento medido: mediana del top 100 y puesto por rol | API oficial GraphQL con OAuth |
| [Wowhead](https://www.wowhead.com) | Consumibles: frasco, comida, pociones, aceite de arma, runa de aumento | Guía en BBCode dentro de la página |

Cada guía muestra de qué fuente salió y cuándo se descargó. Warcraft Logs se
consulta por su API oficial; los otros dos son módulos desacoplables, con
rate-limit de una petición por segundo, caché en disco y User-Agent
identificable. Si una fuente deja de estar disponible, el build avisa y publica
sin ella en vez de fallar.

### Por qué no está la rotación

Se implementó y se quitó. Wowhead separa la rotación con etiquetas que cada
autor se inventa (`spm`, `DB&AoE`, `slayer-st`), así que atribuirla a su hero
talent exigía votar por los IDs de hechizo de cada lista, y aun así cinco guías
de sanador la explican en prosa sin listas que extraer: 35 de 40 specs.

Los consumibles salen de una página con una cabecera por categoría y llegan a
40 de 40. Menos código, sin heurísticas, y cobertura completa.

### Qué se publica de cada consumible

Solo los ítems que la guía nombra en la misma frase que la recomendación, o en
su lista si la sección empieza con prosa. El texto sigue después con salvedades
que citan otros ítems ("si llevas *tal abalorio*, la poción empeora"), y
tragárselos metería un abalorio en la lista de pociones. Se pierde alguna
alternativa que el autor menciona más abajo; a cambio, lo que se publica nunca
está mal.
