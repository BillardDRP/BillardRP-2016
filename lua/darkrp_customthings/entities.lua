
local function EasyEntity(cls, cost, com, cat, m)
	local ma = 4
	if m ~= nil then
		ma = m
	end
	DarkRP.createEntity(scripted_ents.Get(cls).PrintName, {
		ent = cls,
		model = scripted_ents.Get(cls).Model,
		price = cost,
		max = ma,
		cmd = "buy" .. com,
	})
end

--[[---------------------------------------------------------------------------
DarkRP custom entities
---------------------------------------------------------------------------

This file contains your custom entities.
This file should also contain entities from DarkRP that you edited.

Note: If you want to edit a default DarkRP entity, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the entity to this file and edit it.

The default entities can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua#L111

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomEntityFields

Add entities under the following line:
---------------------------------------------------------------------------]]

EasyEntity("zig_printer_topaz", 10000, "topazprinter", "Printers")
EasyEntity("zig_printer_amethyst", 20000, "amethystprinter", "Printers")
EasyEntity("zig_printer_emerald", 30000, "emeraldprinter", "Printers")
EasyEntity("zig_printer_ruby", 40000, "rubyprinter", "Printers")
EasyEntity("zig_printer_sapphire", 50000, "sapphireprinter", "Printers")
EasyEntity("zig_printer_diamond", 60000, "diamondprinter", "Printers")

EasyEntity("zig_battery", 2000, "battery", "Printer Accessories")
EasyEntity("zig_ink", 1000, "ink", "Printer Accessories")
