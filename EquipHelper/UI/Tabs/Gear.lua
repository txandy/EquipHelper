local ADDON_NAME, ns = ...

-- Orden de presentacion y etiqueta localizada por el cliente.
local SLOT_ORDER = {
	{ key = "HEAD", label = HEADSLOT },
	{ key = "NECK", label = NECKSLOT },
	{ key = "SHOULDER", label = SHOULDERSLOT },
	{ key = "BACK", label = BACKSLOT },
	{ key = "CHEST", label = CHESTSLOT },
	{ key = "WRIST", label = WRISTSLOT },
	{ key = "HANDS", label = HANDSSLOT },
	{ key = "WAIST", label = WAISTSLOT },
	{ key = "LEGS", label = LEGSSLOT },
	{ key = "FEET", label = FEETSLOT },
	{ key = "FINGER1", label = FINGER0SLOT },
	{ key = "FINGER2", label = FINGER1SLOT },
	{ key = "TRINKET1", label = TRINKET0SLOT },
	{ key = "TRINKET2", label = TRINKET1SLOT },
	{ key = "MAINHAND", label = MAINHANDSLOT },
	{ key = "OFFHAND", label = SECONDARYHANDSLOT },
}

local function RenderItemList(container, entries)
	for _, entry in ipairs(entries) do
		local row = ns.UI.Row(container)
		row:SetItem(entry.itemID)

		local right = {}
		if entry.usagePct then table.insert(right, ("%d%%"):format(entry.usagePct)) end
		if entry.sourceHint then table.insert(right, entry.sourceHint) end
		if entry.note then table.insert(right, entry.note) end
		row.Right:SetText(table.concat(right, "  |  "))
	end
end

ns.RegisterTab({
	order = 4,
	key = "gear",
	label = "Equipo",
	render = function(container, guide)
		ns.UI.Header(container, "Mejor en ranura")

		local any = false
		for _, slot in ipairs(SLOT_ORDER) do
			local entries = guide.gear and guide.gear[slot.key]
			if entries and #entries > 0 then
				any = true
				local head = ns.UI.Row(container)
				head.Left:SetText("|cffffd100" .. (slot.label or slot.key) .. "|r")
				RenderItemList(container, entries)
				ns.UI.Spacer(container, 4)
			end
		end

		if not any then
			ns.UI.Paragraph(container, "Sin datos de equipo para esta combinacion.")
		end

		if guide.gems and #guide.gems > 0 then
			ns.UI.Spacer(container)
			ns.UI.Header(container, "Gemas")
			RenderItemList(container, guide.gems)
		end

		if guide.enchants and #guide.enchants > 0 then
			ns.UI.Spacer(container)
			ns.UI.Header(container, "Encantamientos")
			for _, entry in ipairs(guide.enchants) do
				local row = ns.UI.Row(container)
				row:SetItem(entry.itemID)
				local slotLabel = entry.slot
				for _, slot in ipairs(SLOT_ORDER) do
					if slot.key == entry.slot then slotLabel = slot.label or slot.key end
				end
				row.Right:SetText(("%s%s"):format(
					slotLabel or "",
					entry.usagePct and ("  |  %d%%"):format(entry.usagePct) or ""))
			end
		end

		-- Atribucion: obligatoria por los terminos de las fuentes y honesta con el usuario.
		if guide.provenance then
			ns.UI.Spacer(container)
			local names = {}
			for key, info in pairs(guide.provenance) do
				table.insert(names, ("%s (%s)"):format(key, info.fetchedAt or "?"))
			end
			table.sort(names)
			ns.UI.Paragraph(container, "|cff888888Fuentes: " .. table.concat(names, ", ") .. "|r")
		end
	end,
})
