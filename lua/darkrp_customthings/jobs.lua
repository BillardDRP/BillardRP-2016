
local g_RegisterJobWithColor
local g_RegisterJobWithCategory

local function RegisterJobCategory(name, color)
	g_RegisterJobWithColor = color or Color(255, 0, 0)
	g_RegisterJobWithCategory = name or "Other"
end

--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------

This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields


Add jobs under the following line:
---------------------------------------------------------------------------]]

--[[---------------------------------------------------------------------------
CITIZENS
---------------------------------------------------------------------------]]

RegisterJobCategory("Citizens", Color(0, 255, 0))

TEAM_CITIZEN = DarkRP.createJob("Citizen", {
	color = g_RegisterJobWithColor,
	model = {
		"models/player/Group01/Female_01.mdl",
		"models/player/Group01/Female_02.mdl",
		"models/player/Group01/Female_03.mdl",
		"models/player/Group01/Female_04.mdl",
		"models/player/Group01/Female_06.mdl",
		"models/player/group01/male_01.mdl",
		"models/player/Group01/Male_02.mdl",
		"models/player/Group01/male_03.mdl",
		"models/player/Group01/Male_04.mdl",
		"models/player/Group01/Male_05.mdl",
		"models/player/Group01/Male_06.mdl",
		"models/player/Group01/Male_07.mdl",
		"models/player/Group01/Male_08.mdl",
		"models/player/Group01/Male_09.mdl"
	},
	description = [[The Citizen is the most basic level of society you can hold besides being a hobo. You have no specific role in city life.]],
	weapons = {},
	command = "citizen",
	max = 0,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	category = g_RegisterJobWithCategory,
})

TEAM_DOCTOR = DarkRP.createJob("Doctor", {
	color = g_RegisterJobWithColor,
	model = "models/player/kleiner.mdl",
	description = [[With your medical knowledge you work to restore players to full health.
		Without a medic, people cannot be healed.
		Left click with the Medical Kit to heal other players.
		Right click with the Medical Kit to heal yourself.]],
	weapons = {"med_kit"},
	command = "doctor",
	max = 4,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	medic = true,
	category = g_RegisterJobWithCategory,
})

TEAM_BAR = DarkRP.createJob("Bartender", {
	color = g_RegisterJobWithColor,
	model = "models/player/mossman.mdl",
	description = [[Bartenders sell beverages to people.
		They can set up a bar or roam around.]],
	weapons = {},
	command = "bartender",
	max = 4,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = g_RegisterJobWithCategory,
})

TEAM_LAWYER = DarkRP.createJob("Lawyer", {
	color = g_RegisterJobWithColor,
	model = "models/player/gman_high.mdl",
	description = [[Lawyers use their knowledge of the law to release people from jail.
		Releasing people from jail is perfectly legal.]],
	weapons = {"unarrest_stick"},
	command = "lawyer",
	max = 4,
	salary = GAMEMODE.Config.normalsalary * 1.5,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = g_RegisterJobWithCategory,
})

TEAM_GUARD = DarkRP.createJob("Guard", {
	color = g_RegisterJobWithColor,
	model = {"models/player/barney.mdl"},
	description = [[Guards can be paid to protect certain areas or people.]],
	weapons = {"tfcss_usp_alt", "stunstick"},
	command = "guard",
	max = 0,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = true,
	candemote = false,
	category = g_RegisterJobWithCategory,
})

--[[---------------------------------------------------------------------------
CRIMINALS
---------------------------------------------------------------------------]]

RegisterJobCategory("Criminals", Color(255, 0, 0))

TEAM_MAFIA = DarkRP.createJob("Mafia", {
	color = g_RegisterJobWithColor,
	model = {
		"models/player/Group03/Female_01.mdl",
		"models/player/Group03/Female_02.mdl",
		"models/player/Group03/Female_03.mdl",
		"models/player/Group03/Female_04.mdl",
		"models/player/Group03/Female_06.mdl",
		"models/player/group03/male_01.mdl",
		"models/player/Group03/Male_02.mdl",
		"models/player/Group03/male_03.mdl",
		"models/player/Group03/Male_04.mdl",
		"models/player/Group03/Male_05.mdl",
		"models/player/Group03/Male_06.mdl",
		"models/player/Group03/Male_07.mdl",
		"models/player/Group03/Male_08.mdl",
		"models/player/Group03/Male_09.mdl"},
	description = [[The lowest person of crime.
		The Mafia must work for the Godfather who runs the crime family.
		The Godfather sets your agenda and you follow it or you might be punished.]],
	weapons = {},
	command = "mafia",
	max = 6,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = g_RegisterJobWithCategory,
})

TEAM_GODFATHER = DarkRP.createJob("Godfather", {
	color = g_RegisterJobWithColor,
	model = "models/player/gman_high.mdl",
	description = [[The Mob boss is the boss of the criminals in the city.
		With his power he coordinates the gangsters and forms an efficient crime organization.
		He has the ability to break into houses by using a lockpick.
		The Mob boss posesses the ability to unarrest you.]],
	weapons = {"lockpick", "unarrest_stick"},
	command = "godfather",
	max = 1,
	salary = GAMEMODE.Config.normalsalary * 1.75,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = g_RegisterJobWithCategory,
})

TEAM_THIEF = DarkRP.createJob("Thief", {
	color = g_RegisterJobWithColor,
	model = {"models/player/phoenix.mdl", "models/player/arctic.mdl"},
	description = [[Thieves pick locks to break into peoples homes and steal their possessions.]],
	weapons = {"lockpick"},
	command = "thief",
	max = 6,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = g_RegisterJobWithCategory,
})

TEAM_HACKER = DarkRP.createJob("Hacker", {
	color = g_RegisterJobWithColor,
	model = "models/player/magnusson.mdl",
	description = [[Hacker hack keypads to break into peoples homes and steal their possessions.]],
	weapons = {"keypad_cracker"},
	command = "hacker",
	max = 6,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = g_RegisterJobWithCategory,
})

TEAM_TERROR = DarkRP.createJob("Terrorist", {
	color = g_RegisterJobWithColor,
	model = "models/player/guerilla.mdl",
	description = [[Terrorists spread terror throughout the city and are in a constant war with the government.]],
	weapons = {"tfcss_ak47_alt"},
	command = "terrorist",
	max = 6,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = g_RegisterJobWithCategory,
})

TEAM_TERRORLEADER = DarkRP.createJob("Terrorist Leader", {
	color = g_RegisterJobWithColor,
	model = "models/player/guerilla.mdl",
	description = [[The terrorist leader leads the terrorists in their war against the government.]],
	weapons = {"tfcss_ak47_alt"},
	command = "terroristleader",
	max = 1,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = g_RegisterJobWithCategory,
})

TEAM_NAZI = DarkRP.createJob("Nazi", {
	color = g_RegisterJobWithColor,
	model = "models/player/dod_german.mdl",
	description = [[Nazis are on a quest to exterminate all jews and correct everyone's grammar.
		Killing jews in public is perfectly legal.]],
	weapons = {"tfa_luger"},
	command = "nazi",
	max = 6,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = g_RegisterJobWithCategory,
})

TEAM_HITLER = DarkRP.createJob("Adolf Hitler", {
	color = g_RegisterJobWithColor,
	model = "models/player/dod_german.mdl",
	description = [[Hitler leads the Nazis in their quest to exterminate all jews.]],
	weapons = {"tfa_mp40", "tfa_luger"},
	command = "hitler",
	max = 1,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = g_RegisterJobWithCategory,
})

--[[---------------------------------------------------------------------------
DEALERS
---------------------------------------------------------------------------]]

RegisterJobCategory("Salesmen", Color(30, 190, 120))

TEAM_GUN = DarkRP.createJob("Gun Dealer", {
	color = g_RegisterJobWithColor,
	model = "models/player/monk.mdl",
	description = [[Gun dealers sell firearms to other people.
		Make sure you aren't caught selling illegal firearms to the public! You might get arrested!]],
	weapons = {},
	command = "gundealer",
	max = 4,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = g_RegisterJobWithCategory,
})

TEAM_DRUG = DarkRP.createJob("Drug Dealer", {
	color = g_RegisterJobWithColor,
	model = "models/player/soldier_stripped.mdl",
	description = [[Drug dealers sell drugs to other people.
		Make sure you aren't caught selling illegal drugs to the public! You might get arrested!]],
	weapons = {},
	command = "drugdealer",
	max = 4,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = g_RegisterJobWithCategory,
})

TEAM_VAPE = DarkRP.createJob("Vape Dealer", {
	color = g_RegisterJobWithColor,
	model = "models/player/soldier_stripped.mdl",
	description = [[Vape dealers sell vapes so people can rip fat clouds.]],
	weapons = {},
	command = "vapedealer",
	max = 4,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = g_RegisterJobWithCategory,
})

TEAM_BLACKMARKET = DarkRP.createJob("Black Market Dealer", {
	color = g_RegisterJobWithColor,
	model = "models/player/eli.mdl",
	description = [[Black market dealers sell highly illegal items to other people.
		Make sure you aren't caught selling illegal items to the public! You might get arrested!]],
	weapons = {},
	command = "blackmarket",
	max = 4,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = g_RegisterJobWithCategory,
})


--[[---------------------------------------------------------------------------
HOMELESS
---------------------------------------------------------------------------]]

RegisterJobCategory("Homeless", Color(100, 60, 20))

TEAM_HOBO = DarkRP.createJob("Hobo", {
	color = g_RegisterJobWithColor,
	model = "models/player/corpse1.mdl",
	description = [[The lowest member of society. Everybody laughs at you.
		You have no home.
		Beg for your food and money.
		Sing for everyone who passes to get money.
		Make your own wooden home somewhere in a corner or outside someone else's door.]],
	weapons = {"weapon_bugbait"},
	command = "hobo",
	max = 6,
	salary = 0,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	hobo = true,
	category = g_RegisterJobWithCategory,
})

TEAM_SUPERHOBO = DarkRP.createJob("Super Hobo", {
	color = g_RegisterJobWithColor,
	model = "models/player/charple.mdl",
	description = [[Slighter higher than the lowest member of society.
		All hobos look up to you.
		You can lead the hobos to a rebellion against the government.
		You carry a bent paperclip that can be used to pick locks.
		You also carry a BB gun your father gave you before he died.]],
	weapons = {"tfcss_p228_alt", "lockpick", "weapon_bugbait"},
	command = "superhobo",
	max = 1,
	salary = 0,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	hobo = true,
	category = g_RegisterJobWithCategory,
})


--[[---------------------------------------------------------------------------
POLICE
---------------------------------------------------------------------------]]

RegisterJobCategory("Police", Color(0, 0, 255))

TEAM_POLICE = DarkRP.createJob("Police Officer", {
	color = g_RegisterJobWithColor,
	model = {"models/player/police.mdl", "models/player/police_fem.mdl"},
	description = [[The protector of every citizen that lives in the city.
		You have the power to arrest criminals and protect innocents.
		Hit a player with your arrest baton to put them in jail.
		Bash a player with a stunstick and they may learn to obey the law.
		The Battering Ram can break down the door of a criminal, with a warrant for their arrest.
		The Battering Ram can also unfreeze frozen props (if enabled).
		Type /wanted <name> to alert the public to the presence of a criminal.]],
	weapons = {"arrest_stick", "unarrest_stick", "tfcss_usp_alt", "stunstick", "door_ram", "weaponchecker"},
	command = "cp",
	max = 8,
	salary = GAMEMODE.Config.normalsalary * 1.5,
	admin = 0,
	vote = true,
	hasLicense = true,
	ammo = {
		["pistol"] = 60,
	},
	category = g_RegisterJobWithCategory,
})

TEAM_CHIEF = DarkRP.createJob("Police Chief", {
	color = g_RegisterJobWithColor,
	model = "models/player/combine_soldier_prisonguard.mdl",
	description = [[The Chief is the leader of the Civil Protection unit.
		Coordinate the police force to enforce law in the city.
		Hit a player with arrest baton to put them in jail.
		Bash a player with a stunstick and they may learn to obey the law.
		The Battering Ram can break down the door of a criminal, with a warrant for his/her arrest.
		Type /wanted <name> to alert the public to the presence of a criminal.
		Type /jailpos to set the Jail Position]],
	weapons = {"arrest_stick", "unarrest_stick", "tfcss_usp_alt", "tfcss_mp5_alt", "stunstick", "door_ram", "weaponchecker"},
	command = "chief",
	max = 1,
	salary = GAMEMODE.Config.normalsalary * 1.75,
	admin = 0,
	vote = false,
	hasLicense = true,
	chief = true,
	ammo = {
		["pistol"] = 60,
	},
	category = g_RegisterJobWithCategory,
})

TEAM_MAYOR = DarkRP.createJob("Mayor", {
	color = g_RegisterJobWithColor,
	model = "models/player/breen.mdl",
	description = [[The Mayor of the city creates laws to govern the city.
	If you are the mayor you may create and accept warrants.
	Type /wanted <name>  to warrant a player.
	Type /jailpos to set the Jail Position.
	Type /lockdown initiate a lockdown of the city.
	Everyone must be inside during a lockdown.
	The cops patrol the area.
	/unlockdown to end a lockdown]],
	weapons = {},
	command = "mayor",
	max = 1,
	salary = GAMEMODE.Config.normalsalary * 2,
	admin = 0,
	vote = true,
	hasLicense = false,
	mayor = true,
	category = g_RegisterJobWithCategory,
})

--[[---------------------------------------------------------------------------
SPECIAL
---------------------------------------------------------------------------]]

RegisterJobCategory("Special", Color(255, 0, 255))

TEAM_KARDASHIAN = DarkRP.createJob("Kim Kardashian", {
	color = g_RegisterJobWithColor,
	model = "models/player/alyx.mdl",
	description = [[You are extremely stupid.
		You make lots of money.
		You are always KOS.]],
	weapons = {},
	command = "kardashian",
	max = 1,
	salary = GAMEMODE.Config.normalsalary * 4,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = g_RegisterJobWithCategory,
	customCheck = function(ply) return #player.GetAll() > 3 end,
	CustomCheckFailMsg = "There must be at least four players on the server to play as Kim Kardashian!"
})

TEAM_EDGYTEEN = DarkRP.createJob("Edgy Teen", {
	color = g_RegisterJobWithColor,
	model = "models/player/p2_chell.mdl",
	description = [[Your tumblr is filled with suicidal memes.]],
	weapons = {},
	command = "edgyteen",
	max = 1,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = g_RegisterJobWithCategory,
})

TEAM_SHITTYSTARWARSCOSPLAYER = DarkRP.createJob("Star Wars Cosplayer", {
	color = g_RegisterJobWithColor,
	model = "models/player/odessa.mdl",
	description = [[You think you are cool.
		You carry around a small blue plastic lightsaber.
		You are free to hit people, but they can kill you if you do.]],
	weapons = {"stunstick"},
	command = "starwarscosplayer",
	max = 1,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = g_RegisterJobWithCategory,
})

TEAM_FEMINIST = DarkRP.createJob("Feminist", {
	color = g_RegisterJobWithColor,
	model = "models/player/p2_chell.mdl",
	description = [[You are really, REALLY stupid.]],
	weapons = {},
	command = "feminist",
	max = 4,
	salary = GAMEMODE.Config.normalsalary,
	admin = 0,
	vote = false,
	hasLicense = false,
	category = g_RegisterJobWithCategory,
})

--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CITIZEN

--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
	[TEAM_POLICE] = true,
	[TEAM_CHIEF] = true,
	[TEAM_MAYOR] = true,
}

--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_GODFATHER)
DarkRP.addHitmanTeam(TEAM_HITMAN)
