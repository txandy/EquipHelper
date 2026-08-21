local ADDON_NAME, ns = ...

-- Anade a los tooltips de objeto lo que la guia dice de esa pieza para TU spec.
-- Deliberadamente la del personaje y no la que estes mirando en el panel: el
-- tooltip habla de si te sirve a ti, no de lo que estabas curioseando.

local SLOT_LABEL = {
	HEAD = HEADSLOT, NECK = NECKSLOT, SHOULDER = SHOULDERSLOT, BACK = BACKSLOT,
	CHEST = CHESTSLOT, WRIST = WRISTSLOT, HANDS = HANDSSLOT, WAIST = WAISTSLOT,
	LEGS = LEGSSLOT, FEET = FEETSLOT, FINGER1 = FINGER0SLOT, FINGER2 = FINGER1SLOT,
	TRINKET1 = TRINKET0SLOT, TRINKET2 = TRINKET1SLOT,
	MAINHAND = MAINHANDSLOT, OFFHAND = SECONDARYHANDSLOT,
}

local CONTENT_LABEL = { mplus = "M+", raid = "Raid" }

local CONSUMABLE_LABEL = {
	FLASK = "Flask", FOOD = "Food", WEAPON_OIL = "Weapon oil",
	RUNE = "Augment rune", POTION = "Combat potion",
	HEALTH_POTION = "Health potion",
}

local index = nil       -- [itemID] = { entradas }
local indexedFor = nil  -- clave de la spec para la que se construyo

local function Add(itemID, entry)
	local list = index[itemID]
	if not list then
		list = {}
		index[itemID] = list
	end
	table.insert(list, entry)
end

local function CollectGuide(guide, content)
	-- Por ns.GetSection y no leyendo la vista a pelo: el tooltip debe decir lo
	-- mismo que el panel, respaldos incluidos.
	for slot, entries in pairs(ns.GetSection(guide, "gear") or {}) do
		for rank, entry in ipairs(entries) do
			Add(entry.itemID, {
				kind = "gear", slot = slot, rank = rank,
				usagePct = entry.usagePct, content = content,
			})
		end
	end

	for _, entry in ipairs(ns.GetSection(guide, "gems") or {}) do
		Add(entry.itemID, { kind = "gem", usagePct = entry.usagePct, content = content })
	end

	for _, entry in ipairs(ns.GetSection(guide, "enchants") or {}) do
		Add(entry.itemID, {
			kind = "enchant", slot = entry.slot,
			usagePct = entry.usagePct, content = content,
		})
	end

	-- Los consumibles no dependen del tipo de contenido, asi que solo se
	-- indexan una vez o saldrian duplicados en el tooltip.
	if content == "mplus" then
		for _, entry in ipairs(ns.GetSection(guide, "consumables") or {}) do
			Add(entry.itemID, {
				kind = "consumable", category = entry.category, primary = entry.primary,
			})
		end
	end
end

-- Se indexa solo la spec del jugador. Recorrer las 40 al arrancar costaria
-- memoria y tiempo para responder siempre sobre una sola.
local function BuildIndex()
	local player = ns.player
	if not player or not player.classFile or not player.specID then return false end

	-- La fuente entra en la clave: cambiar de web cambia lo que dice el tooltip.
	local key = ("%s:%s:%s:%s"):format(
		player.classFile, player.specID, player.heroID or "-", ns.state.source)
	if index and indexedFor == key then return true end

	index, indexedFor = {}, key

	for _, content in ipairs({ "mplus", "raid" }) do
		local guide = ns.GetGuide(player.classFile, player.specID, player.heroID, content)
		if guide then CollectGuide(guide, content) end
	end

	return true
end

local function DescribeEntry(entry)
	local parts = {}

	if entry.kind == "consumable" then
		local label = CONSUMABLE_LABEL[entry.category] or entry.category
		return ("%s  ·  %s"):format(label, entry.primary and "recommended" or "alternative")
	elseif entry.kind == "gear" then
		local slot = SLOT_LABEL[entry.slot] or entry.slot
		table.insert(parts, ("%s #%d"):format(slot, entry.rank))
	elseif entry.kind == "gem" then
		table.insert(parts, "Recommended gem")
	else
		local slot = SLOT_LABEL[entry.slot] or entry.slot
		table.insert(parts, ("%s enchant"):format(slot))
	end

	if entry.usagePct then
		table.insert(parts, ("%.0f%% usage"):format(entry.usagePct))
	end
	table.insert(parts, CONTENT_LABEL[entry.content] or entry.content)

	return table.concat(parts, "  ·  ")
end

local function OnItemTooltip(tooltip, data)
	if not ns.db or not ns.db.profile.tooltips then return end
	if tooltip ~= GameTooltip and tooltip ~= ItemRefTooltip then return end
	if not BuildIndex() then return end

	local itemID = data and data.id
	local entries = itemID and index[itemID]
	if not entries then return end

	tooltip:AddLine(" ")
	tooltip:AddLine("EquipHelper", 1, 0.82, 0)
	for _, entry in ipairs(entries) do
		tooltip:AddLine(DescribeEntry(entry), 0.6, 0.8, 1)
	end
end

-- El indice caduca al cambiar de spec o de hero talent.
ns.On("SELECTION_CHANGED", function() index, indexedFor = nil, nil end)

local function Initialize()
	if not TooltipDataProcessor or not Enum or not Enum.TooltipDataType then return end
	TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item, OnItemTooltip)
end

Initialize()
