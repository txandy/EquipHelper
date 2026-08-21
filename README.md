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

- [x] **Fase 1** — Esqueleto del addon: panel con pestañas Stats / Talentos / Rotación / Equipo, detección de spec y hero talent, datos de ejemplo para Mago Escarcha y Guerrero Furia.
- [ ] **Fase 2** — Scraper de Mythicstats + esquema canónico + emisor de Lua + gate de calidad.
- [ ] **Fase 3** — Workflows de CI (scrape, test, release).
- [ ] **Fase 4** — Archon.gg y la API de Warcraft Logs + merge entre fuentes.
- [ ] **Fase 5** — Wowhead: prioridad de stats y rotación en prosa.
- [ ] **Fase 6** — Tooltips de objeto enriquecidos.

Los datos que trae hoy son **de ejemplo**, escritos a mano: los `itemID`, los
`heroID` y los import strings de talentos son placeholders. El panel lo avisa en
su cabecera mientras `Manifest.placeholder` siga a `true`.

## Desarrollo

```bash
make check                                              # sintaxis + luacheck
make install WOW_PATH="/ruta/a/World of Warcraft/_retail_"   # symlink al cliente
```

`make install` enlaza `EquipHelper/` dentro de `Interface/AddOns`, así que editar
un `.lua` y hacer `/reload` basta. La primera vez hay que reiniciar el cliente
para que descubra el addon.

Dentro del juego: `/eh` o `/equiphelper`.

Requiere `luacheck` sobre Lua 5.1 (el dialecto de WoW):

```bash
brew install luajit luarocks
luarocks --lua-version=5.1 --lua-dir=/opt/homebrew/opt/luajit install luacheck
```

## Fuentes y atribución

Los datos proceden de Mythicstats, Archon.gg, Warcraft Logs y Wowhead. Cada
guía muestra de qué fuente salió y cuándo se descargó. Warcraft Logs se consulta
por su API oficial; el resto son módulos desacoplables, con rate-limit
conservador y caché, y el addon degrada a las demás fuentes si una deja de estar
disponible.
