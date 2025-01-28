-- Load and initialize the include file.
xivhotbar_keybinds_job["Base"] = {
  -- Hotbar #1   Buffs
  { "battle 1 1",  "ma", "Advancing March",    "me",    "March1" },  -- haste
  { "battle 1 2",  "ma", "Victory March",      "me",    "March2" },  -- haste
  { "battle 1 3",  "ma", "Valor Minuet",       "me",    "Minuet1" }, -- attack up
  { "battle 1 4",  "ma", "Valor Minuet II",    "me",    "Minuet2" }, -- attack up
  { "battle 1 3",  "ma", "Valor Minuet III",   "me",    "Minuet3" }, -- attack up
  { "battle 1 4",  "ma", "Valor Minuet IV",    "me",    "Minuet4" }, -- attack up
  { "battle 1 3",  "ma", "Valor Minuet V",     "me",    "Minuet5" }, -- attack up
  { "battle 1 5",  "ma", "Sword Madrigal",     "me",    "Madrgl1" }, -- acc up
  { "battle 1 6",  "ma", "Blade Madrigal",     "me",    "Madrgl2" }, -- acc up
  { "battle 1 7",  "ma", "Hunter's Prelude",   "me",    "Preld1" },  -- racc up
  { "battle 1 8",  "ma", "Archer's Prelude",   "me",    "Preld2" },  -- racc up
  { "battle 1 9",  "ma", "Mage's Ballad",      "me",    "Ballad1" }, -- refresh
  { "battle 1 10", "ma", "Mage's Ballad II",   "me",    "Ballad2" }, -- refresh
  { "battle 1 9",  "ma", "Mage's Ballad III",  "me",    "Ballad3" }, -- refresh
  -- 11
  { "battle 1 12", "ja", "Clarion Call",       "me",    "Clarion" },

  -- Hotbar #2  Offense
  { "battle 2 1",  "ma", "Foe Requiem",        "t",     "FoeRq1" },  -- dot
  { "battle 2 1",  "ma", "Foe Requiem II",     "t",     "FoeRq2" },  -- dot
  { "battle 2 1",  "ma", "Foe Requiem III",    "t",     "FoeRq3" },  -- dot
  { "battle 2 1",  "ma", "Foe Requiem IV",     "t",     "FoeRq4" },  -- dot
  { "battle 2 1",  "ma", "Foe Requiem V",      "t",     "FoeRq5" },  -- dot
  { "battle 2 1",  "ma", "Foe Requiem VI",     "t",     "FoeRq6" },  -- dot
  { "battle 2 1",  "ma", "Foe Requiem VII",    "t",     "FoeRq7" },  -- dot
  { "battle 2 2",  "ma", "Foe Lullaby",        "stnpc", "Lully1" },  -- sleep
  { "battle 2 3",  "ma", "Foe Lullaby II",     "stnpc", "Lully2" },  -- sleep
  { "battle 2 4",  "ma", "Horde Lullaby",      "stnpc", "Lullga1" }, -- sleep
  { "battle 2 5",  "ma", "Horde Lullaby II",   "stnpc", "Lullga2" }, -- sleep
  { "battle 2 6",  "ma", "Battlefield Elegy",  "t",     "Elegy1" },
  { "battle 2 6",  "ma", "Carnage Elegy",      "t",     "Elegy1" },

  { "battle 2 7",  "ja", "Pianissimo",         "me",    "Piano" },
  { "battle 2 8",  "ja", "Nightingale",        "me",    "N.Gale" },
  { "battle 2 9",  "ja", "Troubadour",         "me",    "Troub" },
  { "battle 2 10", "ja", "Tenuto",             "me",    "Tenuto" },
  { "battle 2 11", "ja", "Marcato",            "me",    "Marcto" },

  { "battle 2 12", "ja", "Soul Voice",         "me",    "2Hr",     "2Hr" },

  -- Hotbar #3 - Sub Job

  -- Hotbar #4 - WS, 1-5 available
  { "battle 4 1",  "ma", "Magic Finale",       "t",     "Finale" },  -- dispel
  { "battle 4 2",  "ma", "Pining Nocturne",    "t",     "Noctrn" },  -- addle

  { "battle 4 3",  "ma", "Honor March",        "me",    "March3" },  -- only with Marsyas equipped
  { "battle 4 3",  "ma", "Aria of Passion",    "me",    "Aria P." }, -- only with Loughnashade equipped

  { "battle 4 4",  "ma", "Raptor Mazurka",     "me",    "Mzrka1" },  -- run speed
  { "battle 4 4",  "ma", "Chocobo Mazurka",    "me",    "Mzrka2" },  -- run speed

  -- Hotbar #5  Other Buffs
  { "battle 5 1",  "ma", "Herb Pastoral",      "me",    "Herb P." }, -- poison resist
  { "battle 5 2",  "ma", "Scop's Operetta",    "me",    "Scop Op" }, -- silence resist
  { "battle 5 3",  "ma", "Fowl Aubade",        "me",    "Fowl A." }, -- sleep resist
  { "battle 5 4",  "ma", "Goblin Gavotte",     "me",    "GobGav" },  -- bind resist
  { "battle 5 5",  "ma", "Puppet's Operetta",  "me",    "PupOpp" },  -- silence resist
  { "battle 5 6",  "ma", "Gold Capriccio",     "me",    "GldCap" },  -- petrify resist
  { "battle 5 7",  "ma", "Shining Fantasia",   "me",    "ShnFan" },  -- blind resist
  { "battle 5 8",  "ma", "Warding Round",      "me",    "WrdRnd" },  -- curse resist

  { "battle 5 10", "ma", "Sentinel's Scherzo", "ne",    "Schrzo" },  -- protect against hp loss
  { "battle 5 11", "ma", "Foe Sirvente",       "stpc",  "Srvnte" },  -- emnity up
  { "battle 5 11", "ma", "Adventurer's Dirge", "stpc",  "Dirge" },   -- emnity down
  { "battle 5 12", "ma", "Goddess's Hymnus",   "me",    "Hymnus" },  -- reraise

  -- { "battle 5 1",  "ma", "Enchanting Etude",   "me",    "Chr Et1" }, -- chr
  -- { "battle 5 2",  "ma", "Bewitching Etude",   "me",    "Chr Et2" }, -- chr
  -- { "battle 5 3",  "ma", "Spirited Etude",     "me",    "Mnd Et1" }, -- mnd
  -- { "battle 5 4",  "ma", "Logical Etude",      "me",    "Mnd Et2" }, -- mnd
  -- { "battle 5 5",  "ma", "Learned Etude",      "me",    "Int Et1" }, -- int
  -- { "battle 5 6",  "ma", "Sage Etude",         "me",    "Int Et2" }, -- int
  -- { "battle 5 7",  "ma", "Vivacious Etude",    "me",    "Vit Et1" }, -- vit
  -- { "battle 5 8",  "ma", "Vital Etude",        "me",    "Vit Et2" }, -- vit
  -- { "battle 5 9",  "ma", "Dextrous Etude",     "me",    "Dex Et1" }, -- dex
  -- { "battle 5 10", "ma", "Uncanny Etude",      "me",    "Dex Et2" }, -- dex
  -- { "battle 5 11", "ma", "Sinewy Etude",       "me",    "Str Et1" }, -- str
  -- { "battle 5 12", "ma", "Herculean Etude",    "me",    "Str Et2" }, -- str

  -- { "battle 5 11", "ma", "Quick Etude",        "me", "Agi Et1" }, -- agi
  -- { "battle 5 12", "ma", "Swift Etude",        "me", "Agi Et2" }, -- agi

  -- { "battle 5 7",  "ma", "Army's Paeon",       "me", "Paeon1" },  -- regen
  -- { "battle 5 8",  "ma", "Army's Paeon II",    "me", "Paeon2" },  -- regen
  -- { "battle 5 9",  "ma", "Army's Paeon III",   "me", "Paeon3" },  -- regen
  -- { "battle 5 10", "ma", "Army's Paeon IV",    "me", "Paeon4" },  -- regen
  -- { "battle 5 11", "ma", "Army's Paeon V",     "me", "Paeon5" },  -- regen
  -- { "battle 5 12", "ma", "Army's Paeon VI",    "me", "Paeon6" },  -- regen

  -- Hotbar #6  Other, continued.
  { "battle 6 1",  "ma", "Light Threnody",     "t",     "LightTr." },
  { "battle 6 2",  "ma", "Dark Threnody",      "t",     "DarkTr." },
  { "battle 6 3",  "ma", "Earth Threnody",     "t",     "EartTr." },
  { "battle 6 4",  "ma", "Water Threnody",     "t",     "WatTr." },
  { "battle 6 5",  "ma", "Wind Threnody",      "t",     "WindTr." },
  { "battle 6 6",  "ma", "Fire Threnody",      "t",     "FireTr." },
  { "battle 6 7",  "ma", "Ice Threnody",       "t",     "IceTr." },
  { "battle 6 8",  "ma", "Ltng. Threnody",     "t",     "LitTr." },
  { "battle 6 1",  "ma", "Light Carol",        "t",     "LightCr." },
  { "battle 6 2",  "ma", "Dark Carol",         "t",     "DarkCr." },
  { "battle 6 3",  "ma", "Earth Carol",        "t",     "EartCr." },
  { "battle 6 4",  "ma", "Water Carol",        "t",     "WatCr." },
  { "battle 6 5",  "ma", "Wind Carol",         "t",     "WindCr." },
  { "battle 6 6",  "ma", "Fire Carol",         "t",     "FireCr." },
  { "battle 6 7",  "ma", "Ice Carol",          "t",     "IceCr." },
  { "battle 6 8",  "ma", "Lightning Carol",    "t",     "LitCr." },
  { "battle 6 9",  "ma", "Sheepfoe Mambo",     "me",    "Mmbo1" },
  { "battle 6 10", "ma", "Dragonfoe Mambo",    "me",    "Mmbo2" },
  { "battle 6 11", "ma", "Knight's Minne",     "me",    "Minne1" }, -- defense up
  { "battle 6 12", "ma", "Knight's Minne II",  "me",    "Minne2" }, -- defense up
  { "battle 6 11", "ma", "Knight's Minne III", "me",    "Minne3" }, -- defense up
  { "battle 6 12", "ma", "Knight's Minne IV",  "me",    "Minne4" }, -- defense up
  { "battle 6 11", "ma", "Knight's Minne V",   "me",    "Minne5" }, -- defense up
}



xivhotbar_keybinds_job['WHM'] = {
  { 'battle 3 1',  'ma', 'Cure',        'stpc', 'Cure1' },
  { 'battle 3 1',  'ma', 'Cure II',     'stpc', 'Cure2' },
  { 'battle 3 1',  'ma', 'Cure III',    'stpc', 'Cure3' },
  { 'battle 3 1',  'ma', 'Cure IV',     'stpc', 'Cure4' },
  { 'battle 3 1',  'ma', 'Cure V',      'stpc', 'Cure5' },

  { 'battle 3 2',  'ma', 'Poisona',     'stpc', 'Poisona' },
  { 'battle 3 3',  'ma', 'Paralyna',    'stpc', 'Paralyna' },
  { 'battle 3 4',  'ma', 'Blindna',     'stpc', 'Blindna' },
  { 'battle 3 5',  'ma', 'Silena',      'stpc', 'Silena' },
  { 'battle 3 6',  'ma', 'Cursna',      'stpc', 'Cursna' },
  { 'battle 3 7',  'ma', 'Viruna',      'stpc', 'Viruna' },
  { 'battle 3 8',  'ma', 'Stona',       'stpc', 'Stona' },
  { 'battle 3 9',  'ma', 'Erase',       'stpc', 'Erase' },
  { 'battle 3 10', 'ja', 'Divine Seal', 'me',   'Div.Seal' },


  { 'battle 3 11', 'ma', 'Curaga',      'stpc', 'Curaga' },
  { 'battle 3 11', 'ma', 'Curaga II',   'stpc', 'Curaga2' },
  { 'battle 3 11', 'ma', 'Curaga III',  'stpc', 'Curaga3' },

  { 'battle 3 12', 'ma', 'Reraise',     'me',   'Reraise' },
}

xivhotbar_keybinds_job["Sword"] = {
  -- Heavy Hit
  { "battle 4 6",  "ws", "Fast Blade",     "t", "Fast" },
  { "battle 4 7",  "ws", "Spirits Within", "t", "Spirits" },
  -- Fire
  { "battle 4 8",  "ws", "Burning Blade",  "t", "Burning" },
  -- Light
  { "battle 4 9",  "ws", "Shining Blade",  "t", "Shining" },
  -- Specials
  { "battle 4 10", "ws", "Chant du Cygne", "t", "duCygne" },
  { "battle 4 10", "ws", "Imperator",      "t", "Imperator" },

  -- AoE Ws #11
  { "battle 4 11", "ws", "Circle Blade",   "t", "Circle" },
  -- Stun WS #12
  { "battle 4 12", "ws", "Flat Blade",     "t", "Flat" },
}

xivhotbar_keybinds_job["Dagger"] = {
  -- Heavy Hit
  { "battle 4 6",  "ws", "Wasp Sting",      "t", "Wasp" },
  { "battle 4 6",  "ws", "Viper Bite",      "t", "Viper" }, -- rdm thf brd rng nin dnc
  -- Wind
  { "battle 4 7",  "ws", "Gust Slash",      "t", "Gust" },
  { "battle 4 7",  "ws", "Evisceration",    "t", "Evisc" }, -- war rdm thf bst brd rng nin cor dnc
  -- Specials
  { "battle 4 8",  "ws", "Energy Steal",    "t", "Energy" },
  { "battle 4 8",  "ws", "Energy Drain",    "t", "Energy" }, -- rdm thf brd rng nin dnc
  -- Prime #6
  { "battle 4 9",  "ws", "Ruthless Stroke", "t", "Ruthless" },
  -- Class Specific #7  { "battle 1 7",  "ws", "Mordant Rime",    "t", "Mordant" },  -- brd
  -- Merit Point #8
  { "battle 4 10", "ws", "Exenterator",     "t", "Exent" },   -- war rdm thf bst brd rng nin cor dnc
  -- Empyrean (Abyssea only)  #9
  { "battle 4 10", "ws", "Rudra's Storm",   "t", "Rudra" },   -- thf brd dnc
  -- Relic (only usable with specific weapon equips) #10
  { "battle 4 10", "ws", "Mercy Stroke",    "t", "Mercy" },   -- rdm thf brd dnc relic
  -- AoE Ws #11
  { "battle 4 11", "ws", "Cyclone",         "t", "Cyclone" }, -- rdm thf brd rng nin cor dnc
  { "battle 4 11", "ws", "Aeolian Edge",    "t", "Aeoln" },   -- rdm thf brd rng nin dnc
  -- Bind WS #12
  { "battle 4 12", "ws", "Shadowstitch",    "t", "ShdSt" },
}




return xivhotbar_keybinds_job
