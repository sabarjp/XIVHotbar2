-- This file has no effect on addon functions
-- This is a repository of subjob setups others might find useful
-- Every ability/spell is included in each setup
-- Comment out skills not needed by your class

-- Remember to modify bar-action locations to fit your needs!

--BLM
--BLU
--BRD
--BST
---- COR
---- DNC
--DRK
---- DRG
--GEO
---- MNK
---- THF
---- NIN
--PLD
--PUP
---- RDM
---- RNG
--RUN
---- SAM
---- SCH
--SMN
---- WAR
---- WHM

-- {'battle 3 7', 'ja', 'Sleep', 'stnpc', 'Sleep','ffxiv/role/'},
-- {'battle 3 7', 'ma', 'Sleep', 'stnpc', 'Sleep','ffxiv/role/'},
-- ,'ffxiv/drk/unmend'

xivhotbar_keybinds_job['COR'] = {
  { 'battle 3 1',  'ja', "Double-Up",      'me', 'Dbl Up', 'ffxiv/ast/play' },
  { 'battle 3 2',  'ja', "Corsair's Roll", 'me', 'COR',    'classes/ast' }, -- exp
  { 'battle 3 3',  'ja', "Ninja Roll",     'me', 'NIN',    'classes/nin' }, -- eva
  { 'battle 3 4',  'ja', "Hunter's Roll",  'me', 'HUN',    'classes/acr' }, -- acc & ra acc
  { 'battle 3 5',  'ja', "Chaos Roll",     'me', 'CHS',    'classes/rpr' }, -- phys atk
  { 'battle 3 6',  'ja', "Magus's Roll",   'me', 'MGS',    'classes/whm' }, -- mag def
  { 'battle 3 7',  'ja', "Healer's Roll",  'me', 'HLR',    'classes/hlr' }, -- cure potency
  { 'battle 3 8',  'ja', "Drachen Roll",   'me', 'DRC',    'classes/lnc' }, -- pet & ra acc
  { 'battle 3 9',  'ja', "Choral Roll",    'me', 'CRL',    'classes/brd' }, -- spell interrupt
  { 'battle 3 10', 'ja', "Monk's Roll",    'me', 'MNK',    'classes/mnk' }, -- subtle blow
  { 'battle 3 11', 'ja', "Beast Roll",     'me', 'BST',    'classes/war' }, -- pet atk
  { 'battle 3 12', 'ja', "Samurai Roll",   'me', 'SAM',    'classes/sam' }, -- store TP
  { 'battle 3 1',  'ja', "Quick Draw",     'me', 'QkDraw', 'classes/mch' },
  { 'battle 3 2',  'ja', "Evoker's Roll",  'me', 'EVO',    'classes/smn' }, -- MP regen
  { 'battle 3 3',  'ja', "Rogue's Roll",   'me', 'RGE',    'classes/rge' }, -- crit
  { 'battle 3 4',  'ja', "Warlock's Roll", 'me', 'WLK',    'classes/thm' }, -- magic acc
  { 'battle 3 5',  'ja', "Fighter's Roll", 'me', 'FTR',    'classes/mar' }, -- double atk
  -- Mastery only
  { 'battle 3 6',  'ja', "Puppet Roll",    'me', 'PUP',    'classes/pug' }, -- pet matk & pet macc
  { 'battle 3 7',  'ja', "Gallant's Roll", 'me', 'GAL',    'classes/pld' }, -- def
  { 'battle 3 8',  'ja', "Wizard's Roll",  'me', 'WIZ',    'classes/blm' }, -- matk
  { 'battle 3 9',  'ja', "Random Deal",    'me', 'Randm',  'ffxiv/ast/draw' },
}

xivhotbar_keybinds_job['DNC'] = {
  -- Sambas
  { 'battle 3 1',  'ja', 'Haste Samba',       'me',    'Haste',    'ffxiv/dnc/pirouette' },
  { 'battle 3 2',  'ja', 'Drain Samba',       'me',    'Drain',    'ffxiv/dnc/emboite' },
  { 'battle 3 2',  'ja', 'Drain Samba II',    'me',    'Drain2',   'ffxiv/dnc/emboite' },
  { 'battle 3 3',  'ja', 'Aspir Samba',       'me',    'Aspir',    'ffxiv/dnc/jete' },
  -- Waltzes
  { 'battle 3 4',  'ja', 'Curing Waltz',      'stpc',  'CurW',     'ffxiv/dnc/curing_waltz' },
  { 'battle 3 4',  'ja', 'Curing Waltz II',   'stpc',  'CurW2',    'ffxiv/dnc/curing_waltz' },
  { 'battle 3 4',  'ja', 'Curing Waltz III',  'stpc',  'CurW3',    'ffxiv/dnc/curing_waltz' },
  { 'battle 3 5',  'ja', 'Divine Waltz',      'stpc',  'Divine',   'ffxiv/dnc/improvised_finish' },
  { 'battle 3 6',  'ja', 'Healing Waltz',     'stpc',  'Healing',  'ffxiv/dnc/shield_samba' },
  { 'battle 3 6',  'ja', 'Contradance',       'me',    'Contra',   'ffxiv/dnc/tillana' }, -- mastery
  -- Steps
  { 'battle 3 7',  'ja', 'Quickstep',         'stnpc', 'Quick',    'ffxiv/dnc/en_avant' },
  { 'battle 3 8',  'ja', 'Box Step',          'stnpc', 'Box',      'ffxiv/dnc/bladeshower' },
  { 'battle 3 9',  'ja', 'Stutter Step',      'stnpc', 'Stutter',  'ffxiv/dnc/fountainfall' },
  -- Flourishes
  { 'battle 3 10', 'ja', 'Animated Flourish', 'stnpc', 'Voke',     'ffxiv/dnc/closed_position' },
  { 'battle 3 11', 'ja', 'Violent Flourish',  'stnpc', 'Stun',     'ffxiv/dnc/starfall_dance' },
  { 'battle 3 12', 'ja', 'Reverse Flourish',  'me',    'Reverse',  'ffxiv/dnc/reverse_cascade' },
  { 'battle 3 12', 'ja', 'Building Flourish', 'me',    'Building', 'ffxiv/dnc/flourish' },
  -- Jigs
  { 'battle 3 8',  'ja', 'Spectral Jig',      'me',    'Spectral', 'ffxiv/dnc/fan_dance_IV' },
  { 'battle 3 8',  'ja', 'Chocobo Jig',       'me',    'Chocobo',  'ffxiv/dnc/entrechat' }, -- mastery
}

xivhotbar_keybinds_job['DRK'] = {
  { 'battle 3 1', 'ja', 'Last Resort',   'me',    'LResort', 'ffxiv/drk/grit' },
  { 'battle 3 2', 'ja', 'Souleater',     'me',    'SEater',  'ffxiv/drk/souleater' },
  { 'battle 3 3', 'ja', 'Consume Mana',  'me',    'Consume', 'ffxiv/drk/syphon_strike' },
  { 'battle 3 4', 'ja', 'Weapon Bash',   't',     'Bash',    'ffxiv/drk/shadow_wall' },
  { 'battle 3 5', 'ja', 'Arcane Circle', 'me',    'Arcane',  'ffxiv/drk/salted_earth' },
  { 'battle 3 6', 'ma', 'Bio II',        'stnpc', 'Bio2',    'ffxiv/sch/bio_II' },
  { 'battle 3 6', 'ma', 'Bio',           'stnpc', 'Bio',     'ffxiv/sch/bio' },
  { 'battle 3 7', 'ma', 'Sleep II',      'stnpc', 'Sleep2',  'ffxiv/role/sleep' },
  { 'battle 3 7', 'ma', 'Sleep',         'stnpc', 'Sleep',   'ffxiv/role/sleep' },
  { 'battle 3 8', 'ma', 'Stun',          't',     'Stun',    'ffxiv/drk/unmend' },
}

xivhotbar_keybinds_job['DRG'] = {
  { 'battle 3 1', 'ja', 'Jump',           't',  'Jump',    'ffxiv/drg/jump' },
  { 'battle 3 2', 'ja', 'High Jump',      't',  'HiJump',  'ffxiv/drg/high_jump' },
  { 'battle 3 3', 'ja', 'Ancient Circle', 'me', 'Ancient', 'ffxiv/rpr/arcane_crest' },
  { 'battle 3 4', 'ja', 'Super Jump',     't',  'SuJump',  'ffxiv/drg/elusive_jump' }, -- mastery
}

xivhotbar_keybinds_job['MNK'] = {
  { 'battle 3 1', 'ja', 'Boost',         'me',    'Boost',  'ffxiv/mnk/riddle_of_fire' },
  { 'battle 3 2', 'ja', 'Dodge',         'me',    'Dodge',  'ffxiv/mnk/riddle_of_earth' },
  { 'battle 3 3', 'ja', 'Focus',         'me',    'Focus',  'ffxiv/mnk/riddle_of_wind' },
  { 'battle 3 4', 'ja', 'Chakra',        'me',    'Chakra', 'ffxiv/mnk/meditation' },
  { 'battle 3 5', 'ja', 'Chi Blast',     'stnpc', 'Chi',    'ffxiv/mnk/elixir_field' },
  { 'battle 3 6', 'ja', 'Counterstance', 'me',    'Ctr',    'ffxiv/mnk/arm_of_the_destroyer' },
}

xivhotbar_keybinds_job['THF'] = {
  { 'battle 3 1', 'ja', 'Steal',        't',  'Steal', 'ffxiv/nin/dream_within_a_dream' },
  { 'battle 3 2', 'ja', 'Sneak Attack', 'me', 'SAtk',  'ffxiv/nin/spinning_edge' },
  { 'battle 3 3', 'ja', 'Flee',         'me', 'Flee',  'ffxiv/nin/forked_raiju' },
  { 'battle 3 4', 'ja', 'Trick Attack', 'me', 'TAtk',  'ffxiv/nin/trick_attack' },
  { 'battle 3 5', 'ja', 'Mug',          't',  'Mug',   'ffxiv/nin/mug' },
  { 'battle 3 6', 'ja', 'Hide',         'me', 'Hide',  'ffxiv/nin/hide' },
}

xivhotbar_keybinds_job['NIN'] = {
  -- Shadows
  { 'battle 3 1',  'ma', 'Utsusemi: Ichi', 'me',    'Utsu:Ichi', 'ffxiv/nin/dream_within_a_dream' },
  { 'battle 3 2',  'ma', 'Utsusemi: Ni',   'me',    'Utsu:Ni',   'ffxiv/nin/phantom_kamaitachi' },
  -- Elements
  { 'battle 3 7',  'ma', 'Katon: Ni',      'stnpc', 'Katon2',    'ffxiv/nin/katon' }, -- fire
  { 'battle 3 7',  'ma', 'Katon: Ichi',    'stnpc', 'Katon',     'ffxiv/nin/katon' }, -- fire
  { 'battle 3 8',  'ma', 'Suiton: Ni',     'stnpc', 'Suiton2',   'ffxiv/nin/suiton' }, -- water
  { 'battle 3 8',  'ma', 'Suiton: Ichi',   'stnpc', 'Suiton',    'ffxiv/nin/suiton' }, -- water
  { 'battle 3 9',  'ma', 'Doton: Ni',      'stnpc', 'Doton2',    'ffxiv/nin/doton' }, -- earth
  { 'battle 3 9',  'ma', 'Doton: Ichi',    'stnpc', 'Doton',     'ffxiv/nin/doton' }, -- earth
  { 'battle 3 10', 'ma', 'Hyoton: Ni',     'stnpc', 'Hyoton2',   'ffxiv/nin/hyoton' }, -- ice
  { 'battle 3 10', 'ma', 'Hyoton: Ichi',   'stnpc', 'Hyoton',    'ffxiv/nin/hyoton' }, -- ice
  { 'battle 3 11', 'ma', 'Huton: Ni',      'stnpc', 'Huton2',    'ffxiv/nin/huton' }, -- wind
  { 'battle 3 11', 'ma', 'Huton: Ichi',    'stnpc', 'Huton',     'ffxiv/nin/huton' }, -- wind
  { 'battle 3 12', 'ma', 'Raiton: Ni',     'stnpc', 'Raiton2',   'ffxiv/nin/raiton' }, -- thunder
  { 'battle 3 12', 'ma', 'Raiton: Ichi',   'stnpc', 'Raiton',    'ffxiv/nin/raiton' }, -- thunder

  -- Enfeeblement
  { 'battle 3 3',  'ma', 'Kurayami: Ichi', 'stnpc', 'Kura',      'ffxiv/blu/glower' }, -- blind
  { 'battle 3 4',  'ma', 'Hojo: Ni',       't',     'Hojo',      'ffxiv/ast/redraw' }, -- slow
  { 'battle 3 4',  'ma', 'Hojo: Ichi',     't',     'Hojo',      'ffxiv/ast/redraw' }, -- slow
  { 'battle 3 5',  'ma', 'Dokumori: Ichi', 'stnpc', 'Doku',      'ffxiv/blu/exuviation' }, -- poison
  { 'battle 3 6',  'ma', 'Jubaku: Ichi',   'stnpc', 'Jubaku',    'ffxiv/blu/faze' }, -- paralyze
  -- Stances
  { 'battle 3 11', 'ja', 'Yonin',          'me',    'Yonin',     'ffxiv/nin/shade_shift' }, -- tanky
  { 'battle 3 12', 'ja', 'Innin',          'me',    'Innin',     'ffxiv/nin/assassinate' }, -- dps
}

xivhotbar_keybinds_job['PUP'] = {
  { 'battle 3 1',  'ja', 'Deploy',           't',  'Fight' },
  { 'battle 3 2',  'ja', 'Retrieve',         't',  'Retrieve' },
  { 'battle 3 3',  'ja', 'Fire Maneuver',    'me', 'FireMan' },
  { 'battle 3 4',  'ja', 'Ice Maneuver',     'me', 'IceMan' },
  { 'battle 3 5',  'ja', 'Wind Maneuver',    'me', 'WndMan' },
  { 'battle 3 6',  'ja', 'Earth Maneuver',   'me', 'EthMan' },
  { 'battle 3 7',  'ja', 'Thunder Maneuver', 'me', 'ThrMan' },
  { 'battle 3 8',  'ja', 'Water Maneuver',   'me', 'WtrMan' },
  { 'battle 3 9',  'ja', 'Light Maneuver',   'me', 'LghMan' },
  { 'battle 3 10', 'ja', 'Dark Maneuver',    'me', 'DrkMan' },
  { 'battle 3 11', 'ja', 'Repair',           'me', 'Repair' }, --needs oil
  { 'battle 3 12', 'ja', 'Activate',         'me', 'Activate' },
}

xivhotbar_keybinds_job['RDM'] = {
  -- BAR 1
  { 'battle 1 1',  'ma', 'Cure IV',  'stpc',  'Cure 4' },
  { 'battle 1 1',  'ma', 'Cure III', 'stpc',  'Cure 3' },
  { 'battle 1 1',  'ma', 'Cure II',  'stpc',  'Cure 2' },
  { 'battle 1 1',  'ma', 'Cure',     'stpc',  'Cure 1' },

  -- BAR 2
  { 'battle 2 1',  'ma', 'Refresh',  'stpc',  'Refresh' },
  { 'battle 2 2',  'ma', 'Haste',    'stpc',  'Haste' },
  { 'battle 2 3',  'ma', 'Flurry',   'stpc',  'Flurry' },
  { 'battle 2 4',  'ma', 'Dia II',   'stnpc', 'Dia2' },
  { 'battle 2 4',  'ma', 'Dia',      'stnpc', 'Dia' },

  { 'battle 2 5',  'ma', 'Paralyze', 't',     'Paralyze' },
  { 'battle 2 6',  'ma', 'Slow',     't',     'Slow' },
  { 'battle 2 7',  'ma', 'Silence',  'stnpc', 'Silence' },
  { 'battle 2 8',  'ma', 'Poison',   't',     'Paralyze' },
  { 'battle 2 9',  'ma', 'Blind',    't',     'Slow' },
  { 'battle 2 10', 'ma', 'Bind',     'stnpc', 'Bind' },
  { 'battle 2 11', 'ma', 'Frazzle',  't',     'Frazzle' },

  { 'battle 2 12', 'ma', 'Phalanx',  'me',    'Phalanx' },
}

xivhotbar_keybinds_job['RNG'] = {
  { 'battle 3 1', 'ja',    'Sharpshot',                  'me',    'Sharp',   'ffxiv/brd/burst_shot' },
  { 'battle 3 5', 'ja',    'Scavenge',                   'me',    'Scvnge',  'ffxiv/role/tactician' },
  { 'battle 3 4', 'ja',    'Camouflage',                 'me',    'Camo',    'ffxiv/brd/iron_jaws' },
  { 'battle 3 2', 'ja',    'Barrage',                    'me',    'Barrage', 'ffxiv/brd/barrage' },
  { 'battle 3 3', 'ja',    'Shadowbind',                 'stnpc', 'Bind',    'ffxiv/brd/shadowbite' },
  -- Ranged Hotbar #5
  { 'battle 5 1', 'input', '/ra <t>',                    '',      'RA',      'ra' },
  { 'battle 5 7', 'input', '/equip ammo "Wooden Arrow"', '',      'Ammo',    'classes/phy_rng' },
  -- Heavy Hit
  { 'battle 5 2', 'ws',    'Flaming Arrow',              't',     'Flame' },
  { 'battle 5 3', 'ws',    'Piercing Arrow',             't',     'Pierce' },
  { 'battle 5 4', 'ws',    'Sidewinder',                 't',     'Sidewndr' },
  -- Multi-Hit
  { 'battle 5 5', 'ws',    'Refulgent Arrow',            't',     'Reflgnt' }, -- rng sub
  -- Specials
  { 'battle 5 6', 'ws',    'Dulling Arrow',              't',     'Dull' }, -- rng sub
  -- Merit Point
  { 'battle 5 8', 'ws',    'Apex Arrow',                 't',     'Apex' }, -- rng sam
  -- Relic (only usable with specific weapon equips)
  { 'battle 5 9', 'ws',    'Namas Arrow',                't',     'Namas' }, -- rng sam relic
}

xivhotbar_keybinds_job['SAM'] = {
  { 'battle 3 1', 'ja', 'Hasso',          'me', 'Hasso',   'ffxiv/sam/ikishoten' },
  { 'battle 3 2', 'ja', 'Meditate',       'me', 'Mdtate',  'ffxiv/sam/meditate' },
  { 'battle 3 3', 'ja', 'Sekkanoki',      'me', 'Sekka',   'ffxiv/sam/higanbana' },
  { 'battle 3 4', 'ja', 'Seigan',         'me', 'Seigan',  'ffxiv/sam/tengentsu' },
  { 'battle 3 5', 'ja', 'Third Eye',      'me', '3rd Eye', 'ffxiv/sam/third_eye' },
  { 'battle 3 6', 'ja', 'Warding Circle', 'me', 'Warding', 'ffxiv/gnb/demon_slaughter' },
}

-- note: SCH is way too specific to each job to be copied
-- this is an example from BLM subjob
xivhotbar_keybinds_job['SCH'] = {
  -- BAR 1
  { 'battle 1 1',  'ma', 'Cure IV',         'stpc', 'Cure 4' },
  { 'battle 1 1',  'ma', 'Cure III',        'stpc', 'Cure 3' },
  { 'battle 1 1',  'ma', 'Cure II',         'stpc', 'Cure 2' },
  { 'battle 1 1',  'ma', 'Cure',            'stpc', 'Cure 1' },
  -- BAR 2
  { 'battle 2 1',  'ma', 'Poisona',         'stpc', 'Poisona' },
  { 'battle 2 2',  'ma', 'Paralyna',        'stpc', 'Paralyna' },
  { 'battle 2 3',  'ma', 'Blindna',         'stpc', 'Blindna' },
  { 'battle 2 4',  'ma', 'Silena',          'stpc', 'Silena' },

  { 'battle 2 5',  'ja', 'Penury',          'me',   'Penury' },
  { 'battle 2 5',  'ja', 'Parsimony',       'me',   'Parsmy' },
  { 'battle 2 6',  'ja', 'Celerity',        'me',   'Celrty' },
  { 'battle 2 6',  'ja', 'Alacrity',        'me',   'Alacty' },
  { 'battle 2 7',  'ja', 'Accession',       'me',   'Accssn' },
  { 'battle 2 7',  'ja', 'Manifestation',   'me',   'Manifst' },
  { 'battle 2 8',  'ja', 'Rapture',         'me',   'Raptur' },
  { 'battle 2 8',  'ja', 'Ebullience',      'me',   'Ebull' },
  { 'battle 2 9',  'ja', 'Sublimation',     'me',   'Sublim' },
  { 'battle 2 10', 'ja', 'Addendum: White', 'me',   'Add.Wht' },
  { 'battle 2 10', 'ja', 'Addendum: Black', 'me',   'Add.Blk' },
  { 'battle 2 11', 'ja', 'Light Arts',      'me',   'Light' },
  { 'battle 2 12', 'ja', 'Dark Arts',       'me',   'Dark' },

  -- BAR 3
  { 'battle 3 1',  'ma', 'Cursna',          'stpc', 'Cursna' },
  { 'battle 3 2',  'ma', 'Viruna',          'stpc', 'Viruna' },
  { 'battle 3 3',  'ma', 'Stona',           'stpc', 'Stona' },
  { 'battle 3 4',  'ma', 'Erase',           'stpc', 'Erase' },
  { 'battle 3 5',  'ma', 'Klimaform',       'me',   'Klima' },

  -- OVERWRITE THE ELEMENTAL DEBUFFS IF SCH
  { 'battle 4 3',  'me', 'Sandstorm',       'stpc', 'Sand' },
  { 'battle 4 4',  'me', 'Rainstorm',       'stpc', 'Rain' },
  { 'battle 4 5',  'me', 'Windstorm',       'stpc', 'Wind' },
  { 'battle 4 6',  'me', 'Firestorm',       'stpc', 'Fire' },
  { 'battle 4 7',  'me', 'Hailstorm',       'stpc', 'Hail' },
  { 'battle 4 8',  'me', 'Thunderstorm',    'stpc', 'Thdr' },
}

xivhotbar_keybinds_job['WAR'] = {
  { 'battle 3 1', 'ja', 'Provoke',   'stnpc', 'Voke',   'ffxiv/war/defiance' },
  { 'battle 3 2', 'ja', 'Berserk',   'me',    'Brsrk',  'ffxiv/war/berserk' },
  { 'battle 3 3', 'ja', 'Defender',  'me',    'Dfnd',   'ffxiv/war/shake_it_off' },
  { 'battle 3 4', 'ja', 'Warcry',    'me',    'Wrcry',  'ffxiv/war/inner_beast' },
  { 'battle 3 5', 'ja', 'Aggressor', 'me',    'Aggrsr', 'ffxiv/war/onslaught' },
}

xivhotbar_keybinds_job['WHM'] = {
  -- Some spells moved to General example instead:
  -- Teleports / Recalls / Raises / Re-Raises
  -- Protect(ra) / Shell(ra)
  -- Aquaveil
  -- Sneak / Invisible / Deodorize
  -- Job Abilities
  { 'battle 3 9',  'ja', 'Divine Seal',  'me',    'Divine',    'ffxiv/whm/divine_benison' },
  -- Enfeeblement
  { 'battle 3 2',  'ma', 'Paralyze',     'stnpc', 'Para',      'ffxiv/other/paralyze' },
  { 'battle 3 3',  'ma', 'Slow',         'stnpc', 'Slow',      'ffxiv/other/slow' },
  { 'battle 3 4',  'ma', 'Silence',      'stnpc', 'Silence',   'ffxiv/role/interject' },
  { 'battle 3 1',  'ma', 'Dia II',       'stnpc', 'Dia II',    'Dia',                     'ffxiv/whm/dia' },
  { 'battle 3 1',  'ma', 'Dia',          'stnpc', 'Dia',       'ffxiv/whm/dia' },
  { 'battle 3 9',  'ma', 'Repose',       'stnpc', 'Repose',    'ffxiv/role/repose' },
  { 'battle 3 9',  'ma', 'Flash',        'stnpc', 'Flash',     'ffxiv/pld/flash' },
  -- Barspells
  { 'battle 3 1',  'ma', 'Barsleepra',   'me',    'Sleepra',   '' },
  { 'battle 3 2',  'ma', 'Barpoisonra',  'me',    'Poisonra',  '' },
  { 'battle 3 3',  'ma', 'Barparalyzra', 'me',    'Paralyzra', '' },
  { 'battle 3 1',  'ma', 'Barstonra',    'me',    'Stonra',    'Barstonra' },
  { 'battle 3 2',  'ma', 'Barwatera',    'me',    'Watera',    'Barwatera' },
  { 'battle 3 3',  'ma', 'Baraera',      'me',    'Aera',      'Baraera' },
  { 'battle 3 4',  'ma', 'Barfira',      'me',    'Fira',      'Barfira' },
  { 'battle 3 4',  'ma', 'Barblindra',   'me',    'Blindra',   '' },
  { 'battle 3 5',  'ma', 'Barblizzara',  'me',    'Blizzara',  'Barblizzara' },
  { 'battle 3 5',  'ma', 'Barsilencera', 'me',    'Silencera' },
  { 'battle 3 6',  'ma', 'Barthundra',   'me',    'Thundra',   'Barthundra' },
  { 'battle 3 6',  'ma', 'Barvira',      'me',    'Vira' },
  { 'battle 3 9',  'ma', 'Barpetra',     'me',    'Petra' },
  -- Atk
  { 'battle 3 9',  'ma', 'Holy',         'stnpc', 'Holy',      'ffxiv/whm/holy' }, -- mastery
  -- Regen
  { 'battle 3 11', 'ma', 'Regen II',     'stpc',  'Regen2',    'ffxiv/whm/regen' },
  { 'battle 3 11', 'ma', 'Regen',        'stpc',  'Regen',     'ffxiv/whm/regen' },
  -- Cure
  { 'battle 3 10', 'ma', 'Cure IV',      'stpc',  'Cure4',     'ffxiv/sch/physick' },
  { 'battle 3 10', 'ma', 'Cure III',     'stpc',  'Cure3',     'ffxiv/whm/cure_III' },
  { 'battle 3 10', 'ma', 'Cure II',      'stpc',  'Cure2',     'ffxiv/whm/cure_II' },
  { 'battle 3 10', 'ma', 'Cure',         'stpc',  'Cure',      'ffxiv/whm/cure' },
  -- Cura
  { 'battle 1 10', 'ma', 'Cura',         'me',    'Cura',      'ffxiv/whm/assize' },
  -- Curaga
  { 'battle 3 12', 'ma', 'Curaga III',   'stpc',  'Curaga3',   'ffxiv/whm/dia',           'ffxiv/whm/medica_III' }, -- mastery
  { 'battle 3 12', 'ma', 'Curaga II',    'stpc',  'Curaga2',   'ffxiv/whm/medica_II' },
  { 'battle 3 12', 'ma', 'Curaga',       'stpc',  'Curaga',    'ffxiv/whm/medica' },
  -- Supportive
  { 'battle 3 1',  'ma', 'Poisona',      'stpc',  'Poisona',   'ffxiv/ast/003114' },
  { 'battle 3 2',  'ma', 'Paralyna',     'stpc',  'Paralyna',  'ffxiv/ast/003113' },
  { 'battle 3 3',  'ma', 'Blindna',      'stpc',  'Blindna',   'ffxiv/ast/003147' },
  { 'battle 3 4',  'ma', 'Silena',       'stpc',  'Silena',    'ffxiv/ast/003111' },
  { 'battle 3 6',  'ma', 'Blink',        'me',    'Blink',     'ffxiv/whm/blink' },
  { 'battle 3 7',  'ma', 'Stoneskin',    'me',    'StnSkin',   'ffxiv/whm/stoneskin' },
  { 'battle 3 5',  'ma', 'Cursna',       'stpc',  'Cursna',    'ffxiv/ast/003146' },
  { 'battle 3 7',  'ma', 'Erase',        'stpc',  'Erase',     'ffxiv/role/erase' },
  { 'battle 3 6',  'ma', 'Viruna',       'stpc',  'Viruna',    'ffxiv/ast/003112' },
  { 'battle 3 4',  'ma', 'Stona',        'stpc',  'Stona',     'ffxiv/ast/003115' },
  { 'battle 3 5',  'ma', 'Haste',        'stpc',  'Haste',     'ffxiv/sge/krasis' },
  { 'battle 3 9',  'ma', 'Auspice',      'me',    'Ausp',      'ffxiv/whm/temperance' }, -- mastery
}
