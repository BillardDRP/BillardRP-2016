
local function WeaponShipment(who, cat, wep, amt)
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
		price = amt * 10,
		amount = 10,
		separate = false,
		pricesep = amt,
		noship = false,
		allowed = who,
		category = cat,
	})
	DarkRP.createShipment(name, {
		model = weapons.Get(wep).WorldModel or "models/props_junk/watermelon01.mdl",
		entity = wep,
		price = amt,
		amount = 1,
		separate = true,
		pricesep = amt,
		noship = true,
		allowed = who,
		category = cat,
	})
end

local function EntityShipment(who, cat, what, com, amt, mdl)
	if type(scripted_ents.Get(what)) ~= "table" then
		ErrorNoHalt("[DarkRP] Shipment class " .. what .. " is invalid!")
		return
	end
	DarkRP.createShipment(scripted_ents.Get(what).PrintName or "ERROR NAME", {
		model = mdl,
		entity = what,
		price = amt * 10,
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
		price = amt,
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

WeaponShipment(TEAM_GUN, "Pistols", "tfa_sig_p229r", 600)
WeaponShipment(TEAM_GUN, "Pistols", "tfa_remington1858", 800)
WeaponShipment(TEAM_GUN, "Pistols", "tfa_glock", 1000)
WeaponShipment(TEAM_GUN, "Pistols", "tfa_scoped_taurus", 800)
WeaponShipment(TEAM_GUN, "Pistols", "tfa_m29satan", 800)
WeaponShipment(TEAM_GUN, "Pistols", "tfa_luger", 600)
WeaponShipment(TEAM_GUN, "Pistols", "tfa_model3russian", 800)
WeaponShipment(TEAM_GUN, "Pistols", "tfa_colt1911", 600)
WeaponShipment(TEAM_GUN, "Pistols", "tfa_usp", 600)
WeaponShipment(TEAM_GUN, "Pistols", "tfa_coltpython", 800)
WeaponShipment(TEAM_GUN, "Pistols", "tfa_ragingbull", 800)
WeaponShipment(TEAM_GUN, "Pistols", "tfa_deagle", 1000)
WeaponShipment(TEAM_GUN, "Pistols", "tfa_model627", 800)
WeaponShipment(TEAM_GUN, "Pistols", "tfa_model500", 800)
WeaponShipment(TEAM_GUN, "Pistols", "tfa_m92beretta", 600)
WeaponShipment(TEAM_GUN, "Pistols", "tfa_hk45", 600)

WeaponShipment(TEAM_GUN, "Shotguns", "tfa_usas", 50000)
WeaponShipment(TEAM_GUN, "Shotguns", "tfa_mossberg590", 12000)
WeaponShipment(TEAM_GUN, "Shotguns", "tfa_striker12", 50000)
WeaponShipment(TEAM_GUN, "Shotguns", "tfa_spas12", 12000)
WeaponShipment(TEAM_GUN, "Shotguns", "tfa_jackhammer", 50000)
WeaponShipment(TEAM_GUN, "Shotguns", "tfa_1887winchester", 12000)
WeaponShipment(TEAM_GUN, "Shotguns", "tfa_m3", 12000)
WeaponShipment(TEAM_GUN, "Shotguns", "tfa_ithacam37", 12000)
WeaponShipment(TEAM_GUN, "Shotguns", "tfa_remington870", 12000)
WeaponShipment(TEAM_GUN, "Shotguns", "tfa_browningauto5", 35000)
WeaponShipment(TEAM_GUN, "Shotguns", "tfa_1897winchester", 12000)
WeaponShipment(TEAM_GUN, "Shotguns", "tfa_dbarrel", 12000)

WeaponShipment(TEAM_GUN, "Submachine Guns", "tfa_mp9", 8000)
WeaponShipment(TEAM_GUN, "Submachine Guns", "tfa_mp5", 6000)
WeaponShipment(TEAM_GUN, "Submachine Guns", "tfa_mp40", 6000)
WeaponShipment(TEAM_GUN, "Submachine Guns", "tfa_uzi", 4000)
WeaponShipment(TEAM_GUN, "Submachine Guns", "tfa_vector", 8000)
WeaponShipment(TEAM_GUN, "Submachine Guns", "tfa_ump45", 6000)
WeaponShipment(TEAM_GUN, "Submachine Guns", "tfa_usc", 6000)
WeaponShipment(TEAM_GUN, "Submachine Guns", "tfa_thompson", 4000)
WeaponShipment(TEAM_GUN, "Submachine Guns", "tfa_tec9", 4000)
WeaponShipment(TEAM_GUN, "Submachine Guns", "tfa_mp7", 6000)
WeaponShipment(TEAM_GUN, "Submachine Guns", "tfa_smgp90", 8000)
WeaponShipment(TEAM_GUN, "Submachine Guns", "tfa_bizonp19", 4000)
WeaponShipment(TEAM_GUN, "Submachine Guns", "tfa_sten", 6000)
WeaponShipment(TEAM_GUN, "Submachine Guns", "tfa_magpulpdr", 6000)
WeaponShipment(TEAM_GUN, "Submachine Guns", "tfa_kac_pdw", 8000)
WeaponShipment(TEAM_GUN, "Submachine Guns", "tfa_honeybadger", 8000)
WeaponShipment(TEAM_GUN, "Submachine Guns", "tfa_mp5sd", 6000)

WeaponShipment(TEAM_GUN, "Assault Rifles", "tfa_famas", 12000)
WeaponShipment(TEAM_GUN, "Assault Rifles", "tfa_ak47", 12000)
WeaponShipment(TEAM_GUN, "Assault Rifles", "tfa_acr", 12000)
WeaponShipment(TEAM_GUN, "Assault Rifles", "tfa_ak74", 12000)
WeaponShipment(TEAM_GUN, "Assault Rifles", "tfa_m14sp", 12000)
WeaponShipment(TEAM_GUN, "Assault Rifles", "tfa_f2000", 12000)
WeaponShipment(TEAM_GUN, "Assault Rifles", "tfa_amd65", 12000)
WeaponShipment(TEAM_GUN, "Assault Rifles", "tfa_g3a3", 12000)
WeaponShipment(TEAM_GUN, "Assault Rifles", "tfa_vikhr", 12000)
WeaponShipment(TEAM_GUN, "Assault Rifles", "tfa_fal", 12000)
WeaponShipment(TEAM_GUN, "Assault Rifles", "tfa_winchester73", 10000)
WeaponShipment(TEAM_GUN, "Assault Rifles", "tfa_m416", 12000)
WeaponShipment(TEAM_GUN, "Assault Rifles", "tfa_val", 12000)
WeaponShipment(TEAM_GUN, "Assault Rifles", "tfa_tar21", 12000)
WeaponShipment(TEAM_GUN, "Assault Rifles", "tfa_scar", 12000)
WeaponShipment(TEAM_GUN, "Assault Rifles", "tfa_m4a1", 12000)
WeaponShipment(TEAM_GUN, "Assault Rifles", "tfa_m16a4_acog", 12000)
WeaponShipment(TEAM_GUN, "Assault Rifles", "tfa_l85", 12000)
WeaponShipment(TEAM_GUN, "Assault Rifles", "tfa_g36", 12000)
WeaponShipment(TEAM_GUN, "Assault Rifles", "tfa_auga3", 12000)
WeaponShipment(TEAM_GUN, "Assault Rifles", "tfa_an94", 12000)

WeaponShipment(TEAM_GUN, "Sniper Rifles", "tfa_svt40", 30000)
WeaponShipment(TEAM_GUN, "Sniper Rifles", "tfa_contender", 20000)
WeaponShipment(TEAM_GUN, "Sniper Rifles", "tfa_psg1", 50000)
WeaponShipment(TEAM_GUN, "Sniper Rifles", "tfa_m98b", 30000)
WeaponShipment(TEAM_GUN, "Sniper Rifles", "tfa_intervention", 42000)
WeaponShipment(TEAM_GUN, "Sniper Rifles", "tfa_barret_m82", 30000)
WeaponShipment(TEAM_GUN, "Sniper Rifles", "tfa_remington7615p", 30000)
WeaponShipment(TEAM_GUN, "Sniper Rifles", "tfa_sl8", 30000)
WeaponShipment(TEAM_GUN, "Sniper Rifles", "tfa_dragunov", 30000)
WeaponShipment(TEAM_GUN, "Sniper Rifles", "tfa_m24", 30000)
WeaponShipment(TEAM_GUN, "Sniper Rifles", "tfa_aw50", 40000)
WeaponShipment(TEAM_GUN, "Sniper Rifles", "tfa_svu", 30000)

WeaponShipment(TEAM_GUN, "Machine Guns", "tfa_pkm", 30000)
WeaponShipment(TEAM_GUN, "Machine Guns", "tfa_m1918bar", 30000)
WeaponShipment(TEAM_GUN, "Machine Guns", "tfa_ares_shrike", 5000)
WeaponShipment(TEAM_GUN, "Machine Guns", "tfa_fg42", 20000)
WeaponShipment(TEAM_GUN, "Machine Guns", "tfa_m60", 30000)
WeaponShipment(TEAM_GUN, "Machine Guns", "tfa_m249lmg", 30000)

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

WeaponShipment(TEAM_BLACKMARKET, "Black Market", "lockpick", 4200)
WeaponShipment(TEAM_BLACKMARKET, "Black Market", "keypad_cracker", 2400)
WeaponShipment(TEAM_BLACKMARKET, "Black Market", "med_kit", 3600)
WeaponShipment(TEAM_BLACKMARKET, "Black Market", "unarrest_stick", 9800)
WeaponShipment(TEAM_BLACKMARKET, "Black Market", "tfa_minigun", 150000)

WeaponShipment(TEAM_VAPE, "Vapes", "weapon_vape", 1000)
WeaponShipment(TEAM_VAPE, "Vapes", "weapon_vape_juicy", 5000)
WeaponShipment(TEAM_VAPE, "Vapes", "weapon_vape_medicinal", 10000)
WeaponShipment(TEAM_VAPE, "Vapes", "weapon_vape_mega", 1000000)

WeaponShipment({TEAM_MAYOR, TEAM_CHIEF, TEAM_WOODY, TEAM_POLICE}, "Government Issue Supplies", "car_bomb_defuser", 4000)
WeaponShipment({TEAM_MAYOR, TEAM_CHIEF, TEAM_WOODY, TEAM_POLICE}, "Government Issue Supplies", "car_bomb_scanner", 2000)

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
