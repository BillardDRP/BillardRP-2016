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
    weapons = {"lockpick"},
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
    weapons = {"tfa_ak47"},
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
    weapons = {"tfa_ak47"},
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
