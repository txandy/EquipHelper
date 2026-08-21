local ADDON_NAME, ns = ...

ns.RegisterTab({
	order = 3,
	key = "rotation",
	label = "Rotacion",
	render = function(container, guide)
		ns.UI.Header(container, "Prioridad de habilidades")

		if not guide.rotation or #guide.rotation == 0 then
			ns.UI.Paragraph(container, "Sin rotacion para esta combinacion.")
			return
		end

		for i, entry in ipairs(guide.rotation) do
			local row = ns.UI.Row(container)
			row:SetSpell(entry.spellID)
			row.Left:SetText(("%d. %s"):format(i, row.Left:GetText()))
			if entry.note then row.Right:SetText(entry.note) end
		end

		ns.UI.Spacer(container)
		ns.UI.Paragraph(container,
			"Lista de prioridad, no una secuencia fija: lanza la primera habilidad de la lista que este disponible.")
	end,
})
