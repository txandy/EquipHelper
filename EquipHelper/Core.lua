local ADDON_NAME, ns = ...

ns.ADDON_NAME = ADDON_NAME
ns.data = {}          -- [classFile] = generated guide tables
ns.tabs = {}          -- ordered list of registered tabs
ns.callbacks = {}     -- [event] = { fn, ... }

local DATA_ADDON_PREFIX = "EquipHelper_Data_"
local DEFAULT_CONTENT = "mplus"
local DEFAULT_SOURCE = "mythicstats"
local STALE_DAYS = 14

-- Orden en que se prueban las fuentes cuando la elegida no publica una seccion.
-- Tiene que coincidir con SOURCE_ORDER en scraper/model.py.
ns.SOURCE_ORDER = { "mythicstats", "icyveins", "wowhead" }

ns.SOURCE_LABEL = {
	mythicstats = "Mythicstats",
	icyveins = "Icy Veins",
	wowhead = "Wowhead",
}

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

-- Los datos viven en paquetes hermanos que se cargan bajo demanda. Un addon
-- aparte recibe su propio (nombre, ns) por varargs, asi que no puede tocar
-- nuestro namespace privado: la unica superficie global que exponemos es esta
-- funcion, que es todo lo que necesitan.
function _G.EquipHelper_RegisterClassData(classFile, payload)
	ns.data[classFile] = payload
end

ns.dataErrors = {}

-- Carga el paquete de datos de una clase la primera vez que hace falta.
-- Todos los accesos pasan por aqui, asi que es el unico sitio que sabe que los
-- datos no estaban ya en memoria.
function ns.EnsureClassData(classFile)
	if not classFile then return nil end
	if ns.data[classFile] then return ns.data[classFile] end
	if ns.dataErrors[classFile] then return nil end

	local name = DATA_ADDON_PREFIX .. classFile
	local loaded, reason = C_AddOns.LoadAddOn(name)
	if not loaded then
		-- Se recuerda para no reintentar en cada repintado. Suele significar
		-- que el jugador desactivo el paquete en la lista de addons.
		ns.dataErrors[classFile] = reason or "UNKNOWN"
		return nil
	end

	return ns.data[classFile]
end

-- Las clases que este addon trae, sin cargar sus datos. Con carga bajo demanda
-- ns.data solo contiene las ya abiertas, asi que la lista viene del manifiesto.
function ns.GetClasses()
	local out = {}
	for _, classFile in ipairs((ns.Manifest and ns.Manifest.classes) or {}) do
		table.insert(out, classFile)
	end
	table.sort(out)
	return out
end

function ns.GetSpecs(classFile)
	local class = ns.EnsureClassData(classFile)
	if not class then return {} end

	-- El nombre y el rol se piden al cliente para salir traducidos; el nombre
	-- generado (en ingles) solo es el respaldo si el ID no le suena.
	local getInfoByID = (C_SpecializationInfo and C_SpecializationInfo.GetSpecializationInfoByID)
		or GetSpecializationInfoByID

	local out = {}
	for specID, spec in pairs(class.specs) do
		local name, role = spec.name, spec.role
		if getInfoByID then
			local _, localizedName, _, _, localizedRole = getInfoByID(specID)
			name = localizedName or name
			role = localizedRole or role
		end
		table.insert(out, { specID = specID, name = name, role = role })
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
-- was never scraped, which the UI renders as an explicit "no data" state
-- rather than an empty panel.
function ns.GetGuide(classFile, specID, heroID, content)
	local class = ns.EnsureClassData(classFile)
	local spec = class and class.specs[specID]
	local hero = spec and spec.heroes[heroID]
	return hero and hero[content or DEFAULT_CONTENT] or nil
end

--------------------------------------------------------------------------------
-- Resolucion de secciones
--
-- Ninguna web publica todo. En vez de dejar una pestana en blanco cuando la
-- fuente elegida no cubre una seccion, se cae a otra y se dice en pantalla: el
-- jugador siempre ve algo util y siempre sabe de donde sale.
--------------------------------------------------------------------------------

local function IsEmpty(value)
	if value == nil then return true end
	if type(value) ~= "table" then return false end
	return next(value) == nil
end

-- Devuelve datos, la fuente que los dio, y si hubo que recurrir a un respaldo.
function ns.GetSection(guide, section)
	if not guide or not guide.views then return nil, nil, false end

	local preferred = ns.state.source
	local view = guide.views[preferred]
	if view and not IsEmpty(view[section]) then
		return view[section], preferred, false
	end

	for _, key in ipairs(ns.SOURCE_ORDER) do
		if key ~= preferred then
			local other = guide.views[key]
			if other and not IsEmpty(other[section]) then
				return other[section], key, true
			end
		end
	end

	return nil, nil, false
end

-- Las fuentes que este addon trae para esta combinacion, en orden estable.
function ns.GetSources(guide)
	local out = {}
	if not guide or not guide.views then return out end

	for _, key in ipairs(ns.SOURCE_ORDER) do
		if guide.views[key] then
			table.insert(out, { key = key, label = ns.SOURCE_LABEL[key] or key })
		end
	end
	return out
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
	source = DEFAULT_SOURCE,
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
	db.profile.source = db.profile.source or DEFAULT_SOURCE
	if db.profile.tooltips == nil then db.profile.tooltips = true end
	db.char = db.char or {}

	ns.db = db
	ns.state.content = db.profile.content
	ns.state.source = db.profile.source
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
SlashCmdList.EQUIPHELPER = function(input)
	local command = (input or ""):lower():match("^%s*(%S*)")

	if command == "tooltips" then
		local db = ns.db and ns.db.profile
		if not db then return end
		db.tooltips = not db.tooltips
		print(("|cffffd100EquipHelper|r: tooltips %s."):format(db.tooltips and "enabled" or "disabled"))
	elseif command == "help" then
		print("|cffffd100EquipHelper|r: /eh opens the panel, /eh tooltips turns item tooltips on or off.")
	else
		ns.ToggleMainPanel()
	end
end
