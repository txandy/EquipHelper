-- ns.GetSection es el corazon del selector de fuentes: decide que ve el jugador
-- cuando la web que eligio no publica algo. Se prueba fuera del cliente porque
-- es logica pura, sin un solo frame de por medio.

local stub = require("spec.wow_stub")

local function guide(views)
	return { views = views }
end

local function view(sections)
	local out = { source = "x", url = "u", fetchedAt = "2026-08-21" }
	for key, value in pairs(sections) do out[key] = value end
	return out
end

describe("ns.GetSection", function()
	local ns

	before_each(function()
		ns = stub.loadCore()
		ns.state.source = "mythicstats"
	end)

	it("devuelve la seccion de la fuente elegida sin marcarla como respaldo", function()
		local g = guide({ mythicstats = view({ gear = { HEAD = {} } }) })
		local data, source, fallback = ns.GetSection(g, "gear")

		assert.is_table(data)
		assert.equals("mythicstats", source)
		assert.is_false(fallback)
	end)

	it("cae a otra fuente y lo marca cuando la elegida no la publica", function()
		local g = guide({
			mythicstats = view({ gear = { HEAD = {} } }),
			wowhead = view({ consumables = { { itemID = 1 } } }),
		})
		local data, source, fallback = ns.GetSection(g, "consumables")

		assert.equals(1, #data)
		assert.equals("wowhead", source)
		assert.is_true(fallback)
	end)

	it("respeta el orden de fuentes al elegir el respaldo", function()
		ns.state.source = "wowhead"
		local g = guide({
			wowhead = view({ consumables = {} }),
			mythicstats = view({ gear = { HEAD = { { itemID = 1 } } } }),
			icyveins = view({ gear = { HEAD = { { itemID = 2 } } } }),
		})
		local _, source = ns.GetSection(g, "gear")

		-- mythicstats va antes que icyveins en ns.SOURCE_ORDER.
		assert.equals("mythicstats", source)
	end)

	it("devuelve nada cuando ninguna fuente la publica", function()
		local g = guide({ mythicstats = view({ gear = { HEAD = {} } }) })
		local data, source, fallback = ns.GetSection(g, "consumables")

		assert.is_nil(data)
		assert.is_nil(source)
		assert.is_false(fallback)
	end)

	it("trata una tabla vacia como ausente y no como dato", function()
		-- Una seccion que existe pero esta vacia dejaria la pestana en blanco
		-- sin decir por que: cuenta como hueco y dispara el respaldo.
		local g = guide({
			mythicstats = view({ gems = {} }),
			icyveins = view({ gems = { { itemID = 9 } } }),
		})
		local data, source, fallback = ns.GetSection(g, "gems")

		assert.equals(9, data[1].itemID)
		assert.equals("icyveins", source)
		assert.is_true(fallback)
	end)

	it("no revienta con una guia sin vistas", function()
		assert.is_nil(ns.GetSection(guide({}), "gear"))
		assert.is_nil(ns.GetSection(nil, "gear"))
	end)
end)

describe("ns.GetSources", function()
	local ns

	before_each(function()
		ns = stub.loadCore()
	end)

	it("lista solo las fuentes presentes, en orden estable", function()
		local g = guide({
			wowhead = view({ consumables = { 1 } }),
			mythicstats = view({ gear = {} }),
		})
		local sources = ns.GetSources(g)

		assert.equals(2, #sources)
		assert.equals("mythicstats", sources[1].key)
		assert.equals("Wowhead", sources[2].label)
	end)

	it("devuelve una lista vacia si no hay guia", function()
		assert.equals(0, #ns.GetSources(nil))
	end)
end)
