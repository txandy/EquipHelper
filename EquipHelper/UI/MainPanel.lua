local ADDON_NAME, ns = ...

ns.UI = ns.UI or {}

local PANEL_WIDTH, PANEL_HEIGHT = 640, 540
local ROW_HEIGHT = 22

--------------------------------------------------------------------------------
-- Widget helpers shared by every tab.
--
-- Each tab renders into a container by calling Reset() then Header/Row/Paragraph.
-- Widgets are pooled per container so switching specs does not leak frames.
--------------------------------------------------------------------------------

local function NextY(container, height)
	local y = container.__y
	container.__y = y - height
	container:SetHeight(math.abs(container.__y) + 8)
	return y
end

local function Acquire(container, kind, factory)
	container.__pools = container.__pools or {}
	local pool = container.__pools[kind]
	if not pool then
		pool = { items = {}, used = 0 }
		container.__pools[kind] = pool
	end

	pool.used = pool.used + 1
	local widget = pool.items[pool.used]
	if not widget then
		widget = factory(container)
		pool.items[pool.used] = widget
	end
	widget:Show()
	return widget
end

-- 146845.2 -> "147K". Los numeros crudos de dps no caben ni se leen.
function ns.UI.ShortNumber(value)
	if not value then return "" end
	if value >= 1e6 then return ("%.1fM"):format(value / 1e6) end
	if value >= 1e3 then return ("%.0fK"):format(value / 1e3) end
	return ("%.0f"):format(value)
end

function ns.UI.Reset(container)
	container.__y = -8
	for _, pool in pairs(container.__pools or {}) do
		for _, widget in ipairs(pool.items) do widget:Hide() end
		pool.used = 0
	end
end

function ns.UI.Header(container, text)
	local fs = Acquire(container, "header", function(parent)
		local f = parent:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
		f:SetJustifyH("LEFT")
		return f
	end)
	fs:ClearAllPoints()
	fs:SetPoint("TOPLEFT", container, "TOPLEFT", 8, NextY(container, 26))
	fs:SetText(text)
	return fs
end

function ns.UI.Paragraph(container, text)
	local fs = Acquire(container, "para", function(parent)
		local f = parent:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
		f:SetJustifyH("LEFT")
		f:SetWidth(PANEL_WIDTH - 70)
		return f
	end)
	fs:ClearAllPoints()
	fs:SetText(text)
	fs:SetPoint("TOPLEFT", container, "TOPLEFT", 12, NextY(container, fs:GetStringHeight() + 8))
	return fs
end

function ns.UI.Spacer(container, height)
	NextY(container, height or 10)
end

local function Row_SetItem(row, itemID)
	row.__spellID = nil
	row.__itemID = itemID
	row.Icon:SetTexture(134400) -- interrogante mientras carga
	row.Left:SetText(("Objeto %d"):format(itemID))

	-- El cliente puede no tener el item cacheado; se resuelve async.
	local item = Item:CreateFromItemID(itemID)
	if item:IsItemEmpty() then return end
	item:ContinueOnItemLoad(function()
		if row.__itemID ~= itemID then return end -- la fila se reutilizo mientras tanto
		row.Icon:SetTexture(item:GetItemIcon())
		local name = item:GetItemName()
		local quality = item:GetItemQuality()
		local color = quality and ITEM_QUALITY_COLORS[quality]
		row.Left:SetText(color and color.hex .. name .. "|r" or name)
	end)
end

local function Row_SetSpell(row, spellID)
	row.__itemID = nil
	row.__spellID = spellID

	local info = C_Spell.GetSpellInfo(spellID)
	row.Icon:SetTexture(info and info.iconID or 134400)
	row.Left:SetText(info and info.name or ("Hechizo %d"):format(spellID))
end

local function Row_OnEnter(row)
	if not row.__itemID and not row.__spellID then return end
	GameTooltip:SetOwner(row, "ANCHOR_RIGHT")
	if row.__itemID then
		GameTooltip:SetItemByID(row.__itemID)
	else
		GameTooltip:SetSpellByID(row.__spellID)
	end
	GameTooltip:Show()
end

function ns.UI.Row(container)
	local row = Acquire(container, "row", function(parent)
		local f = CreateFrame("Frame", nil, parent)
		f:SetHeight(ROW_HEIGHT)
		f:SetPoint("RIGHT", parent, "RIGHT", -8, 0)

		f.Icon = f:CreateTexture(nil, "ARTWORK")
		f.Icon:SetSize(18, 18)
		f.Icon:SetPoint("LEFT", f, "LEFT", 0, 0)
		f.Icon:SetTexCoord(0.07, 0.93, 0.07, 0.93)

		f.Left = f:CreateFontString(nil, "ARTWORK", "GameFontHighlight")
		f.Left:SetPoint("LEFT", f.Icon, "RIGHT", 6, 0)
		f.Left:SetJustifyH("LEFT")

		f.Right = f:CreateFontString(nil, "ARTWORK", "GameFontDisableSmall")
		f.Right:SetPoint("RIGHT", f, "RIGHT", 0, 0)
		f.Right:SetJustifyH("RIGHT")

		f.SetItem = Row_SetItem
		f.SetSpell = Row_SetSpell
		f:SetScript("OnEnter", Row_OnEnter)
		f:SetScript("OnLeave", GameTooltip_Hide)
		return f
	end)

	row.__itemID, row.__spellID = nil, nil
	row.Icon:SetTexture(nil)
	row.Left:SetText("")
	row.Right:SetText("")
	row:ClearAllPoints()
	row:SetPoint("TOPLEFT", container, "TOPLEFT", 12, NextY(container, ROW_HEIGHT))
	row:SetPoint("RIGHT", container, "RIGHT", -8, 0)
	return row
end

-- Caja de texto seleccionable, para los import strings de talentos.
function ns.UI.CopyBox(container, text)
	local box = Acquire(container, "copybox", function(parent)
		local f = CreateFrame("EditBox", nil, parent, "InputBoxTemplate")
		f:SetHeight(20)
		f:SetAutoFocus(false)
		f:SetFontObject(ChatFontNormal)
		f:SetScript("OnEscapePressed", f.ClearFocus)
		f:SetScript("OnEditFocusGained", function(self) self:HighlightText() end)
		-- Solo lectura: cualquier cambio revierte al valor original.
		f:SetScript("OnTextChanged", function(self, userInput)
			if userInput then self:SetText(self.__value or "") self:HighlightText() end
		end)
		f:SetScript("OnMouseUp", function(self) self:HighlightText() end)
		return f
	end)

	box.__value = text
	box:SetText(text)
	box:SetCursorPosition(0)
	box:ClearAllPoints()
	box:SetPoint("TOPLEFT", container, "TOPLEFT", 18, NextY(container, 26))
	box:SetPoint("RIGHT", container, "RIGHT", -16, 0)
	return box
end

--------------------------------------------------------------------------------
-- Tab registry
--------------------------------------------------------------------------------

function ns.RegisterTab(def)
	table.insert(ns.tabs, def)
	table.sort(ns.tabs, function(a, b) return a.order < b.order end)
end

--------------------------------------------------------------------------------
-- Panel
--------------------------------------------------------------------------------

local panel

local function BuildSelectors(frame)
	local function AddDropdown(point, relTo, x, width)
		local dd = CreateFrame("DropdownButton", nil, frame, "WowStyle1DropdownTemplate")
		dd:SetPoint("TOPLEFT", relTo, point, x, relTo == frame and -32 or 0)
		dd:SetWidth(width)
		return dd
	end

	frame.ClassDD = AddDropdown("TOPLEFT", frame, 14, 130)
	frame.SpecDD = AddDropdown("TOPRIGHT", frame.ClassDD, 6, 130)
	frame.HeroDD = AddDropdown("TOPRIGHT", frame.SpecDD, 6, 150)
	frame.ContentDD = AddDropdown("TOPRIGHT", frame.HeroDD, 6, 110)

	frame.ClassDD:SetupMenu(function(_, root)
		local classes = {}
		for classFile in pairs(ns.data) do table.insert(classes, classFile) end
		table.sort(classes)
		for _, classFile in ipairs(classes) do
			local label = LOCALIZED_CLASS_NAMES_MALE[classFile] or classFile
			root:CreateRadio(label,
				function() return ns.state.classFile == classFile end,
				function()
					local specs = ns.GetSpecs(classFile)
					ns.SelectSpec(classFile, specs[1] and specs[1].specID, nil, nil, false)
				end)
		end
	end)

	frame.SpecDD:SetupMenu(function(_, root)
		for _, spec in ipairs(ns.GetSpecs(ns.state.classFile)) do
			root:CreateRadio(spec.name,
				function() return ns.state.specID == spec.specID end,
				function() ns.SelectSpec(ns.state.classFile, spec.specID, nil, nil, false) end)
		end
	end)

	frame.HeroDD:SetupMenu(function(_, root)
		for _, hero in ipairs(ns.GetHeroTrees(ns.state.classFile, ns.state.specID)) do
			root:CreateRadio(hero.name,
				function() return ns.state.heroID == hero.heroID end,
				function() ns.SelectSpec(ns.state.classFile, ns.state.specID, hero.heroID, nil, false) end)
		end
	end)

	frame.ContentDD:SetupMenu(function(_, root)
		for _, entry in ipairs({ { "mplus", "Mitica+" }, { "raid", "Banda" } }) do
			root:CreateRadio(entry[2],
				function() return ns.state.content == entry[1] end,
				function()
					ns.state.content = entry[1]
					if ns.db then ns.db.profile.content = entry[1] end
					ns.Fire("SELECTION_CHANGED")
				end)
		end
	end)
end

local function BuildTabs(frame)
	frame.TabButtons = {}
	for i, def in ipairs(ns.tabs) do
		local button = CreateFrame("Button", "EquipHelperTab" .. i, frame, "PanelTabButtonTemplate")
		button:SetID(i)
		button:SetText(def.label)
		if i == 1 then
			button:SetPoint("TOPLEFT", frame, "BOTTOMLEFT", 12, 2)
		else
			button:SetPoint("LEFT", frame.TabButtons[i - 1], "RIGHT", -14, 0)
		end
		button:SetScript("OnClick", function(self)
			PlaySound(SOUNDKIT.IG_CHARACTER_INFO_TAB)
			ns.SelectTab(self:GetID())
		end)
		frame.TabButtons[i] = button
	end
	PanelTemplates_SetNumTabs(frame, #ns.tabs)
end

local function CreatePanel()
	local frame = CreateFrame("Frame", "EquipHelperFrame", UIParent, "ButtonFrameTemplate")
	frame:SetSize(PANEL_WIDTH, PANEL_HEIGHT)
	frame:SetPoint("CENTER")
	frame:SetMovable(true)
	frame:EnableMouse(true)
	frame:RegisterForDrag("LeftButton")
	frame:SetScript("OnDragStart", frame.StartMoving)
	frame:SetScript("OnDragStop", frame.StopMovingOrSizing)
	frame:SetFrameStrata("HIGH")
	frame:Hide()
	tinsert(UISpecialFrames, "EquipHelperFrame") -- Esc cierra el panel

	frame:SetTitle("EquipHelper")
	if frame.PortraitContainer then
		frame:SetPortraitToAsset("Interface\\Icons\\INV_Misc_Book_09")
	end
	ButtonFrameTemplate_HideButtonBar(frame)

	BuildSelectors(frame)

	frame.Freshness = frame:CreateFontString(nil, "ARTWORK", "GameFontDisableSmall")
	frame.Freshness:SetPoint("TOPLEFT", frame.ClassDD, "BOTTOMLEFT", 2, -6)
	frame.Freshness:SetJustifyH("LEFT")

	frame.FollowButton = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
	frame.FollowButton:SetSize(110, 20)
	frame.FollowButton:SetPoint("TOPRIGHT", frame.ContentDD, "BOTTOMRIGHT", 0, -4)
	frame.FollowButton:SetText("Mi personaje")
	frame.FollowButton:SetScript("OnClick", function() ns.FollowPlayer() end)

	frame.Scroll = CreateFrame("ScrollFrame", "EquipHelperScroll", frame, "UIPanelScrollFrameTemplate")
	frame.Scroll:SetPoint("TOPLEFT", frame, "TOPLEFT", 12, -108)
	frame.Scroll:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -32, 34)

	frame.Content = CreateFrame("Frame", nil, frame.Scroll)
	frame.Content:SetSize(PANEL_WIDTH - 56, 1)
	frame.Scroll:SetScrollChild(frame.Content)

	frame.Empty = frame.Content:CreateFontString(nil, "ARTWORK", "GameFontDisable")
	frame.Empty:SetPoint("TOP", frame.Content, "TOP", 0, -60)
	frame.Empty:SetText("Sin datos para esta combinacion todavia.")
	frame.Empty:Hide()

	BuildTabs(frame)
	return frame
end

local function UpdateHeader()
	local classLabel = LOCALIZED_CLASS_NAMES_MALE[ns.state.classFile or ""] or ns.state.classFile or "-"
	panel.ClassDD:SetDefaultText(classLabel)

	local specName = "-"
	for _, spec in ipairs(ns.GetSpecs(ns.state.classFile)) do
		if spec.specID == ns.state.specID then specName = spec.name end
	end
	panel.SpecDD:SetDefaultText(specName)

	local heroName = "-"
	for _, hero in ipairs(ns.GetHeroTrees(ns.state.classFile, ns.state.specID)) do
		if hero.heroID == ns.state.heroID then heroName = hero.name end
	end
	panel.HeroDD:SetDefaultText(heroName)
	panel.ContentDD:SetDefaultText(ns.state.content == "raid" and "Banda" or "Mitica+")

	local m = ns.Manifest
	if m then
		local parts = {}
		if m.generated then table.insert(parts, "Datos: " .. m.generated) end
		if m.season then table.insert(parts, m.season) end
		if m.patch then table.insert(parts, "parche " .. m.patch) end
		if m.specCount then table.insert(parts, ("%d specs"):format(m.specCount)) end
		local text = table.concat(parts, "  |  ")

		if m.placeholder then
			panel.Freshness:SetText("|cffff8800Datos de ejemplo -- el pipeline aun no esta conectado|r")
		elseif ns.IsStale() then
			panel.Freshness:SetText(("|cffff8800%s  (%d dias de antiguedad)|r"):format(text, ns.GetDataAge()))
		else
			panel.Freshness:SetText(text)
		end
	end

	panel.FollowButton:SetEnabled(not ns.state.following)
end

function ns.SelectTab(index)
	if not panel then return end
	panel.__tab = index
	PanelTemplates_SetTab(panel, index)
	if ns.db then ns.db.char.tab = index end
	ns.Render()
end

function ns.Render()
	if not panel or not panel:IsShown() then return end

	UpdateHeader()

	local guide = ns.GetGuide(ns.state.classFile, ns.state.specID, ns.state.heroID, ns.state.content)
	local def = ns.tabs[panel.__tab or 1]

	ns.UI.Reset(panel.Content)
	if not guide or not def then
		panel.Content:SetHeight(1)
		panel.Empty:Show()
		return
	end

	panel.Empty:Hide()
	def.render(panel.Content, guide)
end

function ns.ToggleMainPanel()
	if not panel then
		panel = CreatePanel()
		ns.SelectTab((ns.db and ns.db.char.tab) or 1)
	end

	if panel:IsShown() then
		panel:Hide()
	else
		panel:Show()
		ns.Render()
	end
end

ns.On("SELECTION_CHANGED", function() ns.Render() end)
