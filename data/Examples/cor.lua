-- Load and initialize the include file.
xivhotbar_keybinds_job['Base'] = {

  --Hotbar #1
  -- Cards on 1-7; Weaponskills on 8-12
  { 'battle 1 1',  'ja',    "Double-Up",            'me', 'Dbl Up',  'ffxiv/ast/play' },
  -- CARDS Endgame physical
  { 'battle 1 2',  'ja',    "Samurai Roll",         'me', 'SAM',     'classes/sam' }, -- store TP
  { 'battle 1 3',  'ja',    "Allies' Roll",         'me', 'ALL',     'classes/sge' }, -- skillchains
  -- CARDS Common physical
  { 'battle 1 4',  'ja',    "Hunter's Roll",        'me', 'HUN',     'classes/acr' }, -- acc & ra acc
  { 'battle 1 5',  'ja',    "Chaos Roll",           'me', 'CHS',     'classes/rpr' }, -- phys atk
  -- CARDS Common & Endgame magic
  { 'battle 1 6',  'ja',    "Wizard's Roll",        'me', 'WIZ',     'classes/blm' }, -- matk
  { 'battle 1 7',  'ja',    "Warlock's Roll",       'me', 'WLK',     'classes/thm' }, -- magic acc

  --Hotbar #2
  --main job abilities
  { 'battle 2 1',  'ja',    "Snake Eye",            'me', 'Snk Eye', 'ffxiv/blu/the_look' }, -- merit
  { 'battle 2 2',  'ja',    "Random Deal",          'me', 'Randm',   'ffxiv/ast/draw' },
  { 'battle 2 3',  'ja',    "Crooked Cards",        'me', 'Crooked', 'ffxiv/ast/crown_play' },
  { 'battle 2 4',  'ja',    "Cutting Cards",        'me', 'Cutting', 'ffxiv/ast/minor_arcana' },
  -- CARDS Common & Endgame Defense
  { 'battle 2 5',  'ja',    "Gallant's Roll",       'me', 'GAL',     'classes/pld' }, -- def
  { 'battle 2 6',  'ja',    "Magus's Roll",         'me', 'MGS',     'classes/whm' }, -- mag def
  { 'battle 2 7',  'ja',    "Runeist's Roll",       'me', 'RUN',     'classes/drk' }, -- mag eva
  -- CARDS Skill-Ups
  { 'battle 2 8',  'ja',    "Blitzer's Roll",       'me', 'BTZ',     'classes/gld' }, -- attack speed
  { 'battle 2 9',  'ja',    "Courser's Roll",       'me', 'CSR',     'classes/gnb' }, -- snapshot

  --Hotbar #3
  --sub job abilities; leave blank

  --Hotbar #4
  --utility or pet bar
  --12 is always 2-hour ability
  -- CARDS junk | leveling
  { 'battle 4 1',  'ja',    "Ninja Roll",           'me', 'NIN',     'classes/nin' }, -- eva
  { 'battle 4 2',  'ja',    "Monk's Roll",          'me', 'MNK',     'classes/mnk' }, -- subtle blow
  { 'battle 4 3',  'ja',    "Rogue's Roll",         'me', 'RGE',     'classes/rge' }, -- crit
  { 'battle 4 4',  'ja',    "Fighter's Roll",       'me', 'FTR',     'classes/mar' }, -- double atk
  { 'battle 4 5',  'ja',    "Choral Roll",          'me', 'CRL',     'classes/brd' }, -- spell interrupt
  { 'battle 4 6',  'ja',    "Scholar's Roll",       'me', 'SCH',     'classes/sch' }, -- conserve mp
  { 'battle 4 7',  'ja',    "Caster's Roll",        'me', 'CST',     'classes/rdm' }, -- fast cast
  { 'battle 4 8',  'ja',    "Naturalist's Roll",    'me', 'NTR',     'classes/cnj' }, -- enhancing
  { 'battle 4 9',  'ja',    "Avenger's Roll",       'me', 'AVG',     'classes/blu' }, -- countering
  -- 2HR
  { 'battle 4 12', 'ja',    "Wild Card",            'me', 'W Card',  'ffxiv/ast/horoscope_2' },

  -- Hotbar #5
  -- Ranged Hotbar #5
  { 'battle 5 1',  'input', '/ra <t>',              '',   'RA',      'ffxiv/mch/gauss_round' },
  { 'battle 5 2',  'ja',    "Tripe Shot",           'me', 'Triple',  'ffxiv/mch/ricochet' },
  { 'battle 5 7',  'input', '/equip ammo "Bullet"', '',   'Ammo',    'ffxiv/mch/slug_shot' },
  -- Quick Draw
  { 'battle 5 3',  'ja',    "Light Shot",           't',  'Light',   'ffxiv/ast/003146' },
  { 'battle 5 4',  'ja',    "Earth Shot",           't',  'Earth',   'ffxiv/ast/003115' },
  { 'battle 5 5',  'ja',    "Water Shot",           't',  'Water',   'ffxiv/ast/003114' },
  { 'battle 5 6',  'ja',    "Wind Shot",            't',  'Wind',    'ffxiv/ast/003111' },
  { 'battle 5 9',  'ja',    "Dark Shot",            't',  'Dark',    'ffxiv/ast/003147' },
  { 'battle 5 10', 'ja',    "Fire Shot",            't',  'Fire',    'ffxiv/ast/003110' },
  { 'battle 5 11', 'ja',    "Ice Shot",             't',  'Ice',     'ffxiv/ast/003113' },
  { 'battle 5 12', 'ja',    "Thunder Shot",         't',  'Thunder', 'ffxiv/ast/003112' },

  -- Hotbar #6
  -- utility | downtime | pets
  { 'battle 6 1',  'ja',    "Corsair's Roll",       'me', 'COR',     'classes/ast' },      -- exp
  { 'battle 6 2',  'ja',    "Dancer's Roll",        'me', 'DNC',     'classes/dnc' },      -- regen
  { 'battle 6 3',  'ja',    "Tactician's Roll",     'me', 'TCT',     'classes/arc' },      -- regain
  { 'battle 6 4',  'ja',    "Drachen Roll",         'me', 'DRC',     'classes/lnc' },      -- pet & ra acc
  { 'battle 6 5',  'ja',    "Puppet Roll",          'me', 'PUP',     'classes/pug' },      -- pet matk & pet macc
  { 'battle 6 6',  'ja',    "Companion's Roll",     'me', 'COM',     'classes/drg' },      -- pet regen
  { 'battle 6 7',  'ja',    "Bolter's Roll",        'me', 'BLT',     'classes/mag_rng' },  -- movespeed
  { 'battle 6 8',  'ja',    "Evoker's Roll",        'me', 'EVO',     'classes/smn' },      -- MP regen
  { 'battle 6 9',  'ja',    "Miser's Roll",         'me', 'MIS',     'classes/vpr' },      -- save TP
  { 'battle 6 10', 'ja',    "Beast Roll",           'me', 'BST',     'classes/war' },      -- pet atk
  { 'battle 3 11', 'ja',    "Healer's Roll",        'me', 'HLR',     'classes/hlr' },      -- cure potency
  { 'battle 6 12', 'ja',    "Fold",                 'me', 'Fold',    'ffxiv/ast/undraw' }, -- merit

  -- COR DECK LIST
  -- Card abilities
  -- {'battle 2 1', 'ja', "Double-Up", 'me', 'Dbl Up','ffxiv/ast/play'},
  -- {'battle 2 2', 'ja', "Snake Eye", 'me', 'Snk Eye','ffxiv/blu/the_look'}, -- merit
  -- {'battle 2 3', 'ja', "Fold", 'me', 'Fold','ffxiv/ast/undraw'}, -- merit

  -- Cards - physical
  -- {'battle 3 3', 'ja', "Ninja Roll", 'me', 'NIN','classes/nin'}, -- eva
  -- {'battle 3 4', 'ja', "Hunter's Roll", 'me', 'HUN','classes/acr'}, -- acc & ra acc
  -- {'battle 3 5', 'ja', "Chaos Roll", 'me', 'CHS','classes/rpr'}, -- phys atk
  -- {'battle 3 10', 'ja', "Monk's Roll", 'me', 'MNK','classes/mnk'}, -- subtle blow
  -- {'battle 3 3', 'ja', "Samurai Roll", 'me', 'SAM','classes/sam'}, -- store TP
  -- {'battle 3 6', 'ja', "Rogue's Roll", 'me', 'RGE','classes/rge'}, -- crit
  -- {'battle 3 2', 'ja', "Fighter's Roll", 'me', 'FTR','classes/mar'}, -- double atk
  -- {'battle 3 8', 'ja', "Courser's Roll", 'me', 'CSR','classes/gnb'}, -- snapshot
  -- {'battle 3 8', 'ja', "Blitzer's Roll", 'me', 'BTZ','classes/gld'}, -- attack speed
  -- {'battle 3 8', 'ja', "Tactician's Roll", 'me', 'TCT','classes/arc'}, -- regain
  -- {'battle 3 8', 'ja', "Miser's Roll", 'me', 'MIS','classes/vpr'}, -- save TP

  -- Cards - magical
  -- {'battle 3 7', 'ja', "Healer's Roll", 'me', 'HLR','classes/hlr'}, -- cure potency
  -- {'battle 3 9', 'ja', "Choral Roll", 'me', 'CRL','classes/brd'}, -- spell interrupt
  -- {'battle 3 9', 'ja', "Evoker's Roll", 'me', 'EVO','classes/smn'}, -- MP regen
  -- {'battle 3 4', 'ja', "Warlock's Roll", 'me', 'WLK','classes/thm'}, -- magic acc
  -- {'battle 3 8', 'ja', "Wizard's Roll", 'me', 'WIZ','classes/blm'}, -- matk
  -- {'battle 3 8', 'ja', "Scholar's Roll", 'me', 'SCH','classes/sch'}, -- conserve mp
  -- {'battle 3 8', 'ja', "Caster's Roll", 'me', 'CST','classes/rdm'}, -- fast cast

  -- Cards - pets
  -- {'battle 3 8', 'ja', "Drachen Roll", 'me', 'DRC','classes/lnc'}, -- pet & ra acc
  -- {'battle 3 11', 'ja', "Beast Roll", 'me', 'BST','classes/war'}, -- pet atk
  -- {'battle 3 6', 'ja', "Puppet Roll", 'me', 'PUP','classes/pug'}, -- pet matk & pet macc
  -- {'battle 3 8', 'ja', "Companion's Roll", 'me', 'COM','classes/drg'}, -- pet regen

  -- Cards - utility
  -- {'battle 3 2', 'ja', "Corsair's Roll", 'me', 'COR','classes/ast'}, -- exp
  -- {'battle 3 7', 'ja', "Magus's Roll", 'me', 'MGS','classes/whm'}, -- mag def
  -- {'battle 3 8', 'ja', "Gallant's Roll", 'me', 'GAL','classes/pld'}, -- def
  -- {'battle 3 8', 'ja', "Dancer's Roll", 'me', 'DNC','classes/dnc'}, -- regen
  -- {'battle 3 8', 'ja', "Naturalist's Roll", 'me', 'NTR','classes/cnj'}, -- enhancing
  -- {'battle 3 8', 'ja', "Runeist's Roll", 'me', 'RUN','classes/drk'}, -- mag eva
  -- {'battle 3 8', 'ja', "Bolter's Roll", 'me', 'BLT','classes/mag_rng'}, -- movespeed
  -- {'battle 3 8', 'ja', "Allies' Roll", 'me', 'ALL','classes/sge'}, -- skillchains
  -- {'battle 3 8', 'ja', "Avenger's Roll", 'me', 'AVG','classes/blu'}, -- countering

  -- Cards - in leveling order
  -- {'battle 3 2', 'ja', "Corsair's Roll", 'me', 'COR','classes/ast'}, -- exp
  -- {'battle 3 3', 'ja', "Ninja Roll", 'me', 'NIN','classes/nin'}, -- eva
  -- {'battle 3 4', 'ja', "Hunter's Roll", 'me', 'HUN','classes/acr'}, -- acc & ra acc
  -- {'battle 3 5', 'ja', "Chaos Roll", 'me', 'CHS','classes/rpr'}, -- phys atk
  -- {'battle 3 7', 'ja', "Magus's Roll", 'me', 'MGS','classes/whm'}, -- mag def
  -- {'battle 3 7', 'ja', "Healer's Roll", 'me', 'HLR','classes/hlr'}, -- cure potency
  -- {'battle 3 8', 'ja', "Drachen Roll", 'me', 'DRC','classes/lnc'}, -- pet & ra acc
  -- {'battle 3 9', 'ja', "Choral Roll", 'me', 'CRL','classes/brd'}, -- spell interrupt
  -- {'battle 3 10', 'ja', "Monk's Roll", 'me', 'MNK','classes/mnk'}, -- subtle blow
  -- {'battle 3 11', 'ja', "Beast Roll", 'me', 'BST','classes/war'}, -- pet atk
  -- {'battle 3 3', 'ja', "Samurai Roll", 'me', 'SAM','classes/sam'}, -- store TP
  -- {'battle 3 9', 'ja', "Evoker's Roll", 'me', 'EVO','classes/smn'}, -- MP regen
  -- {'battle 3 6', 'ja', "Rogue's Roll", 'me', 'RGE','classes/rge'}, -- crit
  -- {'battle 3 4', 'ja', "Warlock's Roll", 'me', 'WLK','classes/thm'}, -- magic acc
  -- {'battle 3 2', 'ja', "Fighter's Roll", 'me', 'FTR','classes/mar'}, -- double atk
  -- {'battle 3 6', 'ja', "Puppet Roll", 'me', 'PUP','classes/pug'}, -- pet matk & pet macc
  -- {'battle 3 8', 'ja', "Gallant's Roll", 'me', 'GAL','classes/pld'}, -- def
  -- {'battle 3 8', 'ja', "Wizard's Roll", 'me', 'WIZ','classes/blm'}, -- matk
  -- {'battle 3 8', 'ja', "Dancer's Roll", 'me', 'DNC','classes/dnc'}, -- regen
  -- {'battle 3 8', 'ja', "Scholar's Roll", 'me', 'SCH','classes/sch'}, -- conserve mp
  -- {'battle 3 8', 'ja', "Naturalist's Roll", 'me', 'NTR','classes/cnj'}, -- enhancing
  -- {'battle 3 8', 'ja', "Runeist's Roll", 'me', 'RUN','classes/drk'}, -- mag eva
  -- {'battle 3 8', 'ja', "Bolter's Roll", 'me', 'BLT','classes/mag_rng'}, -- movespeed
  -- {'battle 3 8', 'ja', "Caster's Roll", 'me', 'CST','classes/rdm'}, -- fast cast
  -- {'battle 3 8', 'ja', "Courser's Roll", 'me', 'CSR','classes/gnb'}, -- snapshot
  -- {'battle 3 8', 'ja', "Blitzer's Roll", 'me', 'BTZ','classes/gld'}, -- attack speed
  -- {'battle 3 8', 'ja', "Tactician's Roll", 'me', 'TCT','classes/arc'}, -- regain
  -- {'battle 3 8', 'ja', "Allies' Roll", 'me', 'ALL','classes/sge'}, -- skillchains
  -- {'battle 3 8', 'ja', "Miser's Roll", 'me', 'MIS','classes/vpr'}, -- save TP
  -- {'battle 3 8', 'ja', "Companion's Roll", 'me', 'COM','classes/drg'}, -- pet regen
  -- {'battle 3 8', 'ja', "Avenger's Roll", 'me', 'AVG','classes/blu'}, -- countering
}

-- SUBJOBS
-- Hotbar #3
xivhotbar_keybinds_job['RNG'] = {
  { 'battle 3 1', 'ja', 'Sharpshot',  'me',    'Sharp',   'ffxiv/brd/burst_shot' },
  { 'battle 3 5', 'ja', 'Scavenge',   'me',    'Scvnge',  'ffxiv/role/tactician' },
  { 'battle 3 4', 'ja', 'Camouflage', 'me',    'Camo',    'ffxiv/brd/iron_jaws' },
  { 'battle 3 2', 'ja', 'Barrage',    'me',    'Barrage', 'ffxiv/brd/barrage' },
  { 'battle 3 3', 'ja', 'Shadowbind', 'stnpc', 'Bind',    'ffxiv/brd/shadowbite' },
  -- Ranged Hotbar #5
  -- {'battle 5 1', 'input', '/ra <t>', '', 'RA', 'ra'},
  -- {'battle 5 7', 'input', '/equip ammo "Wooden Arrow"', '', 'Ammo', 'classes/phy_rng'},
  -- Heavy Hit
  -- {'battle 5 2', 'ws', 'Flaming Arrow', 't', 'Flame'},
  -- {'battle 5 3', 'ws', 'Piercing Arrow', 't', 'Pierce'},
  -- {'battle 5 4', 'ws', 'Sidewinder', 't', 'Sidewndr'},
  -- Multi-Hit
  -- {'battle 5 5', 'ws', 'Refulgent Arrow', 't', 'Reflgnt'}, -- rng sub
  -- Specials
  -- {'battle 5 6', 'ws', 'Dulling Arrow', 't', 'Dull'}, -- rng sub
  -- Merit Point
  -- {'battle 5 8', 'ws', 'Apex Arrow', 't', 'Apex'}, -- rng sam
  -- Relic (only usable with specific weapon equips)
  -- {'battle 5 9', 'ws', 'Namas Arrow', 't', 'Namas'}, -- rng sam relic
}

xivhotbar_keybinds_job['MNK'] = {
  { 'battle 3 1', 'ja', 'Boost',         'me',    'Boost',  'ffxiv/mnk/riddle_of_fire' },
  { 'battle 3 2', 'ja', 'Dodge',         'me',    'Dodge',  'ffxiv/mnk/riddle_of_earth' },
  { 'battle 3 3', 'ja', 'Focus',         'me',    'Focus',  'ffxiv/mnk/riddle_of_wind' },
  { 'battle 3 4', 'ja', 'Chakra',        'me',    'Chakra', 'ffxiv/mnk/meditation' },
  { 'battle 3 5', 'ja', 'Chi Blast',     'stnpc', 'Chi',    'ffxiv/mnk/elixir_field' },
  { 'battle 3 6', 'ja', 'Counterstance', 'me',    'Ctr',    'ffxiv/mnk/arm_of_the_destroyer' },
}

xivhotbar_keybinds_job['WAR'] = {
  { 'battle 3 1', 'ja', 'Provoke',   'stnpc', 'Voke',   'ffxiv/war/defiance' },
  { 'battle 3 2', 'ja', 'Berserk',   'me',    'Brsrk',  'ffxiv/war/berserk' },
  { 'battle 3 3', 'ja', 'Defender',  'me',    'Dfnd',   'ffxiv/war/shake_it_off' },
  { 'battle 3 4', 'ja', 'Warcry',    'me',    'Wrcry',  'ffxiv/war/inner_beast' },
  { 'battle 3 5', 'ja', 'Aggressor', 'me',    'Aggrsr', 'ffxiv/war/onslaught' },
}

xivhotbar_keybinds_job['THF'] = {
  { 'battle 3 3', 'ja', 'Steal',        't',  'Steal', 'ffxiv/nin/dream_within_a_dream' },
  { 'battle 3 1', 'ja', 'Sneak Attack', 'me', 'SAtk',  'ffxiv/nin/spinning_edge' },
  { 'battle 3 6', 'ja', 'Flee',         'me', 'Flee',  'ffxiv/nin/forked_raiju' },
  { 'battle 3 2', 'ja', 'Trick Attack', 'me', 'TAtk',  'ffxiv/nin/trick_attack' },
  { 'battle 3 4', 'ja', 'Mug',          't',  'Mug',   'ffxiv/nin/mug' },
  { 'battle 3 5', 'ja', 'Hide',         'me', 'Hide',  'ffxiv/nin/hide' },
}

xivhotbar_keybinds_job['NIN'] = {
  -- Shadows
  { 'battle 3 1',  'ma', 'Utsusemi: Ichi', 'me',    'Utsu:Ichi', 'ffxiv/nin/dream_within_a_dream' },
  { 'battle 3 2',  'ma', 'Utsusemi: Ni',   'me',    'Utsu:Ni',   'ffxiv/nin/phantom_kamaitachi' },
  -- Elements
  -- {'battle 3 7', 'ma', 'Katon: Ni', 'stnpc', 'Katon2','ffxiv/nin/katon'}, -- fire
  -- {'battle 3 7', 'ma', 'Katon: Ichi', 'stnpc', 'Katon','ffxiv/nin/katon'}, -- fire
  -- {'battle 3 8', 'ma', 'Suiton: Ni', 'stnpc', 'Suiton2','ffxiv/nin/suiton'}, -- water
  -- {'battle 3 8', 'ma', 'Suiton: Ichi', 'stnpc', 'Suiton','ffxiv/nin/suiton'}, -- water
  -- {'battle 3 9', 'ma', 'Doton: Ni', 'stnpc', 'Doton2','ffxiv/nin/doton'}, -- earth
  -- {'battle 3 9', 'ma', 'Doton: Ichi', 'stnpc', 'Doton','ffxiv/nin/doton'}, -- earth
  -- {'battle 3 10', 'ma', 'Hyoton: Ni', 'stnpc', 'Hyoton2','ffxiv/nin/hyoton'}, -- ice
  -- {'battle 3 10', 'ma', 'Hyoton: Ichi', 'stnpc', 'Hyoton','ffxiv/nin/hyoton'}, -- ice
  -- {'battle 3 11', 'ma', 'Huton: Ni', 'stnpc', 'Huton2','ffxiv/nin/huton'}, -- wind
  -- {'battle 3 11', 'ma', 'Huton: Ichi', 'stnpc', 'Huton','ffxiv/nin/huton'}, -- wind
  -- {'battle 3 12', 'ma', 'Raiton: Ni', 'stnpc', 'Raiton2','ffxiv/nin/raiton'}, -- thunder
  -- {'battle 3 12', 'ma', 'Raiton: Ichi', 'stnpc', 'Raiton','ffxiv/nin/raiton'}, -- thunder
  -- Enfeeblement
  { 'battle 3 3',  'ma', 'Kurayami: Ichi', 'stnpc', 'Kura',      'ffxiv/blu/glower' },      -- blind
  { 'battle 3 4',  'ma', 'Hojo: Ni',       't',     'Hojo',      'ffxiv/ast/redraw' },      -- slow
  { 'battle 3 4',  'ma', 'Hojo: Ichi',     't',     'Hojo',      'ffxiv/ast/redraw' },      -- slow
  { 'battle 3 5',  'ma', 'Dokumori: Ichi', 'stnpc', 'Doku',      'ffxiv/blu/exuviation' },  -- poison
  { 'battle 3 6',  'ma', 'Jubaku: Ichi',   'stnpc', 'Jubaku',    'ffxiv/blu/faze' },        -- paralyze
  -- Stances
  { 'battle 3 11', 'ja', 'Yonin',          'me',    'Yonin',     'ffxiv/nin/shade_shift' }, -- tanky
  { 'battle 3 12', 'ja', 'Innin',          'me',    'Innin',     'ffxiv/nin/assassinate' }, -- dps
}

xivhotbar_keybinds_job['DNC'] = {
  -- Sambas
  { 'battle 3 1',  'ja', 'Haste Samba',       'me',    'Haste',    'ffxiv/dnc/pirouette' },
  { 'battle 3 2',  'ja', 'Drain Samba',       'me',    'Drain',    'ffxiv/dnc/emboite' },
  { 'battle 3 2',  'ja', 'Drain Samba II',    'me',    'Drain2',   'ffxiv/dnc/emboite' },
  -- {'battle 3 3', 'ja', 'Aspir Samba', 'me', 'Aspir','ffxiv/dnc/jete'},
  -- Waltzes
  { 'battle 3 3',  'ja', 'Curing Waltz',      'stpc',  'CurW',     'ffxiv/dnc/curing_waltz' },
  { 'battle 3 3',  'ja', 'Curing Waltz II',   'stpc',  'CurW2',    'ffxiv/dnc/curing_waltz' },
  { 'battle 3 3',  'ja', 'Curing Waltz III',  'stpc',  'CurW3',    'ffxiv/dnc/curing_waltz' },
  { 'battle 3 4',  'ja', 'Divine Waltz',      'stpc',  'Divine',   'ffxiv/dnc/improvised_finish' },
  { 'battle 3 5',  'ja', 'Healing Waltz',     'stpc',  'Healing',  'ffxiv/dnc/shield_samba' },
  { 'battle 3 8',  'ja', 'Contradance',       'me',    'Contra',   'ffxiv/dnc/tillana' }, -- mastery
  -- Steps
  { 'battle 3 6',  'ja', 'Quickstep',         'stnpc', 'Quick',    'ffxiv/dnc/en_avant' },
  { 'battle 3 7',  'ja', 'Box Step',          'stnpc', 'Box',      'ffxiv/dnc/bladeshower' },
  -- {'battle 3 9', 'ja', 'Stutter Step', 'stnpc', 'Stutter','ffxiv/dnc/fountainfall'},
  -- Flourishes
  { 'battle 3 12', 'ja', 'Animated Flourish', 'stnpc', 'Voke',     'ffxiv/dnc/closed_position' },
  { 'battle 3 9',  'ja', 'Violent Flourish',  'stnpc', 'Stun',     'ffxiv/dnc/starfall_dance' },
  { 'battle 3 10', 'ja', 'Reverse Flourish',  'me',    'Reverse',  'ffxiv/dnc/reverse_cascade' },
  { 'battle 3 11', 'ja', 'Building Flourish', 'me',    'Building', 'ffxiv/dnc/flourish' },
  -- Jigs
  -- {'battle 3 8', 'ja', 'Spectral Jig', 'me', 'Spectral','ffxiv/dnc/fan_dance_IV'},
  -- {'battle 3 8', 'ja', 'Chocobo Jig', 'me', 'Chocobo','ffxiv/dnc/entrechat'}, -- mastery
}

xivhotbar_keybinds_job['DRG'] = {
  { 'battle 3 1', 'ja', 'Jump',           't',  'Jump',    'ffxiv/drg/jump' },
  { 'battle 3 2', 'ja', 'High Jump',      't',  'HiJump',  'ffxiv/drg/high_jump' },
  { 'battle 3 3', 'ja', 'Ancient Circle', 'me', 'Ancient', 'ffxiv/rpr/arcane_crest' },
  { 'battle 3 4', 'ja', 'Super Jump',     't',  'SuJump',  'ffxiv/drg/elusive_jump' }, -- mastery
}

xivhotbar_keybinds_job['DRK'] = {
  { 'battle 3 1', 'ja', 'Last Resort',   'me',    'LResort', 'ffxiv/drk/grit' },
  { 'battle 3 2', 'ja', 'Souleater',     'me',    'SEater',  'ffxiv/drk/souleater' },
  { 'battle 3 3', 'ja', 'Consume Mana',  'me',    'Consume', 'ffxiv/drk/syphon_strike' },
  { 'battle 3 4', 'ja', 'Weapon Bash',   't',     'Bash',    'ffxiv/drk/shadow_wall' },
  { 'battle 3 5', 'ja', 'Arcane Circle', 'me',    'Arcane',  'ffxiv/drk/salted_earth' },
  { 'battle 3 6', 'ma', 'Bio II',        'stnpc', 'Bio2' },
  { 'battle 3 6', 'ma', 'Bio',           'stnpc', 'Bio' },
  { 'battle 3 7', 'ma', 'Sleep II',      'stnpc', 'Sleep2' },
  { 'battle 3 7', 'ma', 'Sleep',         'stnpc', 'Sleep' },
  { 'battle 3 8', 'ma', 'Stun',          't',     'Stun' },
}

xivhotbar_keybinds_job['WHM'] = {
  -- Abilities
  { 'battle 3 12', 'ja', 'Divine Seal',  'me',    'Divine',    'ffxiv/whm/divine_benison' },
  -- Enfeeblement
  -- { 'battle 3 ',  'ma', 'Paralyze',     'stnpc', 'Para' },
  -- { 'battle 3 ',  'ma', 'Slow',         'stnpc', 'Slow' },
  -- { 'battle 3 ',  'ma', 'Silence',      'stnpc', 'Silence' },
  { 'battle 3 6',  'ma', 'Dia II',       'stnpc', 'Dia II' },
  { 'battle 3 6',  'ma', 'Dia',          'stnpc', 'Dia' },
  -- { 'battle 3 ',  'ma', 'Repose',       'stnpc', 'Repose' },
  -- { 'battle 3 ',  'ma', 'Flash',        'stnpc', 'Flash',     'ffxiv/pld/flash' },
  -- { 'battle 3 ',  'ma', 'Aquaveil',     'me',    'Aquaveil' },
  -- Barspells
  { 'battle 3 10', 'ma', 'Barsleepra',   'me',    'Sleepra',   '' },
  -- { 'battle 3 ',  'ma', 'Barpoisonra',  'me',    'Poisonra',  '' },
  { 'battle 3 9',  'ma', 'Barparalyzra', 'me',    'Paralyzra', '' },
  -- { 'battle 3 ',  'ma', 'Barstonra',    'me',    'Stonra',    'Barstonra' },
  -- { 'battle 3 ',  'ma', 'Barwatera',    'me',    'Watera',    'Barwatera' },
  -- { 'battle 3 ',  'ma', 'Baraera',      'me',    'Aera',      'Baraera' },
  -- { 'battle 3 ',  'ma', 'Barfira',      'me',    'Fira',      'Barfira' },
  -- { 'battle 3 ',  'ma', 'Barblindra',   'me',    'Blindra',   '' },
  { 'battle 3 7',  'ma', 'Barblizzara',  'me',    'Blizzara',  'Barblizzara' },
  -- { 'battle 3 ',  'ma', 'Barsilencera', 'me',    'Silencera' },
  { 'battle 3 8',  'ma', 'Barthundra',   'me',    'Thundra',   'Barthundra' },
  -- { 'battle 3 ',  'ma', 'Barvira',      'me',    'Vira' },
  { 'battle 3 11', 'ma', 'Barpetra',     'me',    'Petra' },
  -- Atk
  { 'battle 3 ',   'ma', 'Holy',         'stnpc', 'Holy' }, -- mastery
  -- Regen
  { 'battle 3 2',  'ma', 'Regen II',     'stpc',  'Regen2' },
  { 'battle 3 2',  'ma', 'Regen',        'stpc',  'Regen' },
  -- Cure
  { 'battle 3 1',  'ma', 'Cure IV',      'stpc',  'Cure4' },
  { 'battle 3 1',  'ma', 'Cure III',     'stpc',  'Cure3' },
  { 'battle 3 1',  'ma', 'Cure II',      'stpc',  'Cure2' },
  { 'battle 3 1',  'ma', 'Cure',         'stpc',  'Cure' },
  -- Cura
  -- { 'battle 1 ', 'ma', 'Cura',         'me',    'Cura' },
  -- Curaga
  { 'battle 3 3',  'ma', 'Curaga III',   'stpc',  'Curaga3' }, -- mastery
  { 'battle 3 3',  'ma', 'Curaga II',    'stpc',  'Curaga2' },
  { 'battle 3 3',  'ma', 'Curaga',       'stpc',  'Curaga' },
  -- Supportive
  { 'battle 3 4',  'ma', 'Poisona',      'stpc',  'Poisona' },
  { 'battle 3 4',  'ma', 'Paralyna',     'stpc',  'Paralyna' },
  { 'battle 3 4',  'ma', 'Blindna',      'stpc',  'Blindna' },
  { 'battle 3 4',  'ma', 'Silena',       'stpc',  'Silena' },
  { 'battle 3 4',  'ma', 'Blink',        'me',    'Blink' },
  { 'battle 3 4',  'ma', 'Stoneskin',    'me',    'StnSkin' },
  { 'battle 3 4',  'ma', 'Cursna',       'stpc',  'Cursna' },
  { 'battle 3 4',  'ma', 'Erase',        'stpc',  'Erase' },
  -- { 'battle 3 ',  'ma', 'Viruna',       'stpc',  'Viruna' },
  -- { 'battle 3 ',  'ma', 'Stona',        'stpc',  'Stona' },
  { 'battle 3 5',  'ma', 'Haste',        'stpc',  'Haste' },
  -- { 'battle 3 ',  'ma', 'Auspice',      'me',    'Ausp' }, -- mastery
}

-- WEAPONSKILL SETS
-- default melee only uses Bar1-Button12 for melee stun/bind
-- default ranged only uses Bar1-Buttons8-11
xivhotbar_keybinds_job['Sword'] = {
  -- Heavy Hit
  { 'battle 1 12', 'ws', 'Fast Blade', 't', 'Fast' },
  -- {'battle 1 9', 'ws', 'Spirits Within', 't', 'Spirits'},
  -- Multi-Hit
  -- {'battle 1 2', 'ws', 'Vorpal Blade', 't', 'Vorpal'}, -- war rdm pld drk blu run
  -- {'battle 1 2', 'ws', 'Swift Blade', 't', 'Swift'}, -- pld run
  -- {'battle 1 2', 'ws', 'Savage Blade', 't', 'Savage'}, -- war rdm pld drk blu cor run
  -- Fire
  -- {'battle 1 3', 'ws', 'Burning Blade', 't', 'Burning'},
  -- {'battle 1 3', 'ws', 'Red Lotus Blade', 't', 'RLotus'}, -- war rdm pld drk blu
  -- Light
  -- {'battle 1 4', 'ws', 'Shining Blade', 't', 'Shining'},
  -- {'battle 1 4', 'ws', 'Seraph Blade', 't', 'Seraph'}, -- war rdm pld drk blu run
  -- Specials
  -- {'battle 1 5', 'ws', 'Sanguine Blade', 't', 'Sanguine'}, -- war rdm pld drk blu run
  -- Prime #6
  -- {'battle 1 10', 'ws', 'Imperator', 't', 'Imperator'},
  -- Class Specific #7
  -- {'battle 1 7', 'ws', 'Death Blossom', 't', 'D Blsm'}, -- rdm
  -- {'battle 1 7', 'ws', 'Atonement', 't', 'Atone'}, -- pld
  -- {'battle 1 7', 'ws', 'Expiacion', 't', 'Expiacn'}, -- blu
  -- Merit Point #8
  -- {'battle 1 10', 'ws', 'Requiescat', 't', 'Requisct'}, -- war rdm pld drk sam blu cor run
  -- Empyrean (Abyssea only)  #9
  -- {'battle 1 10', 'ws', 'Chant du Cygne', 't', 'duCygne'},
  -- Relic (only usable with specific weapon equips) #10
  -- {'battle 1 10', 'ws', 'Knights of Round', 't', 'KotR'}, -- rdm pld blu relic
  -- AoE Ws #11
  -- {'battle 1 11', 'ws', 'Circle Blade', 't', 'Circle'},
  -- Stun WS #12
  { 'battle 1 12', 'ws', 'Flat Blade', 't', 'Flat' },
}

xivhotbar_keybinds_job['Dagger'] = {
  -- Wind
  { 'battle 1 12', 'ws', 'Gust Slash',   't', 'Gust' },
  -- Heavy Hit
  { 'battle 1 12', 'ws', 'Wasp Sting',   't', 'Wasp' },
  -- {'battle 1 12', 'ws', 'Viper Bite', 't', 'Viper'}, -- rdm thf brd rng nin dnc
  -- {'battle 1 1', 'ws', 'Shark Bite', 't', 'Shark'}, -- thf dnc
  -- Multi-Hit
  -- {'battle 1 2', 'ws', 'Dancing Edge', 't', 'DncEdge'}, -- thf dnc
  -- {'battle 1 12', 'ws', 'Evisceration', 't', 'Evisc'}, -- war rdm thf bst brd rng nin cor dnc
  -- Specials
  -- {'battle 1 4', 'ws', 'Energy Steal', 't', 'Energy'},
  -- {'battle 1 4', 'ws', 'Energy Drain', 't', 'Energy'}, -- rdm thf brd rng nin dnc
  -- Prime #6
  -- {'battle 1 12', 'ws', 'Ruthless Stroke', 't', 'Ruthless'},
  -- Class Specific #7
  -- {'battle 1 7', 'ws', 'Mandalic Stab', 't', 'Mandalic'}, -- thf
  -- {'battle 1 7', 'ws', 'Mordant Rime', 't', 'Mordant'}, -- brd
  -- {'battle 1 7', 'ws', 'Pyrrhic Kleos', 't', 'Pyrrhic'}, -- dnc
  -- Merit Point #8
  -- {'battle 1 12', 'ws', 'Exenterator', 't', 'Exent'}, -- war rdm thf bst brd rng nin cor dnc
  -- Empyrean (Abyssea only)  #9
  -- {'battle 1 9', 'ws', "Rudra's Storm", 't', 'Rudra'}, -- thf brd dnc
  -- Relic (only usable with specific weapon equips) #10
  -- {'battle 1 10', 'ws', 'Mercy Stroke', 't', 'Mercy'}, -- rdm thf brd dnc relic
  -- AoE Ws #11
  -- {'battle 1 12', 'ws', 'Cyclone', 't', 'Cyclone'}, -- rdm thf brd rng nin cor dnc
  -- {'battle 1 11', 'ws', 'Aeolian Edge', 't', 'Aeoln'}, -- rdm thf brd rng nin dnc
  -- Bind WS #12
  { 'battle 1 12', 'ws', 'Shadowstitch', 't', 'ShdSt' },
}

xivhotbar_keybinds_job['Bow'] = {
  -- Heavy Hit
  { 'battle 1 8',  'ws', 'Flaming Arrow',   't', 'Flame' },    -- rng sub
  { 'battle 1 9',  'ws', 'Piercing Arrow',  't', 'Pierce' },   -- rng sub
  { 'battle 1 9',  'ws', 'Sidewinder',      't', 'Sidewndr' }, -- rng sub
  -- {'battle 1 1', 'ws', 'Arching Arrow', 't', 'Arch'}, -- rng
  -- {'battle 1 2', 'ws', 'Empyreal Arrow', 't', 'Empyrl'}, -- rng
  -- Multi-Hit
  { 'battle 1 10', 'ws', 'Refulgent Arrow', 't', 'Reflgnt' }, -- rng sub
  -- Specials
  { 'battle 1 11', 'ws', 'Dulling Arrow',   't', 'Dull' },    -- rng sub
  -- {'battle 1 4', 'ws', 'Blast Arrow', 't', 'Blast'}, -- rng
  -- Prime #6
  -- {'battle 1 5', 'ws', 'Sarv', 't', 'Sarv'}, -- rng
  -- Merit Point #8
  -- {'battle 1 6', 'ws', 'Apex Arrow', 't', 'Apex'}, -- rng sam
  -- Empyrean (Abyssea only)  #9
  -- {'battle 1 7', 'ws', "Jishnu's Radiance", 't', 'Jishnu'}, -- rng
  -- Relic (only usable with specific weapon equips) #10
  -- {'battle 1 8', 'ws', 'Namas Arrow', 't', 'Namas'}, -- rng sam relic
  -- AoE Ws #11
  -- none
  -- Stun WS #12
  -- none
}

xivhotbar_keybinds_job['Marksmanship'] = {
  -- Heavy Hit
  { 'battle 1 8',  'ws', 'Hot Shot',      't', 'Hot' },      -- rng cor sub
  { 'battle 1 8',  'ws', 'Sniper Shot',   't', 'Sniper' },   -- rng cor sub
  { 'battle 1 8',  'ws', 'Slug Shot',     't', 'Slug' },     -- rng cor sub
  { 'battle 1 8',  'ws', 'Detonator',     't', 'Detonate' }, -- rng cor
  -- Multi-Hit
  -- {'battle 1 2', 'ws', 'Blast Shot', 't', 'Blast'}, -- rng
  -- Specials
  -- {'battle 1 8', 'ws', 'Split Shot', 't', 'Split'}, -- rng cor
  -- {'battle 1 8', 'ws', 'Numbing Shot', 't', 'Numb'}, -- rng cor sub
  -- Prime #6
  { 'battle 1 8',  'ws', 'Terminus',      't', 'Terminus' }, -- rng cor
  -- Class Specific #7
  -- {'battle 1 5', 'ws', 'Heavy Shot', 't', 'Heavy'}, -- rng
  -- {'battle 1 5', 'ws', 'Trueflight', 't', 'Trueflt'}, -- rng
  { 'battle 1 9',  'ws', 'Leaden Salute', 't', 'Leaden' },   -- cor
  -- Merit Point #8
  { 'battle 1 10', 'ws', 'Last Stand',    't', 'Last' },     -- thf rng cor
  -- Empyrean (Abyssea only)  #9
  { 'battle 1 11', 'ws', 'Wildfire',      't', 'Wildfire' }, -- rng cor
  -- Relic (only usable with specific weapon equips) #10
  -- {'battle 1 8', 'ws', 'Coronach', 't', 'Coronach'}, -- rng cor relic
  -- AoE Ws #11
  -- none
  -- Stun WS #12
  -- none
}

return xivhotbar_keybinds_job
