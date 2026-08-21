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
		-- dropSource es de Icy Veins y sourceHint de Mythicstats: ambos dicen de
		-- donde sale la pieza, pero solo uno viene relleno cada vez.
		local from = entry.dropSource or entry.sourceHint
		if from then table.insert(right, from) end
		if entry.note then table.insert(right, entry.note) end
		row.Right:SetText(table.concat(right, "  |  "))

		-- La gema y el encante de esa pieza concreta, cuando la fuente los da.
		-- Es la ventaja real de Icy Veins sobre un ranking de uso, asi que se
		-- ve en la fila y no escondido en un tooltip.
		for _, extra in ipairs({
			{ id = entry.gemID, label = "Gem" },
			{ id = entry.enchantID, label = "Enchant" },
		}) do
			if extra.id then
				local sub = ns.UI.Row(container)
				sub:SetItem(extra.id)
				sub.Left:SetText("   |cff888888" .. extra.label .. ":|r " .. sub.Left:GetText())
			end
		end
	end
end

ns.RegisterTab({
	order = 3,
	key = "gear",
	label = "Gear",
	render = function(container, guide)
		ns.UI.Header(container, "Best in slot")

		local gear, gearSource, gearFallback = ns.GetSection(guide, "gear")
		ns.UI.SourceNote(container, "gear", gearSource, gearFallback)

		local any = false
		for _, slot in ipairs(SLOT_ORDER) do
			local entries = gear and gear[slot.key]
			if entries and #entries > 0 then
				any = true
				local head = ns.UI.Row(container)
				head.Left:SetText("|cffffd100" .. (slot.label or slot.key) .. "|r")
				RenderItemList(container, entries)
				ns.UI.Spacer(container, 4)
			end
		end

		if not any then
			ns.UI.Paragraph(container, "No gear data for this combination.")
		end

		-- El porque escrito de los abalorios. Un ranking dice cual lleva mas
		-- gente; esto dice en que situacion sirve cada uno.
		local active = guide.views and guide.views[ns.state.source]
		if active and active.notes and active.notes.trinkets then
			ns.UI.Spacer(container)
			ns.UI.Header(container, "On trinkets")
			ns.UI.Paragraph(container, active.notes.trinkets)
		end

		local gems, gemsSource, gemsFallback = ns.GetSection(guide, "gems")
		if gems then
			ns.UI.Spacer(container)
			ns.UI.Header(container, "Gems")
			ns.UI.SourceNote(container, "gems", gemsSource, gemsFallback)
			RenderItemList(container, gems)
		end

		local enchants, enchSource, enchFallback = ns.GetSection(guide, "enchants")
		if enchants then
			ns.UI.Spacer(container)
			ns.UI.Header(container, "Enchants")
			ns.UI.SourceNote(container, "enchants", enchSource, enchFallback)
			for _, entry in ipairs(enchants) do
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
		ns.UI.Spacer(container)
		local names = {}
		for _, entry in ipairs(ns.GetSources(guide)) do
			local view = guide.views[entry.key]
			table.insert(names, ("%s (%s)"):format(entry.label, view.fetchedAt or "?"))
		end
		if #names > 0 then
			ns.UI.Paragraph(container, "|cff888888Sources: " .. table.concat(names, ", ") .. "|r")
		end
	end,
})
