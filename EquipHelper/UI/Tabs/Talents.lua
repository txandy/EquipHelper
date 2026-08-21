local ADDON_NAME, ns = ...

ns.RegisterTab({
	order = 2,
	key = "talents",
	label = "Talents",
	render = function(container, guide)
		ns.UI.Header(container, "Talent builds")

		local builds, source, isFallback = ns.GetSection(guide, "talentBuilds")
		if not builds then
			ns.UI.Paragraph(container, "No builds for this combination.")
			return
		end
		ns.UI.SourceNote(container, "talent builds", source, isFallback)

		-- Algunas webs publican las builds por spec y no por hero talent. Se
		-- avisa una vez, en vez de fingir que la eleccion de arbol las filtra.
		for _, build in ipairs(builds) do
			if build.heroSpecific == false then
				ns.UI.Paragraph(container,
					"|cff888888These builds are published for the whole spec, not per hero talent, "
					.. "so they do not change with the hero talent selected above.|r")
				break
			end
		end

		for _, build in ipairs(builds) do
			local row = ns.UI.Row(container)
			row.Left:SetText(build.label)
			if build.usagePct then
				row.Right:SetText(("%d%% usage"):format(build.usagePct))
			end

			if build.metrics then
				local metrics = {}
				for _, key in ipairs({ "Avg key", "Max key", "Avg dps", "Max dps" }) do
					if build.metrics[key] then
						table.insert(metrics, ("%s %s"):format(key, build.metrics[key]))
					end
				end
				if #metrics > 0 then
					ns.UI.Paragraph(container, "|cff888888" .. table.concat(metrics, "   ") .. "|r")
				end
			end

			ns.UI.CopyBox(container, build.importString)
			ns.UI.Spacer(container, 6)
		end

		ns.UI.Spacer(container)
		ns.UI.Paragraph(container,
			"Select the text, copy it with Ctrl+C and paste it into the Import "
			.. "button of the talent window.")
	end,
})
