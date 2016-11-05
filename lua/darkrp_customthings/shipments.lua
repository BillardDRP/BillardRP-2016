
local function EasyShipment(who, cat, wep, cost)
	DarkRP.createShipment(weapons.Get(wep).PrintName, {
		model = weapons.Get(wep).WorldModel,
		entity = wep,
		price = cost * 10,
		amount = 10,
		separate = true,
		pricesep = cost,
		allowed = who,
		category = cat,
	})
end

--[[---------------------------------------------------------------------------
DarkRP custom shipments and guns
---------------------------------------------------------------------------

This file contains your custom shipments and guns.
This file should also contain shipments and guns from DarkRP that you edited.

Note: If you want to edit a default DarkRP shipment, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the shipment to this file and edit it.

The default shipments and guns can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomShipmentFields


Add shipments and guns under the following line:
---------------------------------------------------------------------------]]

EasyShipment(TEAM_GUN, "Pistols", "tfcss_p228_alt", 600)
EasyShipment(TEAM_GUN, "Pistols", "tfcss_fiveseven_alt", 800)
EasyShipment(TEAM_GUN, "Pistols", "tfcss_dualelites_alt", 1000)
EasyShipment(TEAM_GUN, "Pistols", "tfcss_glock_alt", 1200)
EasyShipment(TEAM_GUN, "Pistols", "tfcss_deagle_alt", 1400)

EasyShipment(TEAM_GUN, "Submachine Guns", "tfcss_mac10_alt", 2000)
EasyShipment(TEAM_GUN, "Submachine Guns", "tfcss_ump45_alt", 2200)
EasyShipment(TEAM_GUN, "Submachine Guns", "tfcss_mp5_alt", 2400)
EasyShipment(TEAM_GUN, "Submachine Guns", "tfcss_p90_alt", 2600)
EasyShipment(TEAM_GUN, "Submachine Guns", "tfcss_tmp_alt", 2800)

EasyShipment(TEAM_GUN, "Shotguns", "tfcss_m3_alt", 3000)
EasyShipment(TEAM_GUN, "Shotguns", "tfcss_xm1014_alt", 4600)

EasyShipment(TEAM_GUN, "Assault Rifles", "tfcss_famas_alt", 3600)
EasyShipment(TEAM_GUN, "Assault Rifles", "tfcss_galil_alt", 3800)
EasyShipment(TEAM_GUN, "Assault Rifles", "tfcss_m4a1_alt", 4000)
EasyShipment(TEAM_GUN, "Assault Rifles", "tfcss_ak47_alt", 4200)
EasyShipment(TEAM_GUN, "Assault Rifles", "tfcss_sg552_alt", 4400)
EasyShipment(TEAM_GUN, "Assault Rifles", "tfcss_aug_alt", 4600)
