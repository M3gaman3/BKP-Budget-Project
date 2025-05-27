Config = {}
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add setr UseTarget true)
Config.MinimalDoctors = 2                                    -- How many players with the ambulance job to prevent the hospital check-in system from being used
Config.DocCooldown = 1                                       -- Cooldown between doctor calls allowed, in minutes
Config.WipeInventoryOnRespawn = true                         -- Enable or disable removing all the players items when they respawn at the hospital
Config.RespawnAtNearestHospital = true                       -- Enable or disable respawning at the closest hospital
Config.Helicopter = 'polmav'                                 -- Helicopter model that players with the ambulance job can use
Config.BillCost = 1000                                       -- Price that players are charged for using the hospital check-in system
Config.DeathTime = 120                                       -- How long the timer is for players to bleed out completely and respawn at the hospital
Config.ReviveInterval = 360                                  -- How long the timer is for players to revive a player in laststand
Config.MinimumRevive = 120                                   -- How long the timer is for players to revive a player in laststand
Config.PainkillerInterval = 60                               -- Set the length of time painkillers last (per one)
Config.HealthDamage = 5                                      -- Minumum damage done to health before checking for injuries
Config.ArmorDamage = 5                                       -- Minumum damage done to armor before checking for injuries
Config.ForceInjury = 35                                      -- Maximum amount of damage a player can take before limb damage & effects are forced to occur
Config.AlwaysBleedChance = 70                                -- Set the chance out of 100 that if a player is hit with a weapon, that also has a random chance, it will cause bleeding
Config.MessageTimer = 12                                     -- How long it will take to display limb/bleed message
Config.AIHealTimer = 13                                      -- How long it will take to be healed after checking in, in seconds
Config.BleedTickRate = 30                                    -- How much time, in seconds, between bleed ticks
Config.BleedMovementTick = 10                                -- How many seconds is taken away from the bleed tick rate if the player is walking, jogging, or sprinting
Config.BleedMovementAdvance = 3                              -- How much time moving while bleeding adds
Config.BleedTickDamage = 8                                   -- The base damage that is multiplied by bleed level everytime a bleed tick occurs
Config.FadeOutTimer = 2                                      -- How many bleed ticks occur before fadeout happens
Config.BlackoutTimer = 10                                    -- How many bleed ticks occur before blacking out
Config.AdvanceBleedTimer = 10                                -- How many bleed ticks occur before bleed level increases
Config.HeadInjuryTimer = 30                                  -- How much time, in seconds, do head injury effects chance occur
Config.ArmInjuryTimer = 30                                   -- How much time, in seconds, do arm injury effects chance occur
Config.LegInjuryTimer = 15                                   -- How much time, in seconds, do leg injury effects chance occur
Config.HeadInjuryChance = 25                                 -- The chance, in percent, that head injury side-effects get applied
Config.LegInjuryChance = {                                   -- The chance, in percent, that leg injury side-effects get applied
    Running = 50,
    Walking = 15
}
Config.MajorArmoredBleedChance = 45 -- The chance, in percent, that a player will get a bleed effect when taking heavy damage while wearing armor
Config.MaxInjuryChanceMulti = 3     -- How many times the HealthDamage value above can divide into damage taken before damage is forced to be applied
Config.DamageMinorToMajor = 35      -- How much damage would have to be applied for a minor weapon to be considered a major damage event. Put this at 100 if you want to disable it
Config.AlertShowInfo = 2            -- How many injuries a player must have before being alerted about them

Config.Locations = {                -- Edit the various interaction points for players or create new ones
    ['checking'] = {
        vector3(308.19, -595.35, 43.29), -- city
        vector3(1141.3, -1539.16, 35.38),  -- east los santos
        vector3(576.53, 2662.53, 42.0), -- sandy 
        vector3(-253.29, 6330.03, 32.43), -- paleto
        vector3(2815.08, 5980.24, 350.93), -- paleto secret
        vector3(5054.58, -5091.66, 5.57), -- cayo perico secret
    },
    ['duty'] = {
        vector3(311.18, -599.25, 43.29), -- city
        vector3(1129.35, -1575.7, 35.42), -- east los santos
        vector3(578.44, 2670.06, 41.75), -- sandy
        vector3(-255.54, 6330.34, 32.43), -- paleto
        vector3(4487.66, -4512.74, 4.16), -- cayo perico
    },
    ['vehicle'] = {
        vector4(294.578, -574.761, 43.179, 35.79), -- city
        vector4(1142.05, -1587.25, 35.38, 181.26), -- east lost santos
        vector4(566.95, 2667.25, 42.06, 8.19), -- sandy
        vector4(-257.48, 6338.36, 32.43, 135.23), -- paleto
        vector4(4480.38, -4521.41, 4.2, 17.09), -- cayo perico
    },
    ['helicopter'] = {
        vector4(351.58, -587.45, 74.16, 160.5), -- city
        vector4(1213.43, -1540.96, 39.4, 108.97), -- east lost santos
        vector4(558.35, 2657.57, 42.17, 14.21), -- sandy
        vector4(-276.3, 6328.79, 32.81, 137.43), -- paleto
        vector4(4464.32, -4547.63, 5.46, 1.53), -- cayo perico
    },
    ['roof'] = {
        vector4(338.5, -583.85, 74.16, 245.5),
    },
    ['main'] = {
        vector3(298.74, -599.33, 43.29),
    },
    ['stash'] = {
        vector3(309.78, -596.6, 43.29), -- city
        vector3(1125.71, -1572.23, 35.48), -- east los santos
        vector3(580.69, 2671.53, 42.09), -- sandy
        vector3(-258.29, 6332.45, 32.24), -- paleto
        vector3(4487.13, -4511.02, 4.18), -- cayo
    },
    ['beds'] = {
        { coords = vector4(353.1, -584.6, 43.11, 152.08),    taken = false, model = 1631638868 },
        { coords = vector4(356.79, -585.86, 43.11, 152.08),  taken = false, model = 1631638868 },
        { coords = vector4(354.12, -593.12, 43.1, 336.32),   taken = false, model = 2117668672 },
        { coords = vector4(350.79, -591.8, 43.1, 336.32),    taken = false, model = 2117668672 },
        { coords = vector4(346.99, -590.48, 43.1, 336.32),   taken = false, model = 2117668672 },
        { coords = vector4(360.32, -587.19, 43.02, 152.08),  taken = false, model = -1091386327 },
        { coords = vector4(349.82, -583.33, 43.02, 152.08),  taken = false, model = -1091386327 },
        { coords = vector4(326.98, -576.17, 43.02, 152.08),  taken = false, model = -1091386327 },
        --- east los santos
        { coords = vector4(1133.35, -1580.11, 36.3, 1.44),  taken = false, model = 1631638868 },
        { coords = vector4(1126.36, -1580.73, 36.3, 261.27),   taken = false, model = 2117668672 },
        { coords = vector4(1126.16, -1584.49, 36.3, 270.78),    taken = false, model = 2117668672 },
        { coords = vector4(1126.26, -1588.31, 36.3, 282.15),   taken = false, model = 2117668672 },
        { coords = vector4(1126.4, -1592.16, 36.3, 269.69),  taken = false, model = -1091386327 },
        { coords = vector4(1148.91, -1563.06, 36.29, 355.32),  taken = false, model = -1091386327 },
        { coords = vector4(1149.02, -1565.73, 36.29, 185.58),  taken = false, model = -1091386327 },
        { coords = vector4(1121.56, -1553.73, 35.9, 185.49),  taken = false, model = -1091386327 },
        { coords = vector4(1127.16, -1554.53, 36.04, 357.28),  taken = false, model = -1091386327 },
        { coords = vector4(1127.3, -1553.61, 35.9, 177.55),  taken = false, model = -1091386327 },
        { coords = vector4(1126.53, -1562.31, 35.9, 358.54),  taken = false, model = -1091386327 },
        { coords = vector4(1123.67, -1562.16, 35.9, 358.65),  taken = false, model = -1091386327 },
        { coords = vector4(1121.04, -1562.36, 35.9, 1.65),  taken = false, model = -1091386327 },
        { coords = vector4(1120.56, -1547.19, 35.9, 11.26),  taken = false, model = -1091386327 },
        { coords = vector4(1123.68, -1547.12, 35.9, 355.25),  taken = false, model = -1091386327 },
        { coords = vector4(1126.7, -1547.08, 35.9, 3.59),  taken = false, model = -1091386327 },
        { coords = vector4(1127.27, -1538.28, 35.9, 175.01),  taken = false, model = -1091386327 },
        { coords = vector4(1124.11, -1538.44, 35.9, 177.18),  taken = false, model = -1091386327 },
        { coords = vector4(1121.14, -1538.5, 35.9, 177.45),  taken = false, model = -1091386327 },
        { coords = vector4(1113.66, -1530.32, 35.75, 57.19),  taken = false, model = -1091386327 },
        { coords = vector4(1098.59, -1523.9, 35.75, 352.49),  taken = false, model = -1091386327 },
        { coords = vector4(1098.28, -1520.22, 35.75, 186.0),  taken = false, model = -1091386327 },
        --- sandy 
        { coords = vector4(583.22, 2668.51, 41.96, 102.52), taken = false, model = 2117668672 },
        { coords = vector4(584.07, 2663.98, 41.96, 98.15), taken = false, model = 2117668672 },
        --- paleto
        { coords = vector4(-247.3, 6317.87, 32.34, 144.19), taken = false, model = 2117668672 },
        { coords = vector4(-245.39, 6316.19, 32.34, 133.7), taken = false, model = 2117668672 },
        { coords = vector4(-251.05, 6310.36, 32.34, 313.23), taken = false, model = 2117668672 },
        { coords = vector4(-252.62, 6312.02, 32.34, 313.49), taken = false, model = 2117668672 },
        { coords = vector4(-254.29, 6313.72, 32.34, 301.13), taken = false, model = 2117668672 },
        { coords = vector4(-256.13, 6315.55, 32.34, 320.16), taken = false, model = 2117668672 },
        { coords = vector4(-252.15, 6323.23, 32.34, 136.84), taken = false, model = 2117668672 },
        --- paleto secret
        { coords = vector4(2811.6, 5975.34, 351.81, 37.21), taken = false, model = 2117668672 },
        --- cayo perico secret
        { coords = vector4(5051.01, -5096.36, 5.45, 48.38), taken = false, model = 2117668672 },
    },
    ['jailbeds'] = {
        { coords = vector4(1761.96, 2597.74, 45.66, 270.14), taken = false, model = 2117668672 },
        { coords = vector4(1761.96, 2591.51, 45.66, 269.8),  taken = false, model = 2117668672 },
        { coords = vector4(1771.8, 2598.02, 45.66, 89.05),   taken = false, model = 2117668672 },
        { coords = vector4(1771.85, 2591.85, 45.66, 91.51),  taken = false, model = 2117668672 },
    },
    ['hospital'] = {
        {
            ['name'] = Lang:t('info.pb_hospital'),
            ['location'] = vector3(308.36, -595.25, 43.28),
            ['beds'] = {
                {coords = vector4(353.1, -584.6, 43.11, 152.08), taken = false, model = 1631638868},
                {coords = vector4(356.79, -585.86, 43.11, 152.08), taken = false, model = 1631638868},
                {coords = vector4(354.12, -593.12, 43.1, 336.32), taken = false, model = 2117668672},
                {coords = vector4(350.79, -591.8, 43.1, 336.32), taken = false, model = 2117668672},
                {coords = vector4(346.99, -590.48, 43.1, 336.32), taken = false, model = 2117668672},
                {coords = vector4(360.32, -587.19, 43.02, 152.08), taken = false, model = -1091386327},
                {coords = vector4(349.82, -583.33, 43.02, 152.08), taken = false, model = -1091386327},
                {coords = vector4(326.98, -576.17, 43.02, 152.08), taken = false, model = -1091386327},
            },
        },
                {
            ['name'] = Lang:t('info.els_hospital'),
            ['location'] = vector3(1141.3, -1539.16, 35.38),
            ['beds'] = {
                { coords = vector4(1133.35, -1580.11, 36.3, 1.44),  taken = false, model = 1631638868 },
                { coords = vector4(1126.36, -1580.73, 36.3, 261.27),   taken = false, model = 2117668672 },
                { coords = vector4(1126.16, -1584.49, 36.3, 270.78),    taken = false, model = 2117668672 },
                { coords = vector4(1126.26, -1588.31, 36.3, 282.15),   taken = false, model = 2117668672 },
                { coords = vector4(1126.4, -1592.16, 36.3, 269.69),  taken = false, model = -1091386327 },
                { coords = vector4(1148.91, -1563.06, 36.29, 355.32),  taken = false, model = -1091386327 },
                { coords = vector4(1149.02, -1565.73, 36.29, 185.58),  taken = false, model = -1091386327 },
            },
        },
                {
            ['name'] = Lang:t('info.sd_hospital'),
            ['location'] = vector3(576.53, 2662.53, 42.0),
            ['beds'] = {
                [1] = {coords = vector4(583.22, 2668.51, 41.96, 102.52), taken = false, model = 1631638868},
                [2] = {coords = vector4(584.07, 2663.98, 41.96, 98.15), taken = false, model = 1631638868},
            },
        },
        {
            ['name'] = Lang:t('info.pt_hospital'),
            ['location'] = vector3(-253.39, 6328.47, 32.43),
            ['beds'] = {
                {coords = vector4(-247.3, 6317.87, 32.34, 144.19), taken = false, model = 2117668672},
                {coords = vector4(-245.39, 6316.19, 32.34, 133.7), taken = false, model = 2117668672},
                {coords = vector4(-251.05, 6310.36, 32.34, 313.23), taken = false, model = 2117668672},
                {coords = vector4(-252.62, 6312.02, 32.34, 313.49), taken = false, model = 2117668672},
                {coords = vector4(-254.29, 6313.72, 32.34, 301.13), taken = false, model = 2117668672},
                {coords = vector4(-256.13, 6315.55, 32.34, 320.16), taken = false, model = 2117668672},
                {coords = vector4(-252.15, 6323.23, 32.34, 136.84), taken = false, model = 2117668672},
            },
        },
        {
            ['name'] = Lang:t('info.cp_hospital'),
            ['location'] = vector3(4490.97, -4509.43, 4.18),
            ['beds'] = {
            },
        },
        {
            ['name'] = Lang:t('info.ps_hospital'),
            ['location'] = vector3(2815.08, 5980.24, 350.93),
            ['beds'] = {
                [1] = {coords = vector4(2811.6, 5975.34, 351.81, 37.21), taken = false, model = 1631638868},
            },
        },
        {
            ['name'] = Lang:t('info.cs_hospital'),
            ['location'] = vector3(5054.58, -5091.66, 5.57),
            ['beds'] = {
                [1] = {coords = vector4(5051.01, -5096.36, 5.45, 48.38), taken = false, model = 1631638868},
            },
        },
    },
    ['stations'] = {
        { label = Lang:t('info.pb_hospital'), coords = vector3(304.27, -600.33, 43.28) },
        { label = Lang:t('info.els_hospital'), coords = vector3(1159.92, -1532.06, 34.84) },
        { label = Lang:t('info.sd_hospital'), coords = vector3(570.81, 2669.81, 42.01) },
        { label = Lang:t('info.pt_hospital'), coords = vector3(-253.39, 6328.47, 32.43) },
        { label = Lang:t('info.cp_hospital'), coords = vector3(4490.97, -4509.43, 4.18) }
    }
}

Config.AuthorizedVehicles = { -- Grade is key, don't add same vehicle in multiple grades. Higher rank can see lower
    [0] = {
        ['ambulance'] = 'Ambulance'
    }
}

Config.WeaponClasses = { -- Define gta weapon classe numbers
    ['SMALL_CALIBER'] = 1,
    ['MEDIUM_CALIBER'] = 2,
    ['HIGH_CALIBER'] = 3,
    ['SHOTGUN'] = 4,
    ['CUTTING'] = 5,
    ['LIGHT_IMPACT'] = 6,
    ['HEAVY_IMPACT'] = 7,
    ['EXPLOSIVE'] = 8,
    ['FIRE'] = 9,
    ['SUFFOCATING'] = 10,
    ['OTHER'] = 11,
    ['WILDLIFE'] = 12,
    ['NOTHING'] = 13
}

Config.MinorInjurWeapons = { -- Define which weapons cause small injuries
    [Config.WeaponClasses['SMALL_CALIBER']] = true,
    [Config.WeaponClasses['MEDIUM_CALIBER']] = true,
    [Config.WeaponClasses['CUTTING']] = true,
    [Config.WeaponClasses['WILDLIFE']] = true,
    [Config.WeaponClasses['OTHER']] = true,
    [Config.WeaponClasses['LIGHT_IMPACT']] = true,
}

Config.MajorInjurWeapons = { -- Define which weapons cause large injuries
    [Config.WeaponClasses['HIGH_CALIBER']] = true,
    [Config.WeaponClasses['HEAVY_IMPACT']] = true,
    [Config.WeaponClasses['SHOTGUN']] = true,
    [Config.WeaponClasses['EXPLOSIVE']] = true,
}

Config.AlwaysBleedChanceWeapons = { -- Define which weapons will always cause bleedign
    [Config.WeaponClasses['SMALL_CALIBER']] = true,
    [Config.WeaponClasses['MEDIUM_CALIBER']] = true,
    [Config.WeaponClasses['CUTTING']] = true,
    [Config.WeaponClasses['WILDLIFE']] = false,
}

Config.ForceInjuryWeapons = { -- Define which weapons will always cause injuries
    [Config.WeaponClasses['HIGH_CALIBER']] = true,
    [Config.WeaponClasses['HEAVY_IMPACT']] = true,
    [Config.WeaponClasses['EXPLOSIVE']] = true,
}

Config.CriticalAreas = { -- Define body areas that will always cause bleeding if wearing armor or not
    ['UPPER_BODY'] = { armored = false },
    ['LOWER_BODY'] = { armored = true },
    ['SPINE'] = { armored = true },
}

Config.StaggerAreas = { -- Define body areas that will always cause staggering if wearing armor or not
    ['SPINE'] = { armored = true, major = 60, minor = 30 },
    ['UPPER_BODY'] = { armored = false, major = 60, minor = 30 },
    ['LLEG'] = { armored = true, major = 100, minor = 85 },
    ['RLEG'] = { armored = true, major = 100, minor = 85 },
    ['LFOOT'] = { armored = true, major = 100, minor = 100 },
    ['RFOOT'] = { armored = true, major = 100, minor = 100 },
}

Config.WoundStates = { -- Translate wound alerts
    Lang:t('states.irritated'),
    Lang:t('states.quite_painful'),
    Lang:t('states.painful'),
    Lang:t('states.really_painful'),
}

Config.BleedingStates = { -- Translate bleeding alerts
    { label = Lang:t('states.little_bleed') },
    { label = Lang:t('states.bleed') },
    { label = Lang:t('states.lot_bleed') },
    { label = Lang:t('states.big_bleed') },
}

Config.MovementRate = { -- Set the player movement rate based on the level of damage they have
    0.98,
    0.96,
    0.94,
    0.92,
}

Config.Bones = { -- Correspond bone hash numbers to their label
    [0]     = 'NONE',
    [31085] = 'HEAD',
    [31086] = 'HEAD',
    [39317] = 'NECK',
    [57597] = 'SPINE',
    [23553] = 'SPINE',
    [24816] = 'SPINE',
    [24817] = 'SPINE',
    [24818] = 'SPINE',
    [10706] = 'UPPER_BODY',
    [64729] = 'UPPER_BODY',
    [11816] = 'LOWER_BODY',
    [45509] = 'LARM',
    [61163] = 'LARM',
    [18905] = 'LHAND',
    [4089]  = 'LFINGER',
    [4090]  = 'LFINGER',
    [4137]  = 'LFINGER',
    [4138]  = 'LFINGER',
    [4153]  = 'LFINGER',
    [4154]  = 'LFINGER',
    [4169]  = 'LFINGER',
    [4170]  = 'LFINGER',
    [4185]  = 'LFINGER',
    [4186]  = 'LFINGER',
    [26610] = 'LFINGER',
    [26611] = 'LFINGER',
    [26612] = 'LFINGER',
    [26613] = 'LFINGER',
    [26614] = 'LFINGER',
    [58271] = 'LLEG',
    [63931] = 'LLEG',
    [2108]  = 'LFOOT',
    [14201] = 'LFOOT',
    [40269] = 'RARM',
    [28252] = 'RARM',
    [57005] = 'RHAND',
    [58866] = 'RFINGER',
    [58867] = 'RFINGER',
    [58868] = 'RFINGER',
    [58869] = 'RFINGER',
    [58870] = 'RFINGER',
    [64016] = 'RFINGER',
    [64017] = 'RFINGER',
    [64064] = 'RFINGER',
    [64065] = 'RFINGER',
    [64080] = 'RFINGER',
    [64081] = 'RFINGER',
    [64096] = 'RFINGER',
    [64097] = 'RFINGER',
    [64112] = 'RFINGER',
    [64113] = 'RFINGER',
    [36864] = 'RLEG',
    [51826] = 'RLEG',
    [20781] = 'RFOOT',
    [52301] = 'RFOOT',
}

Config.BoneIndexes = { -- Correspond bone labels to their hash number
    ['NONE'] = 0,
    -- ['HEAD'] = 31085,
    ['HEAD'] = 31086,
    ['NECK'] = 39317,
    -- ['SPINE'] = 57597,
    -- ['SPINE'] = 23553,
    -- ['SPINE'] = 24816,
    -- ['SPINE'] = 24817,
    ['SPINE'] = 24818,
    -- ['UPPER_BODY'] = 10706,
    ['UPPER_BODY'] = 64729,
    ['LOWER_BODY'] = 11816,
    -- ['LARM'] = 45509,
    ['LARM'] = 61163,
    ['LHAND'] = 18905,
    -- ['LFINGER'] = 4089,
    -- ['LFINGER'] = 4090,
    -- ['LFINGER'] = 4137,
    -- ['LFINGER'] = 4138,
    -- ['LFINGER'] = 4153,
    -- ['LFINGER'] = 4154,
    -- ['LFINGER'] = 4169,
    -- ['LFINGER'] = 4170,
    -- ['LFINGER'] = 4185,
    -- ['LFINGER'] = 4186,
    -- ['LFINGER'] = 26610,
    -- ['LFINGER'] = 26611,
    -- ['LFINGER'] = 26612,
    -- ['LFINGER'] = 26613,
    ['LFINGER'] = 26614,
    -- ['LLEG'] = 58271,
    ['LLEG'] = 63931,
    -- ['LFOOT'] = 2108,
    ['LFOOT'] = 14201,
    -- ['RARM'] = 40269,
    ['RARM'] = 28252,
    ['RHAND'] = 57005,
    -- ['RFINGER'] = 58866,
    -- ['RFINGER'] = 58867,
    -- ['RFINGER'] = 58868,
    -- ['RFINGER'] = 58869,
    -- ['RFINGER'] = 58870,
    -- ['RFINGER'] = 64016,
    -- ['RFINGER'] = 64017,
    -- ['RFINGER'] = 64064,
    -- ['RFINGER'] = 64065,
    -- ['RFINGER'] = 64080,
    -- ['RFINGER'] = 64081,
    -- ['RFINGER'] = 64096,
    -- ['RFINGER'] = 64097,
    -- ['RFINGER'] = 64112,
    ['RFINGER'] = 64113,
    -- ['RLEG'] = 36864,
    ['RLEG'] = 51826,
    -- ['RFOOT'] = 20781,
    ['RFOOT'] = 52301,
}

Config.Weapons = { -- Correspond weapon names to their class number
    [`WEAPON_STUNGUN`] = Config.WeaponClasses['NONE'],
    [`WEAPON_STUNGUN_MP`] = Config.WeaponClasses['NONE'],
    --[[ Small Caliber ]] --
    [`WEAPON_PISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_COMBATPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_APPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_COMBATPDW`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_MACHINEPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_MICROSMG`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_MINISMG`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_PISTOL_MK2`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_SNSPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_SNSPISTOL_MK2`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_VINTAGEPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],

    --[[ Medium Caliber ]] --
    [`WEAPON_ADVANCEDRIFLE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_ASSAULTSMG`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_BULLPUPRIFLE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_BULLPUPRIFLE_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_CARBINERIFLE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_CARBINERIFLE_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_COMPACTRIFLE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_DOUBLEACTION`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_GUSENBERG`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_HEAVYPISTOL`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_MARKSMANPISTOL`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_PISTOL50`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_REVOLVER`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_REVOLVER_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_SMG`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_SMG_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_SPECIALCARBINE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_SPECIALCARBINE_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],

    --[[ High Caliber ]] --
    [`WEAPON_ASSAULTRIFLE`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_ASSAULTRIFLE_MK2`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_COMBATMG`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_COMBATMG_MK2`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_HEAVYSNIPER`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_HEAVYSNIPER_MK2`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MARKSMANRIFLE`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MARKSMANRIFLE_MK2`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MG`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MINIGUN`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MUSKET`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_RAILGUN`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_HEAVYRIFLE`] = Config.WeaponClasses['HIGH_CALIBER'],

    --[[ Shotguns ]] --
    [`WEAPON_ASSAULTSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_BULLUPSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_DBSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_HEAVYSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_PUMPSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_PUMPSHOTGUN_MK2`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_SAWNOFFSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_SWEEPERSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],

    --[[ Animals ]]                                            --
    [`WEAPON_ANIMAL`] = Config.WeaponClasses['WILDLIFE'],      -- Animal
    [`WEAPON_COUGAR`] = Config.WeaponClasses['WILDLIFE'],      -- Cougar
    [`WEAPON_BARBED_WIRE`] = Config.WeaponClasses['WILDLIFE'], -- Barbed Wire

    --[[ Cutting Weapons ]]                                    --
    [`WEAPON_BATTLEAXE`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_BOTTLE`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_DAGGER`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_HATCHET`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_KNIFE`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_MACHETE`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_SWITCHBLADE`] = Config.WeaponClasses['CUTTING'],

    --[[ Light Impact ]] --
    [`WEAPON_KNUCKLE`] = Config.WeaponClasses['LIGHT_IMPACT'],

    --[[ Heavy Impact ]] --
    [`WEAPON_BAT`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_CROWBAR`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_FIREEXTINGUISHER`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_FIRWORK`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_GOLFLCUB`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_HAMMER`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_PETROLCAN`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_POOLCUE`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_WRENCH`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_RAMMED_BY_CAR`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_RUN_OVER_BY_CAR`] = Config.WeaponClasses['HEAVY_IMPACT'],

    --[[ Explosives ]] --
    [`WEAPON_EXPLOSION`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_GRENADE`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_COMPACTLAUNCHER`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_HOMINGLAUNCHER`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_PIPEBOMB`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_PROXMINE`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_RPG`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_STICKYBOMB`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_HELI_CRASH`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_EMPLAUNCHER`] = Config.WeaponClasses['EXPLOSIVE'],

    --[[ Other ]]                                                   --
    [`WEAPON_FALL`] = Config.WeaponClasses['OTHER'],                -- Fall
    [`WEAPON_HIT_BY_WATER_CANNON`] = Config.WeaponClasses['OTHER'], -- Water Cannon

    --[[ Fire ]]                                                    --
    [`WEAPON_ELECTRIC_FENCE`] = Config.WeaponClasses['FIRE'],
    [`WEAPON_FIRE`] = Config.WeaponClasses['FIRE'],
    [`WEAPON_MOLOTOV`] = Config.WeaponClasses['FIRE'],
    [`WEAPON_FLARE`] = Config.WeaponClasses['FIRE'],
    [`WEAPON_FLAREGUN`] = Config.WeaponClasses['FIRE'],

    --[[ Suffocate ]]                                                     --
    [`WEAPON_DROWNING`] = Config.WeaponClasses['SUFFOCATING'],            -- Drowning
    [`WEAPON_DROWNING_IN_VEHICLE`] = Config.WeaponClasses['SUFFOCATING'], -- Drowning Veh
    [`WEAPON_EXHAUSTION`] = Config.WeaponClasses['SUFFOCATING'],          -- Exhaust
    [`WEAPON_BZGAS`] = Config.WeaponClasses['SUFFOCATING'],
    [`WEAPON_SMOKEGRENADE`] = Config.WeaponClasses['SUFFOCATING'],
}

Config.VehicleSettings = { -- Enable or disable vehicle extras when pulling them from the ambulance job vehicle spawner
    ['car1'] = {           -- Model name
        ['extras'] = {
            ['1'] = false, -- on/off
            ['2'] = true,
            ['3'] = true,
            ['4'] = true,
            ['5'] = true,
            ['6'] = true,
            ['7'] = true,
            ['8'] = true,
            ['9'] = true,
            ['10'] = true,
            ['11'] = true,
            ['12'] = true,
        }
    },
    ['car2'] = {
        ['extras'] = {
            ['1'] = false,
            ['2'] = true,
            ['3'] = true,
            ['4'] = true,
            ['5'] = true,
            ['6'] = true,
            ['7'] = true,
            ['8'] = true,
            ['9'] = true,
            ['10'] = true,
            ['11'] = true,
            ['12'] = true,
        }
    }
}
