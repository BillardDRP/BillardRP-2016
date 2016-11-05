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
    weapons = {"arrest_stick", "unarrest_stick", "tfa_colt1911", "stunstick", "door_ram", "weaponchecker"},
    command = "cp",
    max = 4,
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
    weapons = {"arrest_stick", "unarrest_stick", "tfa_colt1911", "tfa_mp5", "stunstick", "door_ram", "weaponchecker"},
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
