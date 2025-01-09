-- Load and initialize the include file.
xivhotbar_keybinds_job['Base'] = {

  --Hotbar #1
  -- Weaponskills; leave blank

  -- Hotbar #2
  --main job abilities
  -- SATA Single Hit
  -- {'battle 2 1', 'macro','input /ja "Sneak Attack" <me>;wait 2;input /ja "Trick Attack" <me>;wait 1;input /ws "Wasp Sting" <t>','','sataWS',"ffxiv/blu/sharpened_knife"},
  { 'battle 2 1',  'macro', "input /ja 'Sneak Attack' <me>;wait 2;input /ja 'Trick Attack' <me>", "",   "SATA",    "ffxiv/blu/sharpened_knife" },
  -- SATA Multi Hit
  { 'battle 2 2',  'ja',    'Sneak Attack',                                                       'me', 'Sneak',   'ffxiv/nin/spinning_edge' },
  { 'battle 2 3',  'ja',    'Trick Attack',                                                       'me', 'Trick',   'ffxiv/nin/trick_attack' },
  { 'battle 2 4',  'ja',    'Bully',                                                              't',  'Bully',   'ffxiv/role/true_north' },
  { 'battle 2 5',  'ja',    'Accomplice',                                                         'st', 'Accomp',  "ffxiv/blu/the_dragon's_voice" },
  { 'battle 2 6',  'ja',    'Collaborator',                                                       'st', 'Collab',  "ffxiv/blu/the_ram's_voice" },

  --Hotbar #3
  --sub job abilities; leave blanka

  --Hotbar #4
  --utility or pet bar
  --12 is always 2-hour ability
  { 'battle 4 1',  'ja',    'Steal',                                                              't',  'Steal',   'ffxiv/nin/dream_within_a_dream' },
  { 'battle 4 2',  'ja',    'Despoil',                                                            't',  'Despoil' },
  { 'battle 4 3',  'ja',    'Mug',                                                                't',  'Mug',     'ffxiv/nin/mug' },
  { 'battle 4 2',  'ja',    'Feint',                                                              'me', 'Feint',   'ffxiv/role/feint' },
  { 'battle 4 4',  'ja',    'Hide',                                                               'me', 'Hide',    'ffxiv/nin/hide' },
  { 'battle 4 5',  'ja',    'Flee',                                                               'me', 'Flee',    'ffxiv/role/peloton' },
  { 'battle 4 6',  'ja',    'Larceny',                                                            't',  'Larceny' },
  { 'battle 4 6',  'ja',    'Conspirator',                                                        'me', 'Conspir' },
  { 'battle 4 12', 'ja',    'Perfect Dodge',                                                      'me', 'P Dodge', 'ffxiv/mnk/anatman' },

  -- Hotbar #5
  { 'battle 5 1',  'input', '/ra <t>',                                                            '',   'Pull',    'ra' },

  -- Hotbar #6
}

-- SUBJOBS
-- Hotbar #3
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

xivhotbar_keybinds_job['COR'] = {
  { 'battle 3 1',  'ja', "Double-Up",      'me', 'Dbl Up', 'ffxiv/ast/play' },
  { 'battle 3 2',  'ja', "Corsair's Roll", 'me', 'COR',    'classes/ast' }, -- exp
  { 'battle 3 3',  'ja', "Ninja Roll",     'me', 'NIN',    'classes/nin' }, -- eva
  { 'battle 3 4',  'ja', "Hunter's Roll",  'me', 'HUN',    'classes/acr' }, -- acc & ra acc
  { 'battle 3 5',  'ja', "Chaos Roll",     'me', 'CHS',    'classes/rpr' }, -- phys atk
  { 'battle 3 7',  'ja', "Magus's Roll",   'me', 'MGS',    'classes/whm' }, -- mag def
  -- {'battle 3 7', 'ja', "Healer's Roll", 'me', 'HLR','classes/hlr'}, -- cure potency
  -- {'battle 3 8', 'ja', "Drachen Roll", 'me', 'DRC','classes/lnc'}, -- pet & ra acc
  -- {'battle 3 9', 'ja', "Choral Roll", 'me', 'CRL','classes/brd'}, -- spell interrupt
  -- {'battle 3 10', 'ja', "Monk's Roll", 'me', 'MNK','classes/mnk'}, -- subtle blow
  -- {'battle 3 11', 'ja', "Beast Roll", 'me', 'BST','classes/war'}, -- pet atk
  { 'battle 3 3',  'ja', "Samurai Roll",   'me', 'SAM',    'classes/sam' }, -- store TP
  -- {'battle 3 3', 'ja', "Quick Draw", 'me', 'QkDraw','classes/mch'},
  { 'battle 3 9',  'ja', "Evoker's Roll",  'me', 'EVO',    'classes/smn' }, -- MP regen
  { 'battle 3 6',  'ja', "Rogue's Roll",   'me', 'RGE',    'classes/rge' }, -- crit
  -- {'battle 3 4', 'ja', "Warlock's Roll", 'me', 'WLK','classes/thm'}, -- magic acc
  { 'battle 3 2',  'ja', "Fighter's Roll", 'me', 'FTR',    'classes/mar' }, -- double atk
  -- Mastery only
  -- {'battle 3 6', 'ja', "Puppet Roll", 'me', 'PUP','classes/pug'}, -- pet matk & pet macc
  { 'battle 3 8',  'ja', "Gallant's Roll", 'me', 'GAL',    'classes/pld' }, -- def
  -- {'battle 3 8', 'ja', "Wizard's Roll", 'me', 'WIZ','classes/blm'}, -- matk
  { 'battle 3 12', 'ja', "Random Deal",    'me', 'Randm',  'ffxiv/ast/draw' },
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
  { 'battle 3 6',  'ja', 'Quickstep',         't',     'Quick',    'ffxiv/dnc/en_avant' },
  { 'battle 3 7',  'ja', 'Box Step',          't',     'Box',      'ffxiv/dnc/bladeshower' },
  -- {'battle 3 9', 'ja', 'Stutter Step', 't', 'Stutter','ffxiv/dnc/fountainfall'},
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
  { 'battle 5 6', 'ws',    'Dulling Arrow',              't',     'Dull' },    -- rng sub
  -- Merit Point
  { 'battle 5 8', 'ws',    'Apex Arrow',                 't',     'Apex' },    -- rng sam
  -- Relic (only usable with specific weapon equips)
  { 'battle 5 9', 'ws',    'Namas Arrow',                't',     'Namas' },   -- rng sam relic
}

-- WEAPONSKILL SETS
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
  { 'battle 1 4',  'ws', 'Energy Drain',    't', 'Energy' }, -- rdm thf brd rng nin dnc
  -- Prime #6
  { 'battle 1 6',  'ws', 'Ruthless Stroke', 't', 'Ruthless' },
  -- Class Specific #7
  { 'battle 1 7',  'ws', 'Mandalic Stab',   't', 'Mandalic' }, -- thf
  -- {'battle 1 7', 'ws', 'Mordant Rime', 't', 'Mordant'}, -- brd
  -- {'battle 1 7', 'ws', 'Pyrrhic Kleos', 't', 'Pyrrhic'}, -- dnc
  -- Merit Point #8
  { 'battle 1 8',  'ws', 'Exenterator',     't', 'Exent' },   -- war rdm thf bst brd rng nin cor dnc
  -- Empyrean (Abyssea only)  #9
  { 'battle 1 9',  'ws', "Rudra's Storm",   't', 'Rudra' },   -- thf brd dnc
  -- Relic (only usable with specific weapon equips) #10
  { 'battle 1 10', 'ws', 'Mercy Stroke',    't', 'Mercy' },   -- rdm thf brd dnc relic
  -- AoE Ws #11
  { 'battle 1 11', 'ws', 'Cyclone',         't', 'Cyclone' }, -- rdm thf brd rng nin cor dnc
  { 'battle 1 11', 'ws', 'Aeolian Edge',    't', 'Aeoln' },   -- rdm thf brd rng nin dnc
  -- Bind WS #12
  { 'battle 1 12', 'ws', 'Shadowstitch',    't', 'ShdSt' },
}

xivhotbar_keybinds_job['Sword'] = {
  -- Heavy Hit
  { 'battle 1 1',  'ws', 'Fast Blade',     't', 'Fast' },
  { 'battle 1 1',  'ws', 'Spirits Within', 't', 'Spirits' },
  -- Multi-Hit
  -- {'battle 1 2', 'ws', 'Vorpal Blade', 't', 'Vorpal'}, -- war rdm pld drk blu run
  -- {'battle 1 2', 'ws', 'Swift Blade', 't', 'Swift'}, -- pld run
  -- {'battle 1 2', 'ws', 'Savage Blade', 't', 'Savage'}, -- war rdm pld drk blu cor run
  -- Fire
  { 'battle 1 3',  'ws', 'Burning Blade',  't', 'Burning' },
  -- {'battle 1 3', 'ws', 'Red Lotus Blade', 't', 'RLotus'}, -- war rdm pld drk blu
  -- Light
  { 'battle 1 4',  'ws', 'Shining Blade',  't', 'Shining' },
  -- {'battle 1 4', 'ws', 'Seraph Blade', 't', 'Seraph'}, -- war rdm pld drk blu run
  -- Specials
  -- {'battle 1 5', 'ws', 'Sanguine Blade', 't', 'Sanguine'}, -- war rdm pld drk blu run
  -- Prime #6
  { 'battle 1 6',  'ws', 'Imperator',      't', 'Imperator' },
  -- Class Specific #7
  -- {'battle 1 7', 'ws', 'Death Blossom', 't', 'D Blsm'}, -- rdm
  -- {'battle 1 7', 'ws', 'Atonement', 't', 'Atone'}, -- pld
  -- {'battle 1 7', 'ws', 'Expiacion', 't', 'Expiacn'}, -- blu
  -- Merit Point #8
  -- {'battle 1 8', 'ws', 'Requiescat', 't', 'Requisct'}, -- war rdm pld drk sam blu cor run
  -- Empyrean (Abyssea only)  #9
  { 'battle 1 9',  'ws', 'Chant du Cygne', 't', 'duCygne' },
  -- Relic (only usable with specific weapon equips) #10
  -- {'battle 1 10', 'ws', 'Knights of Round', 't', 'KotR'}, -- rdm pld blu relic
  -- AoE Ws #11
  { 'battle 1 11', 'ws', 'Circle Blade',   't', 'Circle' },
  -- Stun WS #12
  { 'battle 1 12', 'ws', 'Flat Blade',     't', 'Flat' },
}

return xivhotbar_keybinds_job
