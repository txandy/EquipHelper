local ADDON_NAME, ns = ...

-- Orden de presentacion: primero lo que se pone antes de entrar, luego lo que
-- se pulsa dentro. Es el orden en que el jugador los usa.
local CATEGORY_ORDER = {
	{ key = "FLASK", label = "Flask" },
	{ key = "FOOD", label = "Food" },
	{ key = "WEAPON_OIL", label = "Weapon oil" },
	{ key = "RUNE", label = "Augment rune" },
	{ key = "POTION", label = "Combat potion" },
	{ key = "HEALTH_POTION", label = "Health potion" },
}

ns.RegisterTab({
	order = 4,
	key = "consumables",
	label = "Consumables",
	render = function(container, guide)
		ns.UI.Header(container, "Consumables")

		if not guide.consumables or #guide.consumables == 0 then
			ns.UI.Paragraph(container, "No consumables for this spec.")
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
					row.Right:SetText(entry.primary and "recommended" or "alternative")
				end
				ns.UI.Spacer(container, 4)
			end
		end

		if not any then
			ns.UI.Paragraph(container, "No consumables for this spec.")
			return
		end

		ns.UI.Spacer(container)
		ns.UI.Paragraph(container,
			"Alternatives only show when the guide names them in the same sentence "
			.. "as the recommendation. A missing category means its guide does not "
			.. "publish it in a form that can be read without guessing.")
	end,
})
