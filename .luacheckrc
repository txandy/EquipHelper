-- Configuracion de luacheck para el addon.
-- WoW usa Lua 5.1 y expone su API como globals; se declaran aqui para que
-- luacheck distinga un typo real de una llamada legitima al cliente.

std = "lua51"
max_line_length = 140
exclude_files = { "EquipHelper/Libs/**" }

-- Cada fichero recibe (ADDON_NAME, ns) por varargs del cargador de WoW.
ignore = {
	"212/self",   -- argumentos self sin usar en handlers de frame
	"211/ADDON_NAME", -- declarado por convencion aunque no siempre se use
}

globals = {
	-- Nuestros SavedVariables
	"EquipHelperDB",
	-- Globals que el addon define por contrato con el cliente
	"SLASH_EQUIPHELPER1", "SLASH_EQUIPHELPER2",
	"SlashCmdList", "UISpecialFrames",
}

read_globals = {
	-- Base
	"CreateFrame", "UIParent", "GameTooltip", "GameTooltip_Hide", "PlaySound",
	"SOUNDKIT", "time", "tinsert", "select", "Item", "ITEM_QUALITY_COLORS",
	"ChatFontNormal", "InputBoxTemplate",
	-- Info de jugador / spec / talentos
	"UnitClass", "GetSpecialization", "GetSpecializationInfo",
	"C_SpecializationInfo", "C_ClassTalents", "C_Traits", "C_Spell", "C_AddOns",
	"LOCALIZED_CLASS_NAMES_MALE",
	-- Plantillas y helpers de UI
	"PanelTemplates_SetNumTabs", "PanelTemplates_SetTab",
	"ButtonFrameTemplate_HideButtonBar",
	-- Cadenas localizadas
	"STAT_CRITICAL_STRIKE", "STAT_HASTE", "STAT_MASTERY", "STAT_VERSATILITY",
	"STAT_LIFESTEAL", "STAT_SPEED", "STAT_AVOIDANCE",
	"HEADSLOT", "NECKSLOT", "SHOULDERSLOT", "BACKSLOT", "CHESTSLOT",
	"WRISTSLOT", "HANDSSLOT", "WAISTSLOT", "LEGSSLOT", "FEETSLOT",
	"FINGER0SLOT", "FINGER1SLOT", "TRINKET0SLOT", "TRINKET1SLOT",
	"MAINHANDSLOT", "SECONDARYHANDSLOT",
}
