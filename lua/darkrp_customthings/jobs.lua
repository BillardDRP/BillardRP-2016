local function RegisterJobCategory(id, name, color)
	g_RegisterJobWithColor = color or Color(255, 0, 0)
	g_RegisterJobWithCategory = name or "Other"
	include("jobs/" .. id .. ".lua")
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

RegisterJobCategory("citizens", "Citizens", Color(0, 255, 0))
RegisterJobCategory("crime", "Criminals", Color(255, 0, 0))
RegisterJobCategory("dealers", "Salesmen", Color(0, 255, 255))
RegisterJobCategory("police", "Civil Protection", Color(0, 0, 255))
RegisterJobCategory("hobos", "Unemployed", Color(255, 255, 0))

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
