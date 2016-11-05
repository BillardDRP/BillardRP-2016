TEAM_GUN = DarkRP.createJob("Gun Dealer", {
    color = g_RegisterJobWithColor,
    model = "models/player/monk.mdl",
    description = [[TGun dealers sell firearms to other people.
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

TEAM_BLACKMARKET = DarkRP.createJob("Black Market Dealer", {
    color = g_RegisterJobWithColor,
    model = "models/player/monk.mdl",
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
