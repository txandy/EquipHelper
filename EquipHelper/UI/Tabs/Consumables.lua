local ADDON_NAME, ns = ...

-- Orden de presentacion: primero lo que se pone antes de entrar, luego lo que
-- se pulsa dentro. Es el orden en que el jugador los usa.
local CATEGORY_ORDER = {
	{ key = "FLASK", label = "Frasco" },
	{ key = "FOOD", label = "Comida" },
	{ key = "WEAPON_OIL", label = "Aceite de arma" },
	{ key = "RUNE", label = "Runa de aumento" },
	{ key = "POTION", label = "Pocion de combate" },
	{ key = "HEALTH_POTION", label = "Pocion de vida" },
}

ns.RegisterTab({
	order = 4,
	key = "consumables",
	label = "Consumibles",
	render = function(container, guide)
		ns.UI.Header(container, "Consumibles")

		if not guide.consumables or #guide.consumables == 0 then
			ns.UI.Paragraph(container, "Sin consumibles para esta spec.")
			return
		end

		local byCategory = {}
		for _, entry in ipairs(guide.consumables) do
			byCategory[entry.category] = byCategory[entry.category] or {}
			table.insert(byCategory[entry.category], entry)
		end

		local any = false
		for _, category in ipairs(CATEGORY_ORDER) do
			local entries = byCategory[category.key]
			if entries then
				any = true
				local head = ns.UI.Row(container)
				head.Left:SetText("|cffffd100" .. category.label .. "|r")

				for _, entry in ipairs(entries) do
					local row = ns.UI.Row(container)
					row:SetItem(entry.itemID)
					row.Right:SetText(entry.primary and "recomendado" or "alternativa")
				end
				ns.UI.Spacer(container, 4)
			end
		end

		if not any then
			ns.UI.Paragraph(container, "Sin consumibles para esta spec.")
			return
		end

		ns.UI.Spacer(container)
		ns.UI.Paragraph(container,
			"Las alternativas solo aparecen cuando la guia las da en la misma frase "
			.. "que la recomendacion. Si una categoria no sale, es que su guia no la "
			.. "publica en un formato que se pueda extraer sin adivinar.")
	end,
})
