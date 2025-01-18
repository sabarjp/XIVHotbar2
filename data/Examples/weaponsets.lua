-- This file has no effect on addon functions
-- This is a repository of weaponskill setups others might find useful
-- Every weaponskill is included in each setup
-- Comment out skills not needed by your class

-- Remember to modify bar-action locations to fit your needs!
-- relic/empy/mythic/prime are weapon dependent barring quests. Adjust to fit your needs

xivhotbar_keybinds_job['Hand-to-hand'] = {
  -- Heavy Hit
  { 'battle 1 1',  'ws', 'One Inch Punch',   't', '1Inch' },  -- mnk pup
  { 'battle 1 1',  'ws', 'Backhand Blow',    't', 'Backhand' },
  { 'battle 1 1',  'ws', 'Dragon Kick',      't', 'Dragon' }, -- mmk pup
  -- Multi-Hit
  { 'battle 1 2',  'ws', 'Combo',            't', 'Combo' },
  { 'battle 1 2',  'ws', 'Raging Fists',     't', 'Raging' },  -- mnk pup
  { 'battle 1 2',  'ws', 'Asuran Fists',     't', 'Asuran' },  -- mnk pup
  -- Specials
  { 'battle 1 3',  'ws', 'Howling Fist',     't', 'Howling' }, -- mnk pup
  { 'battle 1 4',  'ws', 'Tornado Kick',     't', 'Tornado' }, -- mnk pup
  -- Class Specific
  { 'battle 1 7',  'ws', "Ascetic's Fury",   't', 'Ascetic' }, -- mnk
  { 'battle 1 7',  'ws', 'Stringing Pummel', 't', 'String' },  -- pup
  -- Merit Point
  { 'battle 1 8',  'ws', 'Shijin Spiral',    't', 'Shijin' },  -- mnk pup
  -- Empyrean (Abyssea only)  #9
  { 'battle 1 9',  'ws', 'Victory Smite',    't', 'Victory' }, -- mnk pup
  -- Relic & Prime (only usable with specific weapon equips) #10
  { 'battle 1 10', 'ws', 'Final Heaven',     't', 'FinHvn' },  -- mnk
  { 'battle 1 10', 'ws', 'Dragon Blow',      't', 'DragonB' }, -- bonanza
  { 'battle 1 10', 'ws', 'Maru Kala',        't', 'Maru' },
  -- AoE Ws #11
  { 'battle 1 11', 'ws', 'Spinning Attack',  't', 'Spinning' },
  -- Stun WS #12
  { 'battle 1 12', 'ws', 'Shoulder Tackle',  't', 'Tackle' },
}

xivhotbar_keybinds_job['Dagger'] = {
  -- Heavy Hit
  { 'battle 1 1',  'ws', 'Wasp Sting',      't', 'Wasp' },
  { 'battle 1 1',  'ws', 'Viper Bite',      't', 'Viper' },   -- rdm thf brd rng nin dnc
  { 'battle 1 1',  'ws', 'Shark Bite',      't', 'Shark' },   -- thf dnc
  -- Multi-Hit
  { 'battle 1 2',  'ws', 'Dancing Edge',    't', 'DncEdge' }, -- thf dnc
  { 'battle 1 2',  'ws', 'Evisceration',    't', 'Evisc' },   -- war rdm thf bst brd rng nin cor dnc
  -- Wind
  { 'battle 1 3',  'ws', 'Gust Slash',      't', 'Gust' },
  -- Specials
  { 'battle 1 4',  'ws', 'Energy Steal',    't', 'Energy' },
  { 'battle 1 4',  'ws', 'Energy Drain',    't', 'Energy' },   -- rdm thf brd rng nin dnc
  -- Class Specific
  { 'battle 1 7',  'ws', 'Mandalic Stab',   't', 'Mandalic' }, -- thf
  { 'battle 1 7',  'ws', 'Mordant Rime',    't', 'Mordant' },  -- brd
  { 'battle 1 7',  'ws', 'Pyrrhic Kleos',   't', 'Pyrrhic' },  -- dnc
  -- Merit Point
  { 'battle 1 8',  'ws', 'Exenterator',     't', 'Exent' },    -- war rdm thf bst brd rng nin cor dnc
  -- Empyrean (Abyssea only)  #9
  { 'battle 1 9',  'ws', "Rudra's Storm",   't', 'Rudra' },    -- thf brd dnc
  -- Relic & Prime (only usable with specific weapon equips) #10
  { 'battle 1 10', 'ws', 'Ruthless Stroke', 't', 'Ruthless' },
  { 'battle 1 10', 'ws', 'Mercy Stroke',    't', 'Mercy' },   -- rdm thf brd dnc relic
  -- AoE Ws #11
  { 'battle 1 11', 'ws', 'Cyclone',         't', 'Cyclone' }, -- rdm thf brd rng nin cor dnc
  { 'battle 1 11', 'ws', 'Aeolian Edge',    't', 'Aeoln' },   -- rdm thf brd rng nin dnc
  -- Bind WS #12
  { 'battle 1 12', 'ws', 'Shadowstitch',    't', 'ShdSt' },
}

xivhotbar_keybinds_job['Sword'] = {
  -- Heavy Hit
  { 'battle 1 1',  'ws', 'Fast Blade',       't', 'Fast' },
  { 'battle 1 1',  'ws', 'Spirits Within',   't', 'Spirits' },
  -- Multi-Hit
  { 'battle 1 2',  'ws', 'Vorpal Blade',     't', 'Vorpal' }, -- war rdm pld drk blu run
  { 'battle 1 2',  'ws', 'Swift Blade',      't', 'Swift' },  -- pld run
  { 'battle 1 2',  'ws', 'Savage Blade',     't', 'Savage' }, -- war rdm pld drk blu cor run sub
  -- Fire
  { 'battle 1 3',  'ws', 'Burning Blade',    't', 'Burning' },
  { 'battle 1 3',  'ws', 'Red Lotus Blade',  't', 'RLotus' }, -- war rdm pld drk blu
  -- Light
  { 'battle 1 4',  'ws', 'Shining Blade',    't', 'Shining' },
  { 'battle 1 4',  'ws', 'Seraph Blade',     't', 'Seraph' },   -- war rdm pld drk blu run sub
  -- Specials
  { 'battle 1 5',  'ws', 'Sanguine Blade',   't', 'Sanguine' }, -- war rdm pld drk blu run
  -- Class Specific
  { 'battle 1 6',  'ws', 'Death Blossom',    't', 'D Blsm' },   -- rdm
  { 'battle 1 6',  'ws', 'Atonement',        't', 'Atone' },    -- pld
  { 'battle 1 6',  'ws', 'Expiacion',        't', 'Expiacn' },  -- blu
  -- Merit Point
  { 'battle 1 7',  'ws', 'Requiescat',       't', 'Requisct' }, -- war rdm pld drk sam blu cor run
  -- Empyrean (Abyssea only)  #9
  { 'battle 1 9',  'ws', 'Chant du Cygne',   't', 'duCygne' },
  -- Relic & Prime (only usable with specific weapon equips) #10
  { 'battle 1 10', 'ws', 'Knights of Round', 't', 'KotR' }, -- rdm pld blu relic
  { 'battle 1 10', 'ws', 'Imperator',        't', 'Imperator' },
  -- AoE Ws #11
  { 'battle 1 11', 'ws', 'Circle Blade',     't', 'Circle' },
  -- Stun WS #12
  { 'battle 1 12', 'ws', 'Flat Blade',       't', 'Flat' },
}

xivhotbar_keybinds_job['Great Sword'] = {
  -- Heavy Hit
  { 'battle 1 1',  'ws', 'Hard Slash',      't', 'Hard' },
  { 'battle 1 1',  'ws', 'Power Slash',     't', 'Power' },
  { 'battle 1 1',  'ws', 'Crescent Moon',   't', 'Crescent' },
  { 'battle 1 1',  'ws', 'Spinning Slash',  't', 'Spinning' }, -- run drk pld war
  { 'battle 1 1',  'ws', 'Ground Strike',   't', 'Ground' },
  -- Multi-Hit
  { 'battle 1 2',  'ws', 'Sickle Moon',     't', 'Sickle' },
  -- Ice
  { 'battle 1 3',  'ws', 'Frostbite',       't', 'Frostbite' },
  { 'battle 1 3',  'ws', 'Freezebite',      't', 'Freezebite' },
  -- Specials
  { 'battle 1 4',  'ws', 'Herculean Slash', 't', 'Herculean' },
  -- Class Specific
  { 'battle 1 5',  'ws', 'Dimidiation',     't', 'Dimidiation' }, -- run
  -- Merit Point
  { 'battle 1 6',  'ws', 'Resolution',      't', 'Resolutn' },    -- merit
  -- Empyrean (Abyssea only) #9
  { 'battle 1 9',  'ws', 'Torcleaver',      't', 'Torclvr' },     -- pld drk
  -- Relic & Prime (only usable with specific weapon equips) #10
  { 'battle 1 10', 'ws', 'Scourge',         't', 'Scourge' },     -- war pld drk run relic
  { 'battle 1 10', 'ws', 'Fimbulvetr',      't', 'Fimbulvetr' },
  -- AoE Ws #11
  -- none
  -- Sleep WS #12
  { 'battle 1 12', 'ws', 'Shockwave',       't', 'Shockwave' },
}

xivhotbar_keybinds_job['Axe'] = {
  -- Heavy Hit
  { 'battle 1 1',  'ws', 'Avalanche Axe', 't', 'Avlnche' },
  { 'battle 1 1',  'ws', 'Spinning Axe',  't', 'Spinning' }, -- war drk run bst
  { 'battle 1 1',  'ws', 'Calamity',      't', 'Calamity' }, -- war bst
  -- Multi-Hit
  { 'battle 1 2',  'ws', 'Raging Axe',    't', 'Raging' },
  { 'battle 1 2',  'ws', 'Rampage',       't', 'Rampage' },
  { 'battle 1 2',  'ws', 'Decimation',    't', 'Decimate' }, -- war drk bst rng run
  -- Wind
  { 'battle 1 3',  'ws', 'Gale Axe',      't', 'Gale' },
  -- Specials
  { 'battle 1 4',  'ws', 'Mistral Axe',   't', 'Mistral' },   -- war bst
  -- Class Specific
  { 'battle 1 5',  'ws', 'Primal Rend',   't', 'Primal' },    -- bst
  -- Merit Point
  { 'battle 1 6',  'ws', 'Ruinator',      't', 'Ruinator' },  -- war drk bst rng run
  -- Empyrean (Abyssea only)  #9
  { 'battle 1 9',  'ws', 'Cloudsplitter', 't', 'Cloudsplt' }, -- war bst
  -- Relic & Prime (only usable with specific weapon equips) #10
  { 'battle 1 10', 'ws', 'Onslaught',     't', 'Onslaught' }, -- bst relic
  { 'battle 1 10', 'ws', 'Blitz',         't', 'Blitz' },     -- bst
  -- Bind WS #11
  { 'battle 1 11', 'ws', 'Bora Axe',      't', 'Bora' },      -- war drk run bst
  -- Bind WS #12
  { 'battle 1 12', 'ws', 'Smash Axe',     't', 'Smash' },
}

xivhotbar_keybinds_job['Great Axe'] = {
  -- Heavy Hit
  { 'battle 1 1',  'ws', 'Iron Tempest',     't', 'Iron' },
  { 'battle 1 1',  'ws', 'Keen Edge',        't', 'Keen' },
  { 'battle 1 1',  'ws', 'Steel Cyclone',    't', 'Steel' }, -- war drk run
  -- Multi-Hit
  { 'battle 1 2',  'ws', 'Sturmwind',        't', 'Sturm' },
  { 'battle 1 2',  'ws', 'Raging Rush',      't', 'Raging' }, -- war
  -- Elements
  -- none
  -- Specials
  { 'battle 1 3',  'ws', 'Shield Break',     't', 'Shld' },
  { 'battle 1 3',  'ws', 'Armor Break',      't', 'Armr' },
  { 'battle 1 4',  'ws', 'Weapon Break',     't', 'Wpn' },
  { 'battle 1 5',  'ws', 'Full Break',       't', 'Full' },        -- war
  -- Class Specific
  { 'battle 1 6',  'ws', "King's Justice",   't', "King" },        -- war
  -- Merit Point
  { 'battle 1 7',  'ws', 'Upheaval',         't', 'Upheaval' },    -- war drk run
  -- Empyrean (Abyssea only)  #9
  { 'battle 1 9',  'ws', "Ukko's Fury",      't', "Ukko's Fury" }, -- war
  -- Relic & Prime (only usable with specific weapon equips) #10
  { 'battle 1 10', 'ws', 'Metatron Torment', 't', 'Meta' },        -- war
  { 'battle 1 10', 'ws', 'Disaster',         't', 'Distr' },       -- war
  -- AoE Ws #11
  { 'battle 1 11', 'ws', 'Fell Cleave',      't', 'FellClv' },     -- war drk run
  -- Stun WS #12
  -- none
}

xivhotbar_keybinds_job['Scythe'] = {
  -- Heavy Hit
  { 'battle 1 1',  'ws', 'Slice',            't', 'Slice' },
  { 'battle 1 1',  'ws', 'Vorpal Scythe',    't', 'Vorpal' },
  { 'battle 1 1',  'ws', 'Spiral Hell',      't', 'Spiral' }, -- war drk bst
  -- Multi-Hit
  { 'battle 1 2',  'ws', 'Cross Reaper',     't', 'Cross' },
  -- Darkness
  { 'battle 1 3',  'ws', 'Dark Harvest',     't', 'DHvst' },
  { 'battle 1 3',  'ws', 'Shadow of Death',  't', 'Shadow' },   -- war drk
  { 'battle 1 3',  'ws', 'Infernal Scythe',  't', 'Infernal' }, -- war drk
  -- Specials
  { 'battle 1 4',  'ws', 'Guillotine',       't', 'Guill' },    -- drk
  { 'battle 1 5',  'ws', 'Nightmare Scythe', 't', 'Nmare' },
  -- Class Specific
  { 'battle 1 6',  'ws', 'Insurgency',       't', 'Insurge' }, -- drk
  -- Merit Point
  { 'battle 1 7',  'ws', 'Entropy',          't', 'Entropy' }, -- war drk bst
  -- Empyrean (Abyssea only)  #9
  { 'battle 1 9',  'ws', 'Quietus',          't', 'Quietus' },
  -- Relic & Prime (only usable with specific weapon equips) #10
  { 'battle 1 10', 'ws', 'Catastrophe',      't', 'Cata' },   -- drk relic
  { 'battle 1 10', 'ws', 'Origin',           't', 'Origin' }, -- drk
  -- AoE Ws #11
  { 'battle 1 11', 'ws', 'Spinning Scythe',  't', 'Spinning' },
  -- Stun WS #12
  -- none
}

xivhotbar_keybinds_job['Polearm'] = {
  -- Heavy Hit
  { 'battle 1 1',  'ws',                'Vorpal Thrust',   't', 'Vorpal' },
  { 'battle 1 1',  'ws',                'Wheeling Thrust', 't', 'Wheel' }, -- drg
  -- Multi-Hit
  { 'battle 1 2',  'ws',                'Double Thrust',   't', 'Double' },
  { 'battle 1 2',  'ws',                'Penta Thrust',    't', 'Penta' },
  { 'battle 1 2',  'ws',                'Drakesbane',      't', 'Drakes' },
  -- Thunder
  { 'battle 1 3',  'ws',                'Thunder Thrust',  't', 'Thunder' },
  { 'battle 1 3',  'ws',                'Raiden Thrust',   't', 'Raiden' },  -- war pld drg
  -- Specials
  { 'battle 1 4',  'ws',                'Skewer',          't', 'Skewer' },  -- drg
  { 'battle 1 4',  'ws',                'Impulse Drive',   't', 'Impulse' }, -- war sam drg
  -- Merit Point
  { 'battle 1 5',  'ws',                'Stardiver',       't', 'Star' },    -- war sam drg
  -- Empyrean (Abyssea only)  #9
  { 'battle 1 9',  "Camlann's Torment", 'name',            't', 'Camlann' }, -- drg
  -- Relic & Prime (only usable with specific weapon equips) #10
  { 'battle 1 10', 'ws',                'Geirskogul',      't', 'Geirsk' },  -- drg
  { 'battle 1 10', 'ws',                'Diarmuid',        't', 'Diarm' },
  -- AoE Ws #11
  { 'battle 1 11', 'ws',                'Sonic Thrust',    't', 'Sonic' }, -- war pld drg
  -- Stun WS #12
  { 'battle 1 12', 'ws',                'Leg Sweep',       't', 'LegSwp' },
}

xivhotbar_keybinds_job['Katana'] = {
  -- Heavy Hit
  { 'battle 1 1',  'ws', 'Blade: Rin',   't', 'Rin' },
  { 'battle 1 1',  'ws', 'Blade: Teki',  't', 'Teki' },
  { 'battle 1 1',  'ws', 'Blade: To',    't', 'To' },
  { 'battle 1 1',  'ws', 'Blade: Ei',    't', 'Ei' },
  { 'battle 1 1',  'ws', 'Blade: Ten',   't', 'Ten' }, -- nin
  -- Multi-Hit
  { 'battle 1 2',  'ws', 'Blade: Retsu', 't', 'Retsu' },
  { 'battle 1 2',  'ws', 'Blade: Chi',   't', 'Chi' },
  { 'battle 1 2',  'ws', 'Blade: Jin',   't', 'Jin' },  -- nin
  { 'battle 1 2',  'ws', 'Blade: Ku',    't', 'Ku' },   -- nin
  -- Specials
  { 'battle 1 3',  'ws', 'Blade: Yu',    't', 'Yu' },   -- nin
  -- Class Specific
  { 'battle 1 7',  'ws', 'Blade: Kamu',  't', 'Kamu' }, -- nin
  -- Merit Point
  { 'battle 1 8',  'ws', 'Blade: Shun',  't', 'Shun' },
  -- Empyrean (Abyssea only)  #9
  { 'battle 1 9',  'ws', 'Blade: Hi',    't', 'Hi' },    -- nin
  -- Relic & Prime (only usable with specific weapon equips) #10
  { 'battle 1 10', 'ws', 'Blade: Metsu', 't', 'Metsu' }, -- nin relic
  { 'battle 1 10', 'ws', 'Zesho Meppo',  't', 'Zesho' }, -- nin
  -- AoE Ws #11
  -- none
  -- Stun WS #12
  -- none
}

xivhotbar_keybinds_job['Great Katana'] = {
  -- Heavy Hit
  { 'battle 1 1',  'ws', 'Tachi: Ageha',    't', 'Ageha' },
  -- Multi-Hit
  { 'battle 1 2',  'ws', 'Tachi: Enpi',     't', 'Enpi' },
  { 'battle 1 2',  'ws', 'Tachi: Jinpu',    't', 'Jinpu' },
  { 'battle 1 2',  'ws', 'Tachi: Rana',     't', 'Rana' }, -- sam
  -- Elements
  { 'battle 1 3',  'ws', 'Tachi: Goten',    't', 'Goten' },
  { 'battle 1 3',  'ws', 'Tachi: Kagero',   't', 'Kagero' },
  { 'battle 1 3',  'ws', 'Tachi: Koki',     't', 'Koki' },
  -- Specials
  { 'battle 1 4',  'ws', 'Tachi: Yukikaze', 't', 'Yuki' },  -- sam
  { 'battle 1 5',  'ws', 'Tachi: Gekko',    't', 'Gekko' }, -- sam
  { 'battle 1 6',  'ws', 'Tachi: Kasha',    't', 'Kasha' }, -- sam
  -- Merit Point
  { 'battle 1 8',  'ws', 'Tachi: Shoha',    't', 'Shoha' }, -- sam
  -- Empyrean (Abyssea only)  #9
  { 'battle 1 9',  'ws', 'Tachi: Fudo',     't', 'Fudo' },  -- sam
  -- Relic & Prime (only usable with specific weapon equips) #10
  { 'battle 1 10', 'ws', 'Tachi: Kaiten',   't', 'Kaiten' },
  { 'battle 1 10', 'ws', 'Tachi: Mumei',    't', 'Mumei' }, -- sam
  -- AoE Ws #11
  -- none
  -- Stun WS #12
  { 'battle 1 12', 'ws', 'Tachi: Hobaku',   't', 'Hobaku' },
}

xivhotbar_keybinds_job['Club'] = {
  -- Heavy Hit
  { 'battle 1 1',  'ws', 'True Strike',    't',  'True' },
  { 'battle 1 1',  'ws', 'Judgment',       't',  'Judgment' }, -- war whm pld drk sam blu geo
  -- Multi-Hit
  { 'battle 1 2',  'ws', 'Hexa Strike',    't',  'Hexa' },     -- whm geo
  { 'battle 1 2',  'ws', 'Black Halo',     't',  'Bl Halo' },  -- war mnk whm blm pld smn blu sch geo
  -- Light
  { 'battle 1 3',  'ws', 'Shining Strike', 't',  'Shining' },
  { 'battle 1 3',  'ws', 'Seraph Strike',  't',  'Seraph' },  -- war whm pld drk sam blu geo
  { 'battle 1 3',  'ws', 'Flash Nova',     't',  'Fl Nova' }, -- war whm pld drk sam blu geo
  -- Specials
  { 'battle 1 4',  'ws', 'Skullbreaker',   't',  'Skullbrk' },
  { 'battle 1 5',  'ws', 'Starlight',      'me', 'Star' },
  { 'battle 1 5',  'ws', 'Moonlight',      'me', 'Moon' },     -- war whm pld drk sam blu geo
  -- Class Specific
  { 'battle 1 6',  'ws', 'Mystic Boon',    't',  'Mystic' },   -- whm only
  { 'battle 1 6',  'ws', 'Exudation',      't',  'Exuda' },    -- geo
  -- Merit Point
  { 'battle 1 7',  'ws', 'Realmrazer',     't',  'Realmrzr' }, -- war mnk whm blm pld smn blu sch geo
  -- Empyrean (Abyssea only)  #9
  { 'battle 1 9',  'ws', 'Dagan',          't',  'Dagan' },    -- whm
  -- Relic & Prime (only usable with specific weapon equips) #10
  { 'battle 1 10', 'ws', 'Randgrith',      't',  'Randgrt' },  -- whm sch geo relic
  { 'battle 1 10', 'ws', 'Dagda',          't',  'Dagda' },    -- whm geo recc
  -- AoE Ws #11
  -- none
  -- Stun WS #12
  { 'battle 1 12', 'ws', 'Brainshaker',    't',  'Brainshkr' },
}

xivhotbar_keybinds_job['Staff'] = {
  -- Heavy Hit
  { 'battle 1 1',  'ws', 'Heavy Swing',      't', 'Heavy' },
  { 'battle 1 1',  'ws', 'Full Swing',       't', 'Full' },
  { 'battle 1 1',  'ws', 'Retribution',      't', 'Retrb' }, -- war mnk whm blm pld brd drg smn sch geo
  -- Multi-Hit
  -- shattersoul
  -- Elements
  { 'battle 1 3',  'ws', 'Rock Crusher',     't', 'Rock' },
  { 'battle 1 3',  'ws', 'Starburst',        't', 'Starbrst' },
  { 'battle 1 3',  'ws', 'Sunburst',         't', 'Sunbrst' }, -- war mnk whm pld geo
  -- Specials
  { 'battle 1 4',  'ws', 'Shell Crusher',    't', 'Shell' },
  { 'battle 1 4',  'ws', 'Spirit Taker',     't', 'Spirit' },
  -- Class Specific
  { 'battle 1 5',  'ws', 'Garland of Bliss', 't', 'Garland' }, -- smn
  { 'battle 1 5',  'ws', 'Omniscience',      't', 'Omnisc' },  -- sch
  { 'battle 1 5',  'ws', 'Vidohunir',        't', 'Vidoh' },   -- blm
  -- Merit Point
  { 'battle 1 2',  'ws', 'Shattersoul',      't', 'Shatter' },
  -- Empyrean (Abyssea only)  #9
  { 'battle 1 9',  'ws', 'Myrkr',            't', 'Myrkr' },    -- blm smn sch
  -- Relic & Prime (only usable with specific weapon equips) #10
  { 'battle 1 10', 'ws', 'Gate of Tartarus', 't', 'Gate' },     -- blm smn relic
  { 'battle 1 10', 'ws', 'Oshala',           't', 'Oshala' },   -- blm smn sch
  -- AoE Ws #11
  { 'battle 1 11', 'ws', 'Earth Crusher',    't', 'Crusher' },  -- war mnk whm pld geo
  { 'battle 1 11', 'ws', 'Cataclysm',        't', 'Catcylsm' }, -- war mnk whm pld geo
  -- Stun WS #12
  -- none
}

xivhotbar_keybinds_job['Bow'] = {
  -- Heavy Hit
  { 'battle 1 1',  'ws', 'Flaming Arrow',     't', 'Flame' },    -- rng sub
  { 'battle 1 1',  'ws', 'Piercing Arrow',    't', 'Pierce' },   -- rng sub
  { 'battle 1 1',  'ws', 'Sidewinder',        't', 'Sidewndr' }, -- rng sub
  { 'battle 1 1',  'ws', 'Arching Arrow',     't', 'Arch' },     -- rng
  { 'battle 1 2',  'ws', 'Empyreal Arrow',    't', 'Empyrl' },   -- rng
  -- Multi-Hit
  { 'battle 1 3',  'ws', 'Refulgent Arrow',   't', 'Reflgnt' },  -- rng sub
  -- Specials
  { 'battle 1 4',  'ws', 'Dulling Arrow',     't', 'Dull' },     -- rng sub
  { 'battle 1 4',  'ws', 'Blast Arrow',       't', 'Blast' },    -- rng
  -- Merit Point
  { 'battle 1 8',  'ws', 'Apex Arrow',        't', 'Apex' },     -- rng sam
  -- Empyrean (Abyssea only)  #9
  { 'battle 1 9',  'ws', "Jishnu's Radiance", 't', 'Jishnu' },   -- rng
  -- Relic & Prime (only usable with specific weapon equips) #10
  { 'battle 1 10', 'ws', 'Namas Arrow',       't', 'Namas' },    -- rng sam relic
  { 'battle 1 10', 'ws', 'Sarv',              't', 'Sarv' },     -- rng
  -- AoE Ws #11
  -- none
  -- Stun WS #12
  -- none
}

xivhotbar_keybinds_job['Marksmanship'] = {
  -- Heavy Hit
  { 'battle 1 1',  'ws', 'Hot Shot',      't', 'Hot' },      -- rng cor sub
  { 'battle 1 1',  'ws', 'Sniper Shot',   't', 'Sniper' },   -- rng cor sub
  { 'battle 1 1',  'ws', 'Slug Shot',     't', 'Slug' },     -- rng cor sub
  { 'battle 1 2',  'ws', 'Detonator',     't', 'Detonate' }, -- rng cor
  -- Multi-Hit
  { 'battle 1 3',  'ws', 'Blast Shot',    't', 'Blast' },    -- rng
  -- Specials
  { 'battle 1 4',  'ws', 'Split Shot',    't', 'Split' },    -- rng cor
  { 'battle 1 4',  'ws', 'Numbing Shot',  't', 'Numb' },     -- rng cor sub
  -- Class Specific
  { 'battle 1 7',  'ws', 'Heavy Shot',    't', 'Heavy' },    -- rng
  { 'battle 1 7',  'ws', 'Trueflight',    't', 'Trueflt' },  -- rng
  { 'battle 1 7',  'ws', 'Leaden Salute', 't', 'Leaden' },   -- cor
  -- Merit Point
  { 'battle 1 8',  'ws', 'Last Stand',    't', 'Last' },     -- thf rng cor
  -- Empyrean (Abyssea only)  #9
  { 'battle 1 9',  'ws', 'Wildfire',      't', 'Wildfire' }, -- rng cor
  -- Relic & Prime (only usable with specific weapon equips) #10
  { 'battle 1 10', 'ws', 'Coronach',      't', 'Coronach' }, -- rng cor relic
  { 'battle 1 10', 'ws', 'Terminus',      't', 'Terminus' }, -- rng cor
  -- AoE Ws #11
  -- none
  -- Stun WS #12
  -- none
}
