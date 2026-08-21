-- Stub minimo de la API de WoW, para poder probar la logica pura del addon
-- fuera del cliente. Solo se declara lo que Core.lua toca al cargarse.
local stub = {}

function stub.install()
	_G.CreateFrame = function()
		return setmetatable({}, { __index = function() return function() end end })
	end
	_G.UnitClass = function() return "Mage", "MAGE" end
	_G.time = os.time
	_G.C_SpecializationInfo = nil
	_G.C_ClassTalents = nil
	_G.C_Traits = nil
	_G.GetSpecialization = function() return nil end
	_G.GetSpecializationInfo = function() return nil end
	_G.GetSpecializationInfoByID = function() return nil end
	_G.SlashCmdList = {}
	_G.print = function() end
end

-- Carga Core.lua tal cual lo cargaria WoW: con (nombre, tabla) por varargs.
function stub.loadCore()
	stub.install()
	local ns = {}
	local chunk = assert(loadfile("EquipHelper/Core.lua"))
	chunk("EquipHelper", ns)
	return ns
end

return stub
