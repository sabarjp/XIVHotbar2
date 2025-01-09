-- Load and initialize the include file.
xivhotbar_keybinds_job['Base'] = {
  -- Hotbar #1  Mostly Pet Damage
  { 'battle 1 1',  'ja', 'Assault',          't',  'Attack',   'ffxiv/pet/guard' },
  { 'battle 1 2',  'ja', 'Retreat',          'me', 'Retreat',  'ffxiv/pet/stay' },
  { 'battle 1 8',  'ja', "Avatar's Favor",   'me', 'Favor',    'ffxiv/smn/outburst' },          -- mastery
  { 'battle 1 9',  'ja', 'Elemental Siphon', 'me', 'Siphon',   'ffxiv/smn/slipstream' },        -- mastery
  { 'battle 1 10', 'ja', 'Apogee',           'me', 'Apogee',   'ffxiv/sch/emergency_tactics' }, -- recast
  { 'battle 1 11', 'ja', 'Mana Cede',        'me', 'Cede',     'ffxiv/sch/energy_drain' },      -- mp to pet tp
  { 'battle 1 11', 'ja', 'Astral Conduit',   'me', 'Conduit',  'ffxiv/sch/adloquium' },         -- bloodpact recast

  -- Hotbar #2 Mostly Pet Utility - Action11 is always pet ult

  -- Hotbar #3 Subs

  -- Hotbar #4  Mostly Subs
  { 'battle 4 11', 'ja', 'Release',          'me', 'Release',  'ffxiv/pet/steady' },
  { 'battle 4 12', 'ja', 'Astral Flow',      'me', 'Astral',   'ffxiv/sch/dissolve_union' },

  -- Hotbar #5 Summons
  { 'b 5 1',       'ma', 'Titan',            'me', 'Titan',    'summons/titan_GUI' },
  { 'b 5 2',       'ma', 'Leviathan',        'me', 'Levi',     'summons/leviathan_GUI' },
  { 'b 5 3',       'ma', 'Garuda',           'me', 'Garuda',   'summons/garuda_GUI' },
  { 'b 5 4',       'ma', 'Ifrit',            'me', 'Ifrit',    'summons/ifrit_GUI' },
  { 'b 5 5',       'ma', 'Shiva',            'me', 'Shiva',    'summons/shiva_GUI' },
  { 'b 5 6',       'ma', 'Ramuh',            'me', 'Ramuh',    'summons/ramuh_GUI' },
  { 'b 5 7',       'ma', 'Carbuncle',        'me', 'Carby',    'summons/carbuncle_GUI' },
  { 'b 5 8',       'ma', 'Fenrir',           'me', 'Fenrir',   'summons/fenrir_GUI' },
  { 'b 5 9',       'ma', 'Diabolos',         'me', 'Diabolos', 'summons/diabolos_GUI' },
  { 'b 5 10',      'ma', 'Cait Sith',        'me', 'CaitSith', 'summons/cait_sith_GUI' },
  { 'b 5 11',      'ma', 'Siren',            'me', 'Siren',    'summons/siren_GUI' },
  { 'b 5 12',      'ma', 'Atomos',           'me', 'Atomos',   'summons/atomos_GUI' },

  -- Hotbar #6 Spirits
  { 'b 6 1',       'ma', 'Earth Spirit',     'me', 'Earth',    'summons/earthspirit' },
  { 'b 6 2',       'ma', 'Water Spirit',     'me', 'Water',    'summons/waterspirit' },
  { 'b 6 3',       'ma', 'Air Spirit',       'me', 'Wind',     'summons/windspirit' },
  { 'b 6 4',       'ma', 'Fire Spirit',      'me', 'Fire',     'summons/firespirit' },
  { 'b 6 5',       'ma', 'Ice Spirit',       'me', 'Ice',      'summons/icespirit' },
  { 'b 6 6',       'ma', 'Thunder Spirit',   'me', 'Thunder',  'summons/thunderspirit' },
  { 'b 6 7',       'ma', 'Light Spirit',     'me', 'Light',    'summons/lightspirit' },
  { 'b 6 8',       'ma', 'Dark Spirit',      'me', 'Dark',     'summons/darkspirit' },
  { 'b 6 9',       'ma', 'Alexander',        'me', 'Alex',     'summons/alexander_GUI' },
  { 'b 6 10',      'ma', 'Odin',             'me', 'Odin',     'summons/odin_GUI' },
  { 'b 6 12',      'ja', 'Release',          'me', 'Release',  'ffxiv/pet/steady' },
}

xivhotbar_keybinds_job['Carbuncle'] = {
  -- 1, 3-7   2 , 1-11 available

  -- Hotbar #1
  { 'battle 1 3',  'ja', 'Poison Nails',    't',    'Nails',     'summons/carbuncle_GUI' },
  { 'battle 1 4',  'ja', 'Meteorite',       't',    'Meteorite', 'summons/carbuncle_GUI' },
  { 'battle 1 5',  'ja', 'Holy Mist',       't',    'H.Mist',    'summons/carbuncle_GUI' },

  -- Hotbar #2
  { 'battle 2 1',  'ja', 'Healing Ruby',    'stpc', 'Heal',      'summons/carbuncle_GUI' },
  { 'battle 2 1',  'ja', 'Healing Ruby II', 'stpc', 'Heal2',     'summons/carbuncle_GUI' },
  { 'battle 2 2',  'ja', 'Shining Ruby',    'stpc', 'Shining',   'summons/carbuncle_GUI' },
  { 'battle 2 3',  'ja', 'Glittering Ruby', 'stpc', 'Glitter',   'summons/carbuncle_GUI' },
  { 'battle 2 4',  'ja', 'Soothing Ruby',   'me',   'Soothe',    'summons/carbuncle_GUI' },
  { 'battle 2 5',  'ja', 'Pacifying Ruby',  'stpc', 'Heal',      'summons/carbuncle_GUI' },

  -- Ultimate
  { 'battle 2 11', 'ja', 'Searing Light',   't',    'Searing',   'ffxiv/smn/searing_light' },
}

xivhotbar_keybinds_job['Cait Sith'] = {
  -- 1, 3-7   2 , 1-11 available

  -- Hotbar #1
  { 'battle 1 3',  'ja', 'Regal Scratch',  't',    'Scratch',  'summons/cait_sith_GUI' },
  { 'battle 1 4',  'ja', 'Level ? Holy',   't',    'Holy',     'summons/cait_sith_GUI' },
  { 'battle 1 5',  'ja', 'Regal Gash',     't',    'Gash',     'summons/cait_sith_GUI' },

  -- Hotbar #2
  { 'battle 2 1',  'ja', 'Raise II',       'stpc', 'Raise2',   'summons/cait_sith_GUI' },
  { 'battle 2 2',  'ja', 'Mewing Lullaby', 'stpc', 'Lullaby',  'summons/cait_sith_GUI' },
  { 'battle 2 3',  'ja', 'Reraise II',     'stpc', 'Reraise2', 'summons/cait_sith_GUI' },
  { 'battle 2 4',  'ja', 'Eerie Eye',      't',    'E.Eye',    'summons/cait_sith_GUI' },

  -- Ultimate
  { 'battle 2 11', 'ja', "Altana's Favor", 'me',   'A.Favor',  'ffxiv/whm/plenary_indulgence' },
}

xivhotbar_keybinds_job['Titan'] = {
  -- 1, 3-7   2 , 1-11 available

  -- Hotbar #1
  { 'battle 1 3',  'ja', 'Rock Throw',      't',  'Slow',     'summons/titan_GUI' },
  { 'battle 1 4',  'ja', 'Stone II',        't',  'Stone2',   'summons/titan_GUI' },
  { 'battle 1 5',  'ja', 'Rock Buster',     't',  'Bind',     'summons/titan_GUI' },
  { 'battle 1 6',  'ja', 'Megalith Throw',  't',  'Slow2',    'summons/titan_GUI' },
  { 'battle 1 7',  'ja', 'Stone IV',        't',  'Stone4',   'summons/titan_GUI' },

  -- Hotbar #2
  { 'battle 2 1',  'ja', 'Earthen Ward',    'me', 'Stoneskn', 'summons/titan_GUI' },
  { 'battle 2 2',  'ja', 'Mountain Buster', 't',  'Bind2',    'summons/titan_GUI' },
  { 'battle 2 3',  'ja', 'Geocrush',        't',  'GeoCrsh',  'summons/titan_GUI' },
  { 'battle 2 4',  'ja', 'Crag Throw',      't',  'CrgThw',   'summons/titan_GUI' },
  { 'battle 2 5',  'ja', 'Earthen Armor',   'me', 'Armor',    'summons/titan_GUI' },

  -- Ultimate
  { 'battle 2 11', 'ja', "Earthen Fury",    't',  'E.Fury',   'ffxiv/smn/mountain_buster' },
}

xivhotbar_keybinds_job['Leviathan'] = {
  -- 1, 3-7   2 , 1-11 available

  -- Hotbar #1
  { 'battle 1 3',  'ja', 'Barracuda Dive',   't',  'BarDive',   'summons/leviathan_GUI' },
  { 'battle 1 4',  'ja', 'Water II',         't',  'Water2',    'summons/leviathan_GUI' },
  { 'battle 1 5',  'ja', 'Tail Whip',        't',  'Grav',      'summons/leviathan_GUI' },
  { 'battle 1 6',  'ja', 'Water IV',         't',  'Water4',    'summons/leviathan_GUI' },
  { 'battle 1 7',  'ja', 'Spinning Dive',    't',  'SpinDive',  'summons/leviathan_GUI' },

  -- Hotbar #2
  { 'battle 2 1',  'ja', 'Slowga',           't',  'Slowga',    'summons/leviathan_GUI' },
  { 'battle 2 2',  'ja', 'Spring Water',     'me', 'Spring',    'summons/leviathan_GUI' },
  { 'battle 2 3',  'ja', 'Grand Fall',       't',  'Gfall',     'summons/leviathan_GUI' },
  { 'battle 2 4',  'ja', 'Tidal Roar',       't',  'T.Roar',    'summons/leviathan_GUI' },
  { 'battle 2 5',  'ja', 'Soothing Current', 'me', 'S.Current', 'summons/leviathan_GUI' },

  -- Ultimate
  { 'battle 2 11', 'ja', 'Tidal Wave',       't',  'Blast',     'ffxiv/nin/suiton' },
}

xivhotbar_keybinds_job['Garuda'] = {
  -- 1, 3-7   2 , 1-11 available

  -- Hotbar #1
  { 'battle 1 3',  'ja', 'Claw',            't',  'Claw',       'summons/garuda_GUI' },
  { 'battle 1 4',  'ja', 'Aero II',         't',  'Aero2',      'summons/garuda_GUI' },
  { 'battle 1 5',  'ja', 'Aero IV',         't',  'Aero4',      'summons/garuda_GUI' },
  { 'battle 1 6',  'ja', 'Predator Claws',  't',  'PredClaw',   'summons/garuda_GUI' },
  { 'battle 1 6',  'ja', 'Wind Blade',      't',  'WBlade',     'summons/garuda_GUI' },

  -- Hotbar #2
  { 'battle 2 1',  'ja', 'Aerial Armor',    'me', 'Blinkga',    'summons/garuda_GUI' },
  { 'battle 2 2',  'ja', 'Whispering Wind', 'me', 'Healga',     'summons/garuda_GUI' },
  { 'battle 2 3',  'ja', 'Hastega',         'me', 'Hastega',    'summons/garuda_GUI' },
  { 'battle 2 4',  'ja', 'Fleet Wind',      'me', 'Fleet Wind', 'summons/garuda_GUI' },
  { 'battle 2 5',  'ja', 'Hastega II',      'me', 'Hastega2',   'summons/garuda_GUI' },

  -- Ultimate
  { 'battle 2 11', 'ja', 'Aerial Blast',    't',  'Blast',      'ffxiv/smn/emerald_catastrophe' },
}

xivhotbar_keybinds_job['Ifrit'] = {
  -- 1, 3-7   2 , 1-11 available

  -- Hotbar #1
  { 'battle 1 3',  'ja', 'Punch',          't',  'Punch',    'summons/ifrit_GUI' },
  { 'battle 1 4',  'ja', 'Fire II',        't',  'Fire2',    'summons/ifrit_GUI' },
  { 'battle 1 5',  'ja', 'Burning Strike', 't',  'Strike',   'summons/ifrit_GUI' },
  { 'battle 1 6',  'ja', 'Double Punch',   't',  'Dbl.Pnch', 'summons/ifrit_GUI' },
  { 'battle 1 7',  'ja', 'Fire IV',        't',  'Fire4',    'summons/ifrit_GUI' },

  -- Hotbar #2
  { 'battle 2 1',  'ja', 'Crimson Howl',   'me', 'C.Howl',   'summons/ifrit_GUI' },
  { 'battle 2 2',  'ja', 'Flaming Crush',  't',  'Crush',    'summons/ifrit_GUI' },
  { 'battle 2 3',  'ja', 'Meteor Strike',  't',  'Meteor',   'summons/ifrit_GUI' },
  { 'battle 2 4',  'ja', 'Inferno Howl',   'me', 'I.Howl',   'summons/ifrit_GUI' },
  { 'battle 2 5',  'ja', 'Conflag Strike', 't',  'Conflag',  'summons/ifrit_GUI' },

  -- Ultimate
  { 'battle 2 11', 'ja', 'Inferno',        't',  'Inferno',  'ffxiv/sch/broil_II' },
}

xivhotbar_keybinds_job['Shiva'] = {
  -- 1, 3-7   2 , 1-11 available

  -- Hotbar #1
  { 'battle 1 3',  'ja', 'Axe Kick',         't',  'AxeKick',  'summons/shiva_GUI' },
  { 'battle 1 4',  'ja', 'Blizzard II',      't',  'Blizz2',   'summons/shiva_GUI' },
  { 'battle 1 5',  'ja', 'Double Slap',      't',  'Dbl.Slap', 'summons/shiva_GUI' },
  { 'battle 1 6',  'ja', 'Blizzard IV',      't',  'Blizz4',   'summons/shiva_GUI' },
  { 'battle 1 7',  'ja', 'Rush',             't',  'Rush',     'summons/shiva_GUI' },

  -- Hotbar #2
  { 'battle 2 1',  'ja', 'Frost Armor',      'me', 'IceSpks',  'summons/shiva_GUI' },
  { 'battle 2 2',  'ja', 'Sleepga',          't',  'Sleepga',  'summons/shiva_GUI' },
  { 'battle 2 3',  'ja', 'Heavenly Strike',  't',  'Heaven',   'summons/shiva_GUI' },
  { 'battle 2 4',  'ja', 'Diamond Storm',    't',  'D.Storm',  'summons/shiva_GUI' },
  { 'battle 2 4',  'ja', 'Crystal Blessing', 'me', 'Blessing', 'summons/shiva_GUI' },

  -- Ultimate
  { 'battle 2 11', 'ja', 'Diamond Dust',     't',  'Diamond',  'ffxiv/blm/freeze' },
}

xivhotbar_keybinds_job['Ramuh'] = {
  -- 1, 3-7   2 , 1-11 available

  -- Hotbar #1
  { 'battle 1 3',  'ja', 'Shock Strike',    't',  'ShockStrk', 'summons/ramuh_GUI' },
  { 'battle 1 4',  'ja', 'Thunder II',      't',  'Thund2',    'summons/ramuh_GUI' },
  { 'battle 1 5',  'ja', 'Thunderspark',    't',  'ThudSpk',   'summons/ramuh_GUI' },
  { 'battle 1 6',  'ja', 'Thunder IV',      't',  'Thund4',    'summons/ramuh_GUI' },
  { 'battle 1 7',  'ja', 'Chaotic Strike',  't',  'StunStrk',  'summons/ramuh_GUI' },

  -- Hotbar #2
  { 'battle 2 1',  'ja', 'Rolling Thunder', 'me', 'Enthund',   'summons/ramuh_GUI' },
  { 'battle 2 2',  'ja', 'Lightning Armor', 'me', 'ShkSpke',   'summons/ramuh_GUI' },
  { 'battle 2 3',  'ja', 'Thunderstorm',    't',  'Tstorm',    'summons/ramuh_GUI' },
  { 'battle 2 4',  'ja', 'Volt Strike',     't',  'VoltStrk',  'summons/ramuh_GUI' },
  { 'battle 2 5',  'ja', 'Shock Squall',    't',  'ShockSql',  'summons/ramuh_GUI' },

  -- Ultimate
  { 'battle 2 11', 'ja', 'Judgment Bolt',   't',  'Judgemnt',  'ffxiv/blm/thunder' },
}

xivhotbar_keybinds_job['Fenrir'] = {
  -- 1, 3-7   2 , 1-11 available

  -- Hotbar #1
  { 'battle 1 3',  'ja', 'Moonlit Charge',  't',  'Blind',    'summons/fenrir_GUI' },
  { 'battle 1 4',  'ja', 'Crescent Fang',   't',  'Paralyze', 'summons/fenrir_GUI' },
  { 'battle 1 5',  'ja', 'Eclipse Bite',    't',  'Eclipse',  'summons/fenrir_GUI' },
  { 'battle 1 6',  'ja', 'Lunar Ray',       't',  'Lunar',    'summons/fenrir_GUI' },
  { 'battle 1 7',  'ja', 'Impact',          't',  'Impact',   'summons/fenrir_GUI' },

  -- Hotbar #2
  { 'battle 2 1',  'ja', 'Lunar Cry',       't',  'LunCry',   'summons/fenrir_GUI' },
  { 'battle 2 2',  'ja', 'Lunar Roar',      't',  'LunRoar',  'summons/fenrir_GUI' },
  { 'battle 2 3',  'ja', 'Ecliptic Growl',  'me', 'EclGrowl', 'summons/fenrir_GUI' },
  { 'battle 2 4',  'ja', 'Ecliptic Howl',   'me', 'EclHowl',  'summons/fenrir_GUI' },
  { 'battle 2 5',  'ja', 'Heavenward Howl', 'me', 'HvnHowl',  'summons/fenrir_GUI' },

  -- Ultimate
  { 'battle 2 11', 'ja', 'Howling Moon',    't',  'HowlMoon', 'ffxiv/ast/exaltation' },
}

xivhotbar_keybinds_job['Diabolos'] = {
  -- 1, 3-7   2 , 1-11 available

  -- Hotbar #1
  { 'battle 1 3',  'ja', 'Camisado',        't',  'Camisad',  'summons/diabolos_GUI' },
  { 'battle 1 4',  'ja', 'Nether Blast',    't',  'Nether',   'summons/diabolos_GUI' },
  { 'battle 1 5',  'ja', 'Night Terror',    't',  'N.Terror', 'summons/diabolos_GUI' },
  { 'battle 1 6',  'ja', 'Blindside',       't',  'Blndsde',  'summons/diabolos_GUI' },

  -- Hotbar #2
  { 'battle 2 1',  'ja', 'Somnolence',      't',  'Somno',    'summons/diabolos_GUI' },
  { 'battle 2 2',  'ja', 'Nightmare',       't',  'Nightmr',  'summons/diabolos_GUI' },
  { 'battle 2 3',  'ja', 'Ultimate Terror', 't',  'U.Terror', 'summons/diabolos_GUI' },
  { 'battle 2 4',  'ja', 'Noctoshield',     'me', 'Nocto',    'summons/diabolos_GUI' },
  { 'battle 2 5',  'ja', 'Dream Shroud',    'me', 'DrmShrd',  'summons/diabolos_GUI' },
  { 'battle 2 6',  'ja', 'Pavor Nocturnus', 't',  'Pavor',    'summons/diabolos_GUI' },

  -- Ultimate
  { 'battle 2 11', 'ja', 'Ruinous Omen',    't',  'Ruinous',  'ffxiv/drk/oblation' },
}

xivhotbar_keybinds_job['Siren'] = {
  -- 1, 3-7   2 , 1-11 available

  -- Hotbar #1
  { 'battle 1 3',  'ja', 'Welt',             't',  'Welt',     'summons/siren_GUI' },
  { 'battle 1 4',  'ja', 'Roundhouse',       't',  'RHouse',   'summons/siren_GUI' },
  { 'battle 1 5',  'ja', 'Sonic Buffet',     't',  'S.Buffet', 'summons/siren_GUI' },
  { 'battle 1 6',  'ja', 'Tornado II',       't',  'Torndo2',  'summons/siren_GUI' },
  { 'battle 1 7',  'ja', 'Hysteric Assault', 't',  'Hysteric', 'summons/siren_GUI' },


  -- Hotbar #2
  { 'battle 2 1',  'ja', 'Lunatic Voice',    't',  'Lunatic',  'summons/siren_GUI' },
  { 'battle 2 2',  'ja', 'Katabatic Blades', 'me', 'Kata',     'summons/siren_GUI' },
  { 'battle 2 3',  'ja', 'Chinook',          'me', 'Chinook',  'summons/siren_GUI' },
  { 'battle 2 4',  'ja', 'Bitter Elegy',     't',  'Elegy',    'summons/siren_GUI' },
  { 'battle 2 5',  'ja', "Wind's Blessing",  'me', 'W.Bless',  'summons/siren_GUI' },

  -- Ultimate
  { 'battle 2 11', 'ja', 'Clarsach Call',    't',  'Clarsach', 'ffxiv/pic/winged_muse' },
}

-- SUBJOBS
-- 4, 1-10 available
xivhotbar_keybinds_job['THF'] = {
  { 'battle 3 3', 'ja', 'Steal',        't',  'Steal', 'ffxiv/nin/dream_within_a_dream' },
  { 'battle 3 1', 'ja', 'Sneak Attack', 'me', 'SAtk',  'ffxiv/nin/spinning_edge' },
  { 'battle 3 6', 'ja', 'Flee',         'me', 'Flee',  'ffxiv/nin/forked_raiju' },
  { 'battle 3 2', 'ja', 'Trick Attack', 'me', 'TAtk',  'ffxiv/nin/trick_attack' },
  { 'battle 3 4', 'ja', 'Mug',          't',  'Mug',   'ffxiv/nin/mug' },
  { 'battle 3 5', 'ja', 'Hide',         'me', 'Hide',  'ffxiv/nin/hide' },
}

xivhotbar_keybinds_job['COR'] = {
  -- Rolls
  { 'battle 3 1',  'ja', "Double-Up",      'me', 'Dbl Up', 'ffxiv/ast/play' },
  { 'battle 3 2',  'ja', "Corsair's Roll", 'me', 'COR',    'classes/ast' }, -- exp
  -- { 'battle 3 ',  'ja',    "Ninja Roll",           'me', 'NIN',     'classes/nin' }, -- eva
  -- { 'battle 3 4',  'ja',    "Hunter's Roll",        'me', 'HUN',     'classes/acr' }, -- acc & ra acc
  -- { 'battle 3 5',  'ja',    "Chaos Roll",           'me', 'CHS',     'classes/rpr' }, -- phys atk
  { 'battle 3 10', 'ja', "Magus's Roll",   'me', 'MGS',    'classes/whm' }, -- mag def
  -- { 'battle 3 ',  'ja',    "Healer's Roll",        'me', 'HLR',     'classes/hlr' }, -- cure potency
  { 'battle 3 3',  'ja', "Drachen Roll",   'me', 'DRC',    'classes/lnc' }, -- pet & ra acc
  { 'battle 3 9',  'ja', "Choral Roll",    'me', 'CRL',    'classes/brd' }, -- spell interrupt
  -- { 'battle 3 10', 'ja',    "Monk's Roll",          'me', 'MNK',     'classes/mnk' }, -- subtle blow
  { 'battle 3 4',  'ja', "Beast Roll",     'me', 'BST',    'classes/war' }, -- pet atk
  -- { 'battle 3 12', 'ja',    "Samurai Roll",         'me', 'SAM',     'classes/sam' }, -- store TP
  { 'battle 3 8',  'ja', "Evoker's Roll",  'me', 'EVO',    'classes/smn' }, -- MP regen
  -- { 'battle 3 3',  'ja',    "Rogue's Roll",         'me', 'RGE',     'classes/rge' }, -- crit
  { 'battle 3 7',  'ja', "Warlock's Roll", 'me', 'WLK',    'classes/thm' }, -- magic acc
  -- { 'battle 3 5',  'ja',    "Fighter's Roll",       'me', 'FTR',     'classes/mar' }, -- double atk
  -- Mastery only
  { 'battle 3 5',  'ja', "Puppet Roll",    'me', 'PUP',    'classes/pug' }, -- pet matk & pet macc
  { 'battle 3 11', 'ja', "Gallant's Roll", 'me', 'GAL',    'classes/pld' }, -- def
  { 'battle 3 6',  'ja', "Wizard's Roll",  'me', 'WIZ',    'classes/blm' }, -- matk
  { 'battle 3 12', 'ja', "Random Deal",    'me', 'Randm',  'ffxiv/ast/draw' },
  -- Quick Draw
  -- { 'battle 5 3',  'ja',    "Light Shot",           't',  'Light',   'ffxiv/ast/003146' },
  -- { 'battle 5 4',  'ja',    "Earth Shot",           't',  'Earth',   'ffxiv/ast/003115' },
  -- { 'battle 5 5',  'ja',    "Water Shot",           't',  'Water',   'ffxiv/ast/003114' },
  -- { 'battle 5 6',  'ja',    "Wind Shot",            't',  'Wind',    'ffxiv/ast/003111' },
  -- { 'battle 5 9',  'ja',    "Dark Shot",            't',  'Dark',    'ffxiv/ast/003147' },
  -- { 'battle 5 10', 'ja',    "Fire Shot",            't',  'Fire',    'ffxiv/ast/003110' },
  -- { 'battle 5 11', 'ja',    "Ice Shot",             't',  'Ice',     'ffxiv/ast/003113' },
  -- { 'battle 5 12', 'ja',    "Thunder Shot",         't',  'Thunder', 'ffxiv/ast/003112' },
  -- Ranged Attack
  -- { 'battle 5 1',  'input', '/ra <t>',              '',   'RA',      'ffxiv/mch/gauss_round' },
  -- { 'battle 5 7',  'input', '/equip ammo "Bullet"', '',   'Ammo',    'ffxiv/mch/slug_shot' },
}

xivhotbar_keybinds_job['RDM'] = {
  -- Abilities
  { 'battle 3 12', 'ja', 'Convert',    'me',    'Convert',  'ffxiv/rdm/magic_barrier' },
  -- Enspells
  -- { 'battle 3 7',  'ma', 'Enstone II',    'me',    'Enstone2' }, -- mastery
  -- { 'battle 3 7',  'ma', 'Enstone',       'me',    'Enstone' },
  -- { 'battle 3 8',  'ma', 'Enwater II',    'me',    'Enwater2' }, -- mastery
  -- { 'battle 3 8',  'ma', 'Enwater',       'me',    'Enwater' },
  -- { 'battle 3 9',  'ma', 'Enaero II',     'me',    'Enaero2' },  -- mastery
  -- { 'battle 3 9',  'ma', 'Enaero',        'me',    'Enaero' },
  -- { 'battle 3 10', 'ma', 'Enfire II',     'me',    'Enfire2' },  -- mastery
  -- { 'battle 3 10', 'ma', 'Enfire',        'me',    'Enfire' },
  -- { 'battle 3 11', 'ma', 'Enblizzard II', 'me',    'Enblizz2' }, -- mastery
  -- { 'battle 3 11', 'ma', 'Enblizzard',    'me',    'Enblizz' },
  -- { 'battle 3 12', 'ma', 'Enthunder II',  'me',    'Enthun2' },  -- mastery
  -- { 'battle 3 12', 'ma', 'Enthunder',     'me',    'Enthun' },
  --Enfeeblement
  { 'battle 4 7',  'ma', 'Dia II',     'stnpc', 'Dia2' },
  { 'battle 4 7',  'ma', 'Dia',        'stnpc', 'Dia' },
  -- { 'battle 3 ',  'ma', 'Diaga',         'stnpc', 'Diaga' },
  -- { 'battle 3 ',  'ma', 'Poison II',     'stnpc', 'Poison2' },
  -- { 'battle 3 ',  'ma', 'Poison',        'stnpc', 'Poison' },
  -- { 'battle 3 ',  'ma', 'Paralyze',      'stnpc', 'Paralyze' },
  -- { 'battle 3 ',  'ma', 'Blind',         'stnpc', 'Blind' },
  -- { 'battle 3 ',  'ma', 'Bio II',        'stnpc', 'Bio2' },
  -- { 'battle 3 ',  'ma', 'Bio',           'stnpc', 'Bio' },
  -- { 'battle 3 ', 'ma', 'Bind',          'stnpc', 'Bind' },
  -- { 'battle 3 ',  'ma', 'Slow',          'stnpc', 'Slow' },
  -- { 'battle 3 ',   'ma', 'Silence',    'stnpc', 'Silence' },
  -- { 'battle 3 ',   'ma', 'Gravity',    'stnpc', 'Gravity' },S
  { 'battle 4 10', 'ma', 'Sleep II',   'stnpc', 'Sleep2' },
  { 'battle 4 9',  'ma', 'Sleep',      'stnpc', 'Sleep' },
  { 'battle 4 8',  'ma', 'Dispel',     'stnpc', 'Dispel' },
  -- { 'battle 3 ',  'ma', 'Distract',      'stnpc', 'Distract' },
  -- { 'battle 3 ',  'ma', 'Frazzle',       'stnpc', 'Frazzle' },
  -- White Magic
  { 'battle 3 1',  'ma', 'Cure IV',    'stpc',  'Cure 4' },
  { 'battle 3 1',  'ma', 'Cure III',   'stpc',  'Cure3' },
  { 'battle 3 1',  'ma', 'Cure II',    'stpc',  'Cure2' },
  { 'battle 3 1',  'ma', 'Cure',       'stpc',  'Cure' },
  { 'battle 3 2',  'ma', 'Regen',      'stpc',  'Regen' },
  -- Black Magic
  -- { 'battle 3 1',  'ma', 'Stone II',      'stnpc', 'Stone2' },
  -- { 'battle 3 1',  'ma', 'Stone',         'stnpc', 'Stone' },
  -- { 'battle 3 1',  'ma', 'Water II',      'stnpc', 'Water2' },
  -- { 'battle 3 1',  'ma', 'Water',         'stnpc', 'Water' },
  -- { 'battle 3 1',  'ma', 'Aero II',       'stnpc', 'Aero2' }, -- mastery
  -- { 'battle 3 1',  'ma', 'Aero',          'stnpc', 'Aero' },
  -- { 'battle 3 1',  'ma', 'Fire II',       'stnpc', 'Fire2' }, -- mastery
  -- { 'battle 3 1',  'ma', 'Fire',          'stnpc', 'Fire' },
  -- { 'battle 3 1',  'ma', 'Blizzard',      'stnpc', 'Blizzard' },
  -- { 'battle 3 1',  'ma', 'Thunder',       'stnpc', 'Thunder' },
  -- Buffs
  { 'battle 3 3',  'ma', 'Refresh',    'stpc',  'Refresh' },
  { 'battle 3 4',  'ma', 'Haste',      'stpc',  'Haste' },
  { 'battle 3 5',  'ma', 'Flurry',     'stpc',  'Flurry' },
  { 'battle 4 1',  'ma', 'Aquaveil',   'me',    'Aquaveil' },
  { 'battle 4 2',  'ma', 'Blink',      'me',    'Blink' },
  { 'battle 4 4',  'ma', 'Phalanx',    'me',    'Phalanx' },
  { 'battle 4 3',  'ma', 'Stoneskin',  'me',    'StnSkin' },
  -- { 'battle 3 7',  'ma', 'Blaze Spikes',  'me',    'BlzSpikes' },
  -- { 'battle 3 8',  'ma', 'Ice Spikes',    'me',    'IceSpikes' },
  -- Barspells
  -- { 'battle 3 7',  'ma', 'Barstone',      'me',    'BStone',    'Barstonra' },
  -- { 'battle 3 8',  'ma', 'Barwater',      'me',    'BWater',    'Barwatera' },
  -- { 'battle 3 9',  'ma', 'Baraero',       'me',    'BAero',     'Baraera' },
  -- { 'battle 3 10', 'ma', 'Barfire',       'me',    'BFire',     'Barfira' },
  -- { 'battle 3 11', 'ma', 'Barblizzard',   'me',    'BBlizzard', 'Barblizzara' },
  { 'battle 4 5',  'ma', 'Barthunder', 'me',    'BThunder', 'Barthundra' },
  -- { 'battle 3 5',  'ma', 'Barsleep',      'me',    'BSleep',    '' },
  -- { 'battle 3 6',  'ma', 'Barpoison',     'me',    'BPoison',   '' },
  -- { 'battle 3 7',  'ma', 'Barparalyze',   'me',    'BPara',     '' },
  -- { 'battle 3 8',  'ma', 'Barblind',      'me',    'BBlind',    '' },
  { 'battle 4 6',  'ma', 'Barsilence', 'me',    'BSilence', '' },
  -- { 'battle 3 10', 'ma', 'Barvirus',      'me',    'BVirus',    '' },
  -- { 'battle 3 11', 'ma', 'Barpetrify',    'me',    'BPetri',    '' },
}

xivhotbar_keybinds_job['WHM'] = {
  -- Abilities
  { 'battle 3 12', 'ja', 'Divine Seal', 'me',    'Divine',   'ffxiv/whm/divine_benison' },
  -- Enfeeblement
  -- { 'battle 3 ',  'ma', 'Paralyze',     'stnpc', 'Para' },
  -- { 'battle 3 ',  'ma', 'Slow',         'stnpc', 'Slow' },
  -- { 'battle 3 ',  'ma', 'Silence',      'stnpc', 'Silence' },
  { 'battle 4 7',  'ma', 'Dia II',      'stnpc', 'Dia II' },
  { 'battle 4 7',  'ma', 'Dia',         'stnpc', 'Dia' },
  { 'battle 4 9',  'ma', 'Repose',      'stnpc', 'Repose' },
  -- { 'battle 3 ',  'ma', 'Flash',        'stnpc', 'Flash',     'ffxiv/pld/flash' },
  { 'battle 4 1',  'ma', 'Aquaveil',    'me',    'Aquaveil' },
  -- Barspells
  { 'battle 4 6',  'ma', 'Barsleepra',  'me',    'Sleepra',  '' },
  -- { 'battle 3 ',  'ma', 'Barpoisonra',  'me',    'Poisonra',  '' },
  -- { 'battle 3 ',  'ma', 'Barparalyzra', 'me',    'Paralyzra', '' },
  -- { 'battle 3 ',  'ma', 'Barstonra',    'me',    'Stonra',    'Barstonra' },
  -- { 'battle 3 ',  'ma', 'Barwatera',    'me',    'Watera',    'Barwatera' },
  -- { 'battle 3 ',  'ma', 'Baraera',      'me',    'Aera',      'Baraera' },
  -- { 'battle 3 ',  'ma', 'Barfira',      'me',    'Fira',      'Barfira' },
  -- { 'battle 3 ',  'ma', 'Barblindra',   'me',    'Blindra',   '' },
  { 'battle 4 4',  'ma', 'Barblizzara', 'me',    'Blizzara', 'Barblizzara' },
  -- { 'battle 3 ',  'ma', 'Barsilencera', 'me',    'Silencera' },
  { 'battle 4 5',  'ma', 'Barthundra',  'me',    'Thundra',  'Barthundra' },
  -- { 'battle 3 ',  'ma', 'Barvira',      'me',    'Vira' },
  -- { 'battle 3 ',  'ma', 'Barpetra',     'me',    'Petra' },
  -- Atk
  -- { 'battle 3 ',  'ma', 'Holy',         'stnpc', 'Holy' }, -- mastery
  -- Regen
  { 'battle 3 2',  'ma', 'Regen II',    'stpc',  'Regen2' },
  { 'battle 3 2',  'ma', 'Regen',       'stpc',  'Regen' },
  -- Cure
  { 'battle 3 1',  'ma', 'Cure IV',     'stpc',  'Cure4' },
  { 'battle 3 1',  'ma', 'Cure III',    'stpc',  'Cure3' },
  { 'battle 3 1',  'ma', 'Cure II',     'stpc',  'Cure2' },
  { 'battle 3 1',  'ma', 'Cure',        'stpc',  'Cure' },
  -- Cura
  -- { 'battle 3 ', 'ma', 'Cura',         'me',    'Cura' },
  -- Curaga
  { 'battle 3 3',  'ma', 'Curaga III',  'stpc',  'Curaga3' }, -- mastery
  { 'battle 3 3',  'ma', 'Curaga II',   'stpc',  'Curaga2' },
  { 'battle 3 3',  'ma', 'Curaga',      'stpc',  'Curaga' },
  -- Supportive
  -- { 'battle 3 4',  'ma', 'Poisona',      'stpc',  'Poisona' },
  -- { 'battle 3 4',  'ma', 'Paralyna',     'stpc',  'Paralyna' },
  -- { 'battle 3 4',  'ma', 'Blindna',      'stpc',  'Blindna' },
  -- { 'battle 3 4',  'ma', 'Silena',       'stpc',  'Silena' },
  { 'battle 4 2',  'ma', 'Blink',       'me',    'Blink' },
  { 'battle 4 3',  'ma', 'Stoneskin',   'me',    'StnSkin' },
  -- { 'battle 3 4',  'ma', 'Cursna',       'stpc',  'Cursna' },
  { 'battle 3 5',  'ma', 'Erase',       'stpc',  'Erase' },
  -- { 'battle 3 4',  'ma', 'Viruna',       'stpc',  'Viruna' },
  -- { 'battle 3 4',  'ma', 'Stona',        'stpc',  'Stona' },
  { 'battle 3 4',  'ma', 'Haste',       'stpc',  'Haste' },
  -- { 'battle 3 ',  'ma', 'Auspice',      'me',    'Ausp' }, -- mastery
}

xivhotbar_keybinds_job['SCH'] = {
  -- Abilities
  { 'battle 4 11', 'ja', 'Dark Arts',       'me',   'Dark',     'ffxiv/sch/ruin' },
  { 'battle 4 10', 'ja', 'Light Arts',      'me',   'Light',    'ffxiv/sch/ruin_II' },
  { 'battle 3 12', 'ja', 'Sublimation',     'me',   'Sublim',   'ffxiv/sch/aetherflow' },
  { 'battle 4 5',  'ja', 'Penury',          'me',   'Penury',   'ffxiv/sch/dissipation' },        -- shares A - reduce MP
  { 'battle 4 5',  'ja', 'Parsimony',       'me',   'Parsmy',   'ffxiv/sch/broil_IV' },           -- shares A - reduce MP
  { 'battle 4 6',  'ja', 'Celerity',        'me',   'Celrty',   'ffxiv/sch/expedient' },          -- shares B - reduce cast
  { 'battle 4 6',  'ja', 'Alacrity',        'me',   'Alacty',   'ffxiv/sch/deployment_tactics' }, -- shares B - reduce cast
  { 'battle 4 7',  'ja', 'Addendum: White', 'me',   'Add.Wht',  'ffxiv/sch/excogitation' },
  { 'battle 4 7',  'ja', 'Addendum: Black', 'me',   'Add.Blk',  'ffxiv/sch/recitation' },
  { 'battle 4 8',  'ja', 'Accession',       'me',   'Accssn',   'ffxiv/sch/protraction' },   -- shares C - extend
  { 'battle 4 8',  'ja', 'Manifestation',   'me',   'Manifst',  'ffxiv/sch/biolysis' },      -- shares C - extend
  { 'battle 4 9',  'ja', 'Rapture',         'me',   'Raptur',   'ffxiv/sch/art_of_war_II' }, -- shares D - mastery - potency
  { 'battle 4 9',  'ja', 'Ebullience',      'me',   'Ebull',    'ffxiv/sch/art_of_war' },    -- Shares D - mastery - potency
  -- Storms
  { 'battle 3 4',  'me', 'Sandstorm',       'stpc', 'Sand',     'ffxiv/whm/stone_II' },
  { 'battle 3 5',  'me', 'Rainstorm',       'stpc', 'Rain',     'ffxiv/whm/fluid_aura' },
  { 'battle 3 6',  'me', 'Windstorm',       'stpc', 'Wind',     'ffxiv/whm/aero_II' },
  { 'battle 3 7',  'me', 'Firestorm',       'stpc', 'Fire',     'ffxiv/blm/fire_IV' },
  { 'battle 3 8',  'me', 'Hailstorm',       'stpc', 'Hail',     'ffxiv/blm/blizzard_II' },
  { 'battle 3 9',  'me', 'Thunderstorm',    'stpc', 'Thdr',     'ffxiv/blm/thunder_IV' },
  { 'battle 3 10', 'me', 'Voidstorm',       'stpc', 'Void',     'ffxiv/ast/malefic_III' },
  { 'battle 3 11', 'me', 'Aurorastorm',     'stpc', 'Aurora',   'ffxiv/whm/glare' },
  -- Buffs (good in either art)
  { 'battle 4 2',  'ma', 'Blink',           'me',   'Blink' },
  { 'battle 4 3',  'ma', 'Stoneskin',       'me',   'Stoneskin' },
  { 'battle 4 1',  'ma', 'Aquaveil',        'me',   'Aquaveil' },
}

xivhotbar_keybinds_job['Light Arts'] = {
  -- White Magic
  { 'battle 3 1', 'ma', 'Cure IV',   'stpc', 'Cure4' }, -- mastery
  { 'battle 3 1', 'ma', 'Cure III',  'stpc', 'Cure3' },
  { 'battle 3 1', 'ma', 'Cure II',   'stpc', 'Cure2' },
  { 'battle 3 1', 'ma', 'Cure',      'stpc', 'Cure1' },
  { 'battle 3 2', 'ma', 'Regen III', 'stpc', 'Regen3' }, -- mastery
  { 'battle 3 2', 'ma', 'Regen II',  'stpc', 'Regen2' },
  { 'battle 3 2', 'ma', 'Regen',     'stpc', 'Regen' },
  -- Status Removal
  -- { 'battle 3 2', 'ma', 'Poisona',   'stpc', 'Poisona' },
  -- { 'battle 3 2', 'ma', 'Paralyna',  'stpc', 'Paralyna' },
  -- { 'battle 3 2', 'ma', 'Blindna',   'stpc', 'Blindna' },
  -- { 'battle 3 2', 'ma', 'Silena',    'stpc', 'Silena' },
  -- { 'battle 3 2', 'ma', 'Cursna',    'stpc', 'Cursna' },
  -- { 'battle 3 2', 'ma', 'Viruna',    'stpc', 'Viruna' },
  -- { 'battle 3 2', 'ma', 'Stona',     'stpc', 'Stona' }, -- mastery
  { 'battle 3 3', 'ma', 'Erase',     'stpc', 'Erase' },
}

xivhotbar_keybinds_job['Dark Arts'] = {
  -- Black Magic
  -- { 'battle 3 ', 'ma', 'Stone III',    'stnpc', 'Stone3' }, -- mastery
  -- { 'battle 3 ', 'ma', 'Stone II',     'stnpc', 'Stone2' },
  -- { 'battle 3 ', 'ma', 'Stone',        'stnpc', 'Stone' },
  -- { 'battle 3 ', 'ma', 'Water III',    'stnpc', 'Water3' }, -- mastery
  -- { 'battle 3 ', 'ma', 'Water II',     'stnpc', 'Water2' },
  -- { 'battle 3 ', 'ma', 'Water',        'stnpc', 'Water' },
  -- { 'battle 3 ', 'ma', 'Aero II',      'stnpc', 'Aero2' },
  -- { 'battle 3 ', 'ma', 'Aero',         'stnpc', 'Aero' },
  -- { 'battle 3 ', 'ma', 'Fire II',      'stnpc', 'Fire2' },
  -- { 'battle 3 ', 'ma', 'Fire',         'stnpc', 'Fire' },
  -- { 'battle 3 ', 'ma', 'Blizzard II',  'stnpc', 'Blizz2' },
  -- { 'battle 3 ', 'ma', 'Blizzard',     'stnpc', 'Blizz' },
  -- { 'battle 3 ', 'ma', 'Thunder II',   'stnpc', 'Thund2' }, -- mastery
  -- { 'battle 3 ', 'ma', 'Thunder',      'stnpc', 'Thund' },
  -- Enfeeblement
  -- { 'battle 3 ', 'ma', 'Sleep',        'stnpc', 'Sleep' },
  -- { 'battle 3 ', 'ma', 'Dispel',       'stnpc', 'Dispel' },
  -- Buffs
  { 'battle 3 3', 'ma', 'Klimaform', 'me',    'Klima' },
  -- { 'battle 3 ', 'ma', 'Blaze Spikes', 'me',    'B. Spikes' },
  -- { 'battle 3 ', 'ma', 'Ice Spikes',   'me',    'I. Spikes' }, -- mastery
  -- Helix
  -- { 'battle 3 ', 'ma', 'Geohelix',     'stnpc', 'Geo' },
  -- { 'battle 3 ', 'ma', 'Hydrohelix',   'stnpc', 'Hydro' },
  -- { 'battle 3 ', 'ma', 'Anemohelix',   'stnpc', 'Anemo' },
  -- { 'battle 3 ', 'ma', 'Pyrohelix',    'stnpc', 'Pyro' },
  { 'battle 3 1', 'ma', 'Cryohelix', 'stnpc', 'Cryo' },
  { 'battle 3 2', 'ma', 'Ionohelix', 'stnpc', 'Iono' },
  -- { 'battle 3 ', 'ma', 'Noctohelix',   'stnpc', 'Nocto' },
  -- { 'battle 3 ', 'ma', 'Luminohelix',  'stnpc', 'Lumino' },
  -- Absorb
  -- { 'battle 3 ', 'ma', 'Drain',        'stnpc', 'Drain' },
  -- { 'battle 3 ', 'ma', 'Aspir',        'stnpc', 'Aspir' },
}

-- WEAPONSKILL SETS (12)
xivhotbar_keybinds_job['Club'] = {
  -- Heavy Hit
  { 'battle 1 12', 'ws', 'True Strike',    't', 'True' },
  -- { 'battle 1 1',  'ws', 'Judgment',       't', 'Judgment' }, -- war whm pld drk sam blu geo
  -- Multi-Hit
  -- { 'battle 1 2',  'ws', 'Hexa Strike',    't', 'Hexa' },     -- whm geo
  { 'battle 1 12', 'ws', 'Black Halo',     't', 'Bl Halo' }, -- war mnk whm blm pld smn blu sch geo
  -- Light
  { 'battle 1 12', 'ws', 'Shining Strike', 't', 'Shining' },
  -- { 'battle 1 3',  'ws', 'Seraph Strike',  't', 'Seraph' },  -- war whm pld drk sam blu geo
  -- { 'battle 1 3',  'ws', 'Flash Nova',     't', 'Fl Nova' }, -- war whm pld drk sam blu geo
  -- Specials
  { 'battle 1 12', 'ws', 'Skullbreaker',   't', 'Skullbrk' },
  { 'battle 1 12', 'ws', 'Starlight',      't', 'Star' },
  -- { 'battle 1 5',  'ws', 'Moonlight',      't', 'Moon' },     -- war whm pld drk sam blu geo
  -- Class Specific
  -- { 'battle 1 6',  'ws', 'Mystic Boon',    't', 'Mystic' },   -- whm only
  -- { 'battle 1 6',  'ws', 'Exudation',      't', 'Exuda' },    -- geo
  -- Merit Point
  { 'battle 1 12', 'ws', 'Realmrazer',     't', 'Realmrzr' }, -- war mnk whm blm pld smn blu sch geo
  -- Empyrean (Abyssea only)  #9
  -- { 'battle 1 9',  'ws', 'Dagan',          't', 'Dagan' },    -- whm
  -- Relic & Prime (only usable with specific weapon equips) #10
  -- { 'battle 1 10', 'ws', 'Randgrith',      't', 'Randgrt' },  -- whm sch geo relic
  -- { 'battle 1 10', 'ws', 'Dagda',          't', 'Dagda' },    -- whm geo recc
  -- AoE Ws #11
  -- none
  -- Stun WS #12
  { 'battle 1 12', 'ws', 'Brainshaker',    't', 'Brainshkr' },
}

xivhotbar_keybinds_job['Staff'] = {
  -- Heavy Hit
  { 'battle 1 12', 'ws', 'Heavy Swing',      't', 'Heavy' },
  { 'battle 1 12', 'ws', 'Full Swing',       't', 'Full' },
  { 'battle 1 12', 'ws', 'Retribution',      't', 'Retrb' }, -- war mnk whm blm pld brd drg smn sch geo
  -- Multi-Hit
  -- shattersoul
  -- Elements
  { 'battle 1 12', 'ws', 'Rock Crusher',     't', 'Rock' },
  { 'battle 1 12', 'ws', 'Starburst',        't', 'Starbrst' },
  -- { 'battle 1 3',  'ws', 'Sunburst',         't', 'Sunbrst' }, -- war mnk whm pld geo
  -- Specials
  { 'battle 1 12', 'ws', 'Shell Crusher',    't', 'Shell' },
  { 'battle 1 12', 'ws', 'Spirit Taker',     't', 'Spirit' },
  -- Class Specific
  { 'battle 1 12', 'ws', 'Garland of Bliss', 't', 'Garland' }, -- smn
  -- { 'battle 1 5',  'ws', 'Omniscience',      't', 'Omnisc' },  -- sch
  -- { 'battle 1 5',  'ws', 'Vidohunir',        't', 'Vidoh' },   -- blm
  -- Merit Point
  { 'battle 1 12', 'ws', 'Shattersoul',      't', 'Shatter' },
  -- Empyrean (Abyssea only)  #9
  { 'battle 1 12', 'ws', 'Myrkr',            't', 'Myrkr' },  -- blm smn sch
  -- Relic & Prime (only usable with specific weapon equips) #10
  { 'battle 1 12', 'ws', 'Gate of Tartarus', 't', 'Gate' },   -- blm smn relic
  { 'battle 1 12', 'ws', 'Oshala',           't', 'Oshala' }, -- blm smn sch
  -- AoE Ws #11
  -- { 'battle 1 11', 'ws', 'Earth Crusher',    't', 'Crusher' },  -- war mnk whm pld geo
  -- { 'battle 1 11', 'ws', 'Cataclysm',        't', 'Catcylsm' }, -- war mnk whm pld geo
  -- Stun WS #12
  -- none
}

return xivhotbar_keybinds_job
