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

-- Colorea el puesto para que se lea de un vistazo: verde arriba, rojo abajo.
local function RankColor(rank, outOf)
	if not rank or not outOf or outOf < 2 then return "|cffffffff" end
	local quantile = (rank - 1) / (outOf - 1)
	if quantile <= 0.25 then return "|cff40bf32" end
	if quantile <= 0.60 then return "|cffe6d200" end
	return "|cffbf4f32"
end

local function RenderPerformance(container, guide)
	local perf = guide.performance
	if not perf then return end

	ns.UI.Header(container, "Measured performance")

	local row = ns.UI.Row(container)
	local metric = perf.metric == "hps" and "Healing" or "Damage"
	row.Left:SetText(("%s%s ranked #%d of %d|r in %s"):format(
		RankColor(perf.rank, perf.outOf), metric, perf.rank, perf.outOf, perf.zone))
	row.Right:SetText(("median %s  |  best %s"):format(
		ns.UI.ShortNumber(perf.median), ns.UI.ShortNumber(perf.top)))

	ns.UI.Paragraph(container, ("|cff888888Median of the top 100 parses across %d logs on %s "
		.. "difficulty. Compared only against specs of the same role.|r"):format(
		perf.sample, perf.difficulty))
	ns.UI.Spacer(container)
end

ns.RegisterTab({
	order = 1,
	key = "stats",
	label = "Stats",
	render = function(container, guide)
		RenderPerformance(container, guide)
		ns.UI.Header(container, "Stat priority")

		local stats, source, isFallback = ns.GetSection(guide, "statPriority")
		if not stats then
			ns.UI.Paragraph(container, "No stat priority for this combination.")
			return
		end
		ns.UI.SourceNote(container, "stat priority", source, isFallback)

		for i, entry in ipairs(stats) do
			local row = ns.UI.Row(container)
			local label = STAT_LABEL[entry.stat] or entry.stat
			row.Left:SetText(("%d. %s"):format(i, label))
			if entry.note then
				row.Left:SetText(("%d. %s  |cff888888(%s)|r"):format(i, label, entry.note))
			end

			local right = {}
			if entry.weight then table.insert(right, ("weight %.2f"):format(entry.weight)) end
			if entry.share then table.insert(right, ("%.1f%% of budget"):format(entry.share)) end
			row.Right:SetText(table.concat(right, "  |  "))
		end

		ns.UI.Spacer(container)
		ns.UI.Paragraph(container,
			"Measured from what top players actually wear, not from a simulation. "
			.. "Weight is relative to the highest stat; budget share is how much of "
			.. "their secondary rating they put into it.")
	end,
})
