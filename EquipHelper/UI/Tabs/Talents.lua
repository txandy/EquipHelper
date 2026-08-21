local ADDON_NAME, ns = ...

ns.RegisterTab({
	order = 2,
	key = "talents",
	label = "Talentos",
	render = function(container, guide)
		ns.UI.Header(container, "Builds de talentos")

		if not guide.talentBuilds or #guide.talentBuilds == 0 then
			ns.UI.Paragraph(container, "Sin builds para esta combinacion.")
			return
		end

		for _, build in ipairs(guide.talentBuilds) do
			local row = ns.UI.Row(container)
			row.Left:SetText(build.label)
			if build.usagePct then
				row.Right:SetText(("%s  |cff888888%d%% de uso|r"):format(build.source or "", build.usagePct))
			else
				row.Right:SetText(build.source or "")
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
			"Selecciona el texto, copialo con Ctrl+C y pegalo en el boton Importar de la ventana de talentos.")
	end,
})
