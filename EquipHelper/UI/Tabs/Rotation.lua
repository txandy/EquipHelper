local ADDON_NAME, ns = ...

local MODES = {
	{ key = "st", label = "Objetivo unico" },
	{ key = "aoe", label = "Multiples objetivos" },
}

-- Las condiciones vienen con los hechizos que mencionan como tokens {12345},
-- porque guardar el nombre en ingles los dejaria sin traducir. Aqui se cambian
-- por el nombre que el cliente ya conoce, en el idioma del jugador.
local function ResolveSpellNames(note)
	return (note:gsub("{(%d+)}", function(id)
		local info = C_Spell.GetSpellInfo(tonumber(id))
		return info and ("|cff71d5ff" .. info.name .. "|r") or ("hechizo " .. id)
	end))
end

local function RenderMode(container, entries, label)
	if #entries == 0 then return end

	ns.UI.Header(container, label)
	for i, entry in ipairs(entries) do
		local row = ns.UI.Row(container)
		row:SetSpell(entry.spellID)
		row.Left:SetText(("%d. %s"):format(i, row.Left:GetText()))
		if entry.note then
			-- La condicion va debajo y no a la derecha: suele ser larga y ahi
			-- se lee entera en vez de recortarse.
			ns.UI.Paragraph(container, "      |cffaaaaaa" .. ResolveSpellNames(entry.note) .. "|r")
		end
	end
	ns.UI.Spacer(container)
end

ns.RegisterTab({
	order = 3,
	key = "rotation",
	label = "Rotacion",
	render = function(container, guide)
		if not guide.rotation or #guide.rotation == 0 then
			ns.UI.Header(container, "Prioridad de habilidades")
			ns.UI.Paragraph(container, "Sin rotacion para esta combinacion.")
			return
		end

		for _, mode in ipairs(MODES) do
			local entries = {}
			for _, entry in ipairs(guide.rotation) do
				if (entry.mode or "st") == mode.key then
					table.insert(entries, entry)
				end
			end
			RenderMode(container, entries, mode.label)
		end

		ns.UI.Paragraph(container,
			"Lista de prioridad, no una secuencia fija: lanza la primera habilidad "
			.. "de la lista cuya condicion se cumpla.")
	end,
})
