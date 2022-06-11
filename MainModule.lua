--// MultiModules

local LoadedModules = {
	["modules"] = require(9879978662);
}

function GetModule(Name)
	local modules = table.unpack({LoadedModules.modules})
	if LoadedModules[Name] then
		return LoadedModules[Name]
	else
		if modules[Name] then
			local NewModule = require(modules[Name])
			LoadedModules[Name] = NewModule
			print("Loaded "..Name)
			return NewModule
		end
	end
end
return GetModule
