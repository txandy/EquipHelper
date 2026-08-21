local ADDON_NAME, ns = ...

-- Los nombres de stat vienen del cliente para salir traducidos solos.
local STAT_LABEL = {
	CRIT = STAT_CRITICAL_STRIKE,
	HASTE = STAT_HASTE,
	MASTERY = STAT_MASTERY,
	VERSATILITY = STAT_VERSATILITY,
	LEECH = STAT_LIFESTEAL,
	SPEED = STAT_SPEED,
	AVOIDANCE = STAT_AVOIDANCE,
}

ns.RegisterTab({
	order = 1,
	key = "stats",
	label = "Stats",
	render = function(container, guide)
		ns.UI.Header(container, "Prioridad de caracteristicas")

		if not guide.statPriority or #guide.statPriority == 0 then
			ns.UI.Paragraph(container, "Sin prioridad de stats para esta combinacion.")
			return
		end

		for i, entry in ipairs(guide.statPriority) do
			local row = ns.UI.Row(container)
			local label = STAT_LABEL[entry.stat] or entry.stat
			row.Left:SetText(("%d. %s"):format(i, label))
			if entry.note then
				row.Left:SetText(("%d. %s  |cff888888(%s)|r"):format(i, label, entry.note))
			end

			local right = {}
			if entry.weight then table.insert(right, ("peso %.2f"):format(entry.weight)) end
			if entry.share then table.insert(right, ("%.1f%% del total"):format(entry.share)) end
			row.Right:SetText(table.concat(right, "  |  "))
		end

		ns.UI.Spacer(container)
		ns.UI.Paragraph(container,
			"Medido sobre lo que llevan de verdad los mejores jugadores, no sobre una simulacion. "
			.. "El peso es relativo al stat mas alto; la cuota es que parte de su presupuesto "
			.. "secundario le dedican.")
	end,
})
