# Las credenciales de Warcraft Logs se leen de .env si existe, para no tener que
# exportarlas a mano en cada terminal. Ese fichero esta fuera de git.
-include .env
export

# WOW_PATH debe apuntar a la carpeta _retail_ de tu instalacion.
# Ej: make install WOW_PATH="/Applications/World of Warcraft/_retail_"
WOW_PATH ?=
ADDONS_DIR = $(WOW_PATH)/Interface/AddOns
LUACHECK = $(shell command -v luacheck 2>/dev/null || echo $$HOME/.luarocks/bin/luacheck)
BUSTED = $(shell command -v busted 2>/dev/null || echo $$HOME/.luarocks/bin/busted)

.PHONY: lint syntax install uninstall check test test-lua build venv

## Lint del Lua con los globals de la API de WoW declarados en .luacheckrc
lint:
	$(LUACHECK) EquipHelper data-addons

## Comprobacion de sintaxis pura, sin depender de luacheck
syntax:
	@find EquipHelper data-addons -name '*.lua' -exec luac -p {} \; && echo "sintaxis OK"

## Tests de la logica pura del addon, con la API de WoW stubbeada
test-lua:
	$(BUSTED) spec

check: syntax lint test-lua

## Enlaza el addon dentro de WoW para desarrollar sin copiar en cada cambio
install:
	@test -n "$(WOW_PATH)" || (echo "Falta WOW_PATH. Ver cabecera del Makefile." && exit 1)
	@test -d "$(ADDONS_DIR)" || (echo "No existe $(ADDONS_DIR)" && exit 1)
	@rm -f "$(ADDONS_DIR)/EquipHelper"
	ln -s "$(CURDIR)/EquipHelper" "$(ADDONS_DIR)/EquipHelper"
	@# Los datos son paquetes de carga bajo demanda: son addons hermanos y
	@# necesitan su propio enlace dentro de Interface/AddOns.
	@for pkg in data-addons/*/; do \
		name=$$(basename "$$pkg"); \
		rm -f "$(ADDONS_DIR)/$$name"; \
		ln -s "$(CURDIR)/$$pkg" "$(ADDONS_DIR)/$$name"; \
	done
	@echo "Enlazado (addon + $$(ls -d data-addons/*/ | wc -l | tr -d ' ') paquetes de datos)."
	@echo "Reinicia WoW: no basta /reload la primera vez."

uninstall:
	@rm -f "$(ADDONS_DIR)/EquipHelper" "$(ADDONS_DIR)"/EquipHelper_Data_* \
		&& echo "Enlaces eliminados."

VENV = .venv
PY = $(VENV)/bin/python

## Crea el entorno de Python del scraper
venv:
	python3 -m venv $(VENV)
	$(PY) -m pip -q install -r scraper/requirements.txt

## Tests del scraper: corren contra HTML grabado, sin tocar la red
test:
	$(PY) -m pytest scraper/tests -q

## Descarga, valida y regenera los .lua de Data/
build:
	$(PY) -m scraper build

## Regenera desde la cache en disco, util para iterar en el parser
build-offline:
	$(PY) -m scraper build --offline
