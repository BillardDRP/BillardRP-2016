
local function WeaponShipment(who, cat, wep, cost)
	if type(weapons.Get(wep)) ~= "table" then
		ErrorNoHalt("[DarkRP] Shipment class " .. wep .. " is invalid!")
		return
	end
	local name = weapons.Get(wep).PrintName or "ERROR NAME"
	if string.lower(string.Left(name, 4)) == "alt " then
		name = string.sub(name, 5)
	end
	DarkRP.createShipment(name, {
		model = weapons.Get(wep).WorldModel or "models/props_junk/watermelon01.mdl",
		entity = wep,
		price = cost * 10,
		amount = 10,
		separate = true,
		pricesep = cost,
		noship = false,
		allowed = who,
		category = cat,
	})
end

local function EntityShipment(who, cat, what, com, cost, mdl)
	if type(scripted_ents.Get(what)) ~= "table" then
		ErrorNoHalt("[DarkRP] Shipment class " .. what .. " is invalid!")
		return
	end
	DarkRP.createShipment(scripted_ents.Get(what).PrintName or "ERROR NAME", {
		model = mdl,
		entity = what,
		price = cost * 10,
		amount = 10,
		separate = false,
		pricesep = nil,
		noship = false,
		allowed = who,
		category = cat,
	})
	DarkRP.createEntity(scripted_ents.Get(what).PrintName or "ERROR NAME", {
		ent = what,
		model = mdl,
		price = cost,
		max = 4,
		cmd = "buy" .. com,
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

local function DoShipments()

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

WeaponShipment(TEAM_GUN, "Rifles", "tfcss_famas_alt", 3600)
WeaponShipment(TEAM_GUN, "Rifles", "tfcss_galil_alt", 3800)
WeaponShipment(TEAM_GUN, "Rifles", "tfcss_m4a1_alt", 4000)
WeaponShipment(TEAM_GUN, "Rifles", "tfcss_ak47_alt", 4200)
WeaponShipment(TEAM_GUN, "Rifles", "tfcss_sg552_alt", 4400)
WeaponShipment(TEAM_GUN, "Rifles", "tfcss_aug_alt", 4600)

WeaponShipment(TEAM_GUN, "Snipers", "tfcss_scout_alt", 6000)
WeaponShipment(TEAM_GUN, "Snipers", "tfcss_g3sg1_alt", 6400)
WeaponShipment(TEAM_GUN, "Snipers", "tfcss_sg550_alt", 6800)
WeaponShipment(TEAM_GUN, "Snipers", "tfcss_awp_alt", 7200)

WeaponShipment(TEAM_BADASS, "Badass Weapons", "badass_powermg", 32000)
WeaponShipment(TEAM_BADASS, "Badass Weapons", "badass_ravenshotgun", 24000)
WeaponShipment(TEAM_BADASS, "Badass Weapons", "badass_firebomb", 48000)
WeaponShipment(TEAM_BADASS, "Badass Weapons", "badass_boomstick", 16000)
WeaponShipment(TEAM_BADASS, "Badass Weapons", "badass_forplasmagun", 36000)
WeaponShipment(TEAM_BADASS, "Badass Weapons", "badass_silensedpistol", 16000)
WeaponShipment(TEAM_BADASS, "Badass Weapons", "badass_sixpipegun", 24000)
WeaponShipment(TEAM_BADASS, "Badass Weapons", "badass_thunderhorse", 36000)
WeaponShipment(TEAM_BADASS, "Badass Weapons", "badass_hellrifle", 16000)
WeaponShipment(TEAM_BADASS, "Badass Weapons", "badass_rubricsaw", 8000)
WeaponShipment(TEAM_BADASS, "Badass Weapons", "badass_betonomeshalka", 12000)
WeaponShipment(TEAM_BADASS, "Badass Weapons", "badass_combinesniper", 24000)
WeaponShipment(TEAM_BADASS, "Badass Weapons", "badass_acidsmgs", 24000)
WeaponShipment(TEAM_BADASS, "Badass Weapons", "badass_spastick", 24000)

WeaponShipment(TEAM_BLACKMARKET, "Black Market", "tfcss_css_knife_alt", 2400)
WeaponShipment(TEAM_BLACKMARKET, "Black Market", "lockpick", 4200)
WeaponShipment(TEAM_BLACKMARKET, "Black Market", "keypad_cracker", 2400)
WeaponShipment(TEAM_BLACKMARKET, "Black Market", "med_kit", 3600)
WeaponShipment(TEAM_BLACKMARKET, "Black Market", "unarrest_stick", 9800)
WeaponShipment(TEAM_BLACKMARKET, "Black Market", "tfcss_css_c4_alt", 20000)
WeaponShipment(TEAM_BLACKMARKET, "Black Market", "tfcss_m249_alt", 16000)

WeaponShipment(TEAM_VAPE, "Vapes", "weapon_vape", 1000)
WeaponShipment(TEAM_VAPE, "Vapes", "weapon_vape_juicy", 5000)
WeaponShipment(TEAM_VAPE, "Vapes", "weapon_vape_medicinal", 10000)
WeaponShipment(TEAM_VAPE, "Vapes", "weapon_vape_mega", 1000000)

EntityShipment(TEAM_DOCTOR, "Medical", "durgz_aspirin", "aspirin", 1200, "models/jaanus/aspbtl.mdl")
EntityShipment(TEAM_DOCTOR, "Medical", "cityrp_medkit", "medicalkit", 1000, "models/Items/HealthKit.mdl")

EntityShipment(TEAM_BAR, "Beverages", "durgz_alcohol", "alcohol", 400, "models/drug_mod/alcohol_can.mdl")
EntityShipment(TEAM_BAR, "Beverages", "durgz_water", "water", 200, "models/drug_mod/the_bottle_of_water.mdl")

EntityShipment(TEAM_DRUG, "Drugs", "durgz_weed", "weed", 800, "models/katharsmodels/contraband/zak_wiet/zak_wiet.mdl")
EntityShipment(TEAM_DRUG, "Drugs", "durgz_mushroom", "mushrooms", 1000, "models/ipha/mushroom_small.mdl")
EntityShipment(TEAM_DRUG, "Drugs", "durgz_meth", "meth", 1200, "models/katharsmodels/contraband/metasync/blue_sky.mdl")
EntityShipment(TEAM_DRUG, "Drugs", "durgz_lsd", "lsd", 1400, "models/smile/smile.mdl")
EntityShipment(TEAM_DRUG, "Drugs", "durgz_pcp", "pcp", 1600, "models/marioragdoll/Super Mario Galaxy/star/star.mdl")
EntityShipment(TEAM_DRUG, "Drugs", "durgz_heroine", "heroin", 1800, "models/katharsmodels/syringe_out/syringe_out.mdl")
EntityShipment(TEAM_DRUG, "Drugs", "durgz_cocaine", "cocaine", 2000, "models/cocn.mdl")

end

if g_DarkRPExtraShipmentsRefreshed ~= nil then
	DoShipments()
else
	hook.Add("InitPostEntity", "RegisterMoreDarkRPShipments", DoShipments)
	g_DarkRPExtraShipmentsRefreshed = true
end
