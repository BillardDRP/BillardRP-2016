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
    command = "medic",
    max = 3,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    medic = true,
    category = g_RegisterJobWithCategory,
})

TEAM_GUARD = DarkRP.createJob("Guard", {
    color = g_RegisterJobWithColor,
    model = {"models/player/barney.mdl"},
    description = [[Guards can be paid to protect certain areas or people.]],
    weapons = {"tfa_sig_p229r", "stunstick"},
    command = "guard",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = true,
    candemote = false,
    category = g_RegisterJobWithCategory,
})
