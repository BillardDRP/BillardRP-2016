
local function WeaponShipment(who, cat, wep, cost)
	local name = weapons.Get(wep).PrintName
	if string.lower(string.Left(name, 4)) == "alt " then
		name = string.sub(name, 5)
	end
	DarkRP.createShipment(name, {
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

local function EntityShipment(who, cat, what, cost, mdl)
	DarkRP.createShipment(scripted_ents.Get(what).PrintName, {
		model = mdl,
		entity = what,
		price = cost * 10,
		amount = 10,
		separate = false,
		pricesep = nil,
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

WeaponShipment(TEAM_GUN, "Pistols", "tfcss_p228_alt", 600)
WeaponShipment(TEAM_GUN, "Pistols", "tfcss_fiveseven_alt", 800)
WeaponShipment(TEAM_GUN, "Pistols", "tfcss_dualelites_alt", 1000)
WeaponShipment(TEAM_GUN, "Pistols", "tfcss_glock_alt", 1200)
WeaponShipment(TEAM_GUN, "Pistols", "tfcss_deagle_alt", 1400)

WeaponShipment(TEAM_GUN, "Submachine Guns", "tfcss_mac10_alt", 2000)
WeaponShipment(TEAM_GUN, "Submachine Guns", "tfcss_ump45_alt", 2200)
WeaponShipment(TEAM_GUN, "Submachine Guns", "tfcss_mp5_alt", 2400)
WeaponShipment(TEAM_GUN, "Submachine Guns", "tfcss_p90_alt", 2600)
WeaponShipment(TEAM_GUN, "Submachine Guns", "tfcss_tmp_alt", 2800)

WeaponShipment(TEAM_GUN, "Shotguns", "tfcss_m3_alt", 3000)
WeaponShipment(TEAM_GUN, "Shotguns", "tfcss_xm1014_alt", 4600)

WeaponShipment(TEAM_GUN, "Assault Rifles", "tfcss_famas_alt", 3600)
WeaponShipment(TEAM_GUN, "Assault Rifles", "tfcss_galil_alt", 3800)
WeaponShipment(TEAM_GUN, "Assault Rifles", "tfcss_m4a1_alt", 4000)
WeaponShipment(TEAM_GUN, "Assault Rifles", "tfcss_ak47_alt", 4200)
WeaponShipment(TEAM_GUN, "Assault Rifles", "tfcss_sg552_alt", 4400)
WeaponShipment(TEAM_GUN, "Assault Rifles", "tfcss_aug_alt", 4600)

WeaponShipment(TEAM_GUN, "Sniper Rifles", "tfcss_scout_alt", 6000)
WeaponShipment(TEAM_GUN, "Sniper Rifles", "tfcss_g3sg1_alt", 6400)
WeaponShipment(TEAM_GUN, "Sniper Rifles", "tfcss_sg550_alt", 6800)
WeaponShipment(TEAM_GUN, "Sniper Rifles", "tfcss_awp_alt", 7200)

EntityShipment(TEAM_DOCTOR, "Medical", "durgz_aspirin", 1200, "models/jaanus/aspbtl.mdl")

EntityShipment(TEAM_BAR, "Beverages", "durgz_alcohol", 400, "models/drug_mod/alcohol_can.mdl")
EntityShipment(TEAM_BAR, "Beverages", "durgz_water", 200, "models/drug_mod/the_bottle_of_water.mdl")

EntityShipment(TEAM_DRUG, "Drugs", "durgz_weed", 800, "models/katharsmodels/contraband/zak_wiet/zak_wiet.mdl")
EntityShipment(TEAM_DRUG, "Drugs", "durgz_mushroom", 1000, "models/ipha/mushroom_small.mdl")
EntityShipment(TEAM_DRUG, "Drugs", "durgz_meth", 1200, "models/katharsmodels/contraband/metasync/blue_sky.mdl")
EntityShipment(TEAM_DRUG, "Drugs", "durgz_lsd", 1400, "models/smile/smile.mdl")
EntityShipment(TEAM_DRUG, "Drugs", "durgz_pcp", 1600, "models/marioragdoll/Super Mario Galaxy/star/star.mdl")
EntityShipment(TEAM_DRUG, "Drugs", "durgz_heroine", 1800, "models/katharsmodels/syringe_out/syringe_out.mdl")
EntityShipment(TEAM_DRUG, "Drugs", "durgz_cocaine", 2000, "models/cocn.mdl")
