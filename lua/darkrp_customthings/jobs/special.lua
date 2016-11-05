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
    weapons = {},
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
