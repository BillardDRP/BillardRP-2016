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
    weapons = {"tfa_sig_p229r", "lockpick", "weapon_bugbait"},
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
