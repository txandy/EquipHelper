local ADDON_NAME, ns = ...

ns.ADDON_NAME = ADDON_NAME
ns.data = {}          -- [classFile] = generated guide tables
ns.tabs = {}          -- ordered list of registered tabs
ns.callbacks = {}     -- [event] = { fn, ... }

local DEFAULT_CONTENT = "mplus"
local STALE_DAYS = 14

--------------------------------------------------------------------------------
-- Tiny event bus. UI modules subscribe; Core publishes.
--------------------------------------------------------------------------------

function ns.On(event, fn)
	ns.callbacks[event] = ns.callbacks[event] or {}
	table.insert(ns.callbacks[event], fn)
end

function ns.Fire(event, ...)
	for _, fn in ipairs(ns.callbacks[event] or {}) do
		fn(...)
	end
end

--------------------------------------------------------------------------------
-- Data registration + lookup
--
-- Generated files call ns.RegisterClassData. Today every Data\*.lua is listed in
-- the TOC and loads at startup. When the real dataset makes that too heavy, only
-- ns.EnsureClassData needs to change (to C_AddOns.LoadAddOn on a LoadOnDemand
-- sibling package) -- callers stay identical.
--------------------------------------------------------------------------------

function ns.RegisterClassData(classFile, payload)
	ns.data[classFile] = payload
end

function ns.EnsureClassData(classFile)
	return ns.data[classFile]
end

function ns.GetSpecs(classFile)
	local class = ns.EnsureClassData(classFile)
	if not class then return {} end

	local out = {}
	for specID, spec in pairs(class.specs) do
		table.insert(out, { specID = specID, name = spec.name, role = spec.role })
	end
	table.sort(out, function(a, b) return a.specID < b.specID end)
	return out
end

function ns.GetHeroTrees(classFile, specID)
	local class = ns.EnsureClassData(classFile)
	local spec = class and class.specs[specID]
	if not spec then return {} end

	local out = {}
	for heroID, hero in pairs(spec.heroes) do
		table.insert(out, { heroID = heroID, name = hero.name })
	end
	table.sort(out, function(a, b) return a.name < b.name end)
	return out
end

-- The single accessor every UI module uses. Returns nil when that combination
-- was never scraped, which the UI renders as an explicit "sin datos" state
-- rather than an empty panel.
function ns.GetGuide(classFile, specID, heroID, content)
	local class = ns.EnsureClassData(classFile)
	local spec = class and class.specs[specID]
	local hero = spec and spec.heroes[heroID]
	return hero and hero[content or DEFAULT_CONTENT] or nil
end

--------------------------------------------------------------------------------
-- Freshness
--------------------------------------------------------------------------------

function ns.GetDataAge()
	local m = ns.Manifest
	if not m or not m.generatedEpoch then return nil end
	return math.floor((time() - m.generatedEpoch) / 86400)
end

function ns.IsStale()
	local age = ns.GetDataAge()
	return age ~= nil and age > STALE_DAYS
end

--------------------------------------------------------------------------------
-- Player context: which class/spec/hero talent the character is actually using.
--------------------------------------------------------------------------------

ns.state = {
	classFile = nil,
	specID = nil,
	heroID = nil,
	content = DEFAULT_CONTENT,
	following = true, -- false once the user browses away from their own spec
}

-- The active hero talent is the one sub-tree that has points spent in it.
local function GetActiveHeroTree()
	if not C_ClassTalents or not C_Traits then return nil end

	local configID = C_ClassTalents.GetActiveConfigID()
	if not configID then return nil end

	local configInfo = C_Traits.GetConfigInfo(configID)
	if not configInfo or not configInfo.treeIDs then return nil end

	for _, treeID in ipairs(configInfo.treeIDs) do
		local subTreeIDs = C_Traits.GetSubTreeIDs and C_Traits.GetSubTreeIDs(configID, treeID)
		for _, subTreeID in ipairs(subTreeIDs or {}) do
			local info = C_Traits.GetSubTreeInfo(configID, subTreeID)
			if info and info.isActive then
				return subTreeID
			end
		end
	end
	return nil
end

function ns.RefreshPlayerContext()
	local _, classFile = UnitClass("player")

	-- GetSpecialization vive en C_SpecializationInfo en retail moderno, pero el
	-- global sigue existiendo; probamos ambos para no atarnos a una build.
	local getSpec = (C_SpecializationInfo and C_SpecializationInfo.GetSpecialization) or GetSpecialization
	local getSpecInfo = (C_SpecializationInfo and C_SpecializationInfo.GetSpecializationInfo) or GetSpecializationInfo

	local specIndex = getSpec and getSpec()
	local specID = specIndex and getSpecInfo and getSpecInfo(specIndex) or nil

	ns.player = {
		classFile = classFile,
		specID = specID,
		heroID = GetActiveHeroTree(),
	}

	-- Only follow the character while the user has not navigated elsewhere.
	if ns.state.following then
		ns.SelectSpec(classFile, specID, ns.player.heroID, ns.state.content, true)
	end
end

-- Falls back to the first hero tree we have data for when the requested one is
-- missing, so a character running an off-meta hero talent still sees something.
function ns.SelectSpec(classFile, specID, heroID, content, isAutoFollow)
	local trees = ns.GetHeroTrees(classFile, specID)
	local resolved = nil

	for _, tree in ipairs(trees) do
		if tree.heroID == heroID then resolved = heroID end
	end
	if not resolved and trees[1] then resolved = trees[1].heroID end

	ns.state.classFile = classFile
	ns.state.specID = specID
	ns.state.heroID = resolved
	ns.state.content = content or ns.state.content
	if not isAutoFollow then ns.state.following = false end

	ns.Fire("SELECTION_CHANGED")
end

function ns.FollowPlayer()
	ns.state.following = true
	ns.RefreshPlayerContext()
end

--------------------------------------------------------------------------------
-- Bootstrap
--------------------------------------------------------------------------------

local function InitDB()
	EquipHelperDB = EquipHelperDB or {}
	local db = EquipHelperDB
	db.profile = db.profile or {}
	db.profile.content = db.profile.content or DEFAULT_CONTENT
	if db.profile.tooltips == nil then db.profile.tooltips = true end
	db.char = db.char or {}

	ns.db = db
	ns.state.content = db.profile.content
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED")
frame:RegisterEvent("TRAIT_CONFIG_UPDATED")

frame:SetScript("OnEvent", function(_, event, arg1)
	if event == "ADDON_LOADED" then
		if arg1 ~= ADDON_NAME then return end
		InitDB()
		frame:UnregisterEvent("ADDON_LOADED")
	elseif event == "PLAYER_SPECIALIZATION_CHANGED" and arg1 ~= "player" then
		return
	else
		ns.RefreshPlayerContext()
	end
end)

SLASH_EQUIPHELPER1 = "/eh"
SLASH_EQUIPHELPER2 = "/equiphelper"
SlashCmdList.EQUIPHELPER = function()
	ns.ToggleMainPanel()
end
