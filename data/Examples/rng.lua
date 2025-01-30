-- Load and initialize the include file.
xivhotbar_keybinds_job['Base'] = {

  --Hotbar #1
  -- Weaponskills; leave blank

  --Hotbar #2
  --main job abilities
  { 'battle 2 1',  'ja',    'Sharpshot',                  'me',    'Sharp',    'ffxiv/brd/burst_shot' },
  { 'battle 2 2',  'ja',    'Barrage',                    'me',    'Barrage',  'ffxiv/brd/barrage' },
  { 'battle 2 3',  'ja',    'Shadowbind',                 'stnpc', 'Bind',     'ffxiv/brd/shadowbite' },
  { 'battle 2 4',  'ja',    'Velocity Shot',              'me',    'Velcty',   'ffxiv/brd/raging_strikes' },
  { 'battle 2 5',  'ja',    'Unlimited Shot',             'me',    'Unlmtd',   'ffxiv/brd/stormbite' },
  { 'battle 2 6',  'ja',    'Double Shot',                'me',    'Double',   'ffxiv/brd/quick_nock' },
  -- Enmity
  { 'battle 3 10', 'ja',    'Decoy Shot',                 'me',    'Bounty',   'ffxiv/vpr/slither' },
  { 'battle 3 11', 'ja',    'Stealth Shot',               'me',    'Stealth',  'ffxiv/brd/repelling_shot' }, -- Merit
  { 'battle 3 12', 'ja',    'Flashy Shot',                'me',    'Flashy',   'ffxiv/brd/empyreal_arrow' }, -- Merit

  --Hotbar #3
  --sub job abilities; leave blank

  --Hotbar #4
  --utility or pet bar
  --12 is always 2-hour ability
  { 'battle 4 1',  'ja',    'Scavenge',                   'me',    'Scvnge',   'ffxiv/role/tactician' },
  { 'battle 4 2',  'ja',    'Camouflage',                 'me',    'Camo',     'ffxiv/brd/iron_jaws' },
  { 'battle 4 3',  'ja',    'Bounty Shot',                'me',    'Bounty',   'ffxiv/nin/mug' },
  { 'battle 4 4',  'ja',    'Hover Shot',                 'me',    'Hover',    'ffxiv/brd/ladonsbite' },
  { 'battle 4 5',  'ja',    'Overkill',                   'me',    'Overkill', 'ffxiv/brd/refulgent_arrow' },
  { 'battle 4 12', 'ja',    'Eagle Eye Shot',             't',     'EEShot',   'ffxiv/brd/apex_arrow' },

  -- Hotbar #5
  -- Ranged Hotbar #5
  { 'battle 5 1',  'input', '/ra <t>',                    '',      'RA',       'ra' },
  { 'battle 5 7',  'input', '/equip ammo "Wooden Arrow"', '',      'Ammo',     'classes/phy_rng' },
}

-- SUBJOBS
-- Hotbar #3
xivhotbar_keybinds_job['MNK'] = {
  { 'battle 3 1', 'ja', 'Boost',         'me', 'Boost',  'ffxiv/mnk/riddle_of_fire' },
  { 'battle 3 2', 'ja', 'Dodge',         'me', 'Dodge',  'ffxiv/mnk/riddle_of_earth' },
  { 'battle 3 3', 'ja', 'Focus',         'me', 'Focus',  'ffxiv/mnk/riddle_of_wind' },
  { 'battle 3 4', 'ja', 'Chakra',        'me', 'Chakra', 'ffxiv/mnk/meditation' },
  { 'battle 3 5', 'ja', 'Chi Blast',     't',  'Chi',    'ffxiv/mnk/elixir_field' },
  { 'battle 3 6', 'ja', 'Counterstance', 'me', 'Ctr',    'ffxiv/mnk/arm_of_the_destroyer' },
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
  { 'battle 3 1',  'ma', 'Utsusemi: Ichi', 'me', 'Utsu:Ichi', 'ffxiv/nin/dream_within_a_dream' },
  { 'battle 3 2',  'ma', 'Utsusemi: Ni',   'me', 'Utsu:Ni',   'ffxiv/nin/phantom_kamaitachi' },
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
  { 'battle 3 3',  'ma', 'Kurayami: Ichi', 't',  'Kura',      'ffxiv/blu/glower' },      -- blind
  { 'battle 3 4',  'ma', 'Hojo: Ni',       't',  'Hojo',      'ffxiv/ast/redraw' },      -- slow
  { 'battle 3 4',  'ma', 'Hojo: Ichi',     't',  'Hojo',      'ffxiv/ast/redraw' },      -- slow
  { 'battle 3 5',  'ma', 'Dokumori: Ichi', 't',  'Doku',      'ffxiv/blu/exuviation' },  -- poison
  { 'battle 3 6',  'ma', 'Jubaku: Ichi',   't',  'Jubaku',    'ffxiv/blu/faze' },        -- paralyze
  -- Stances
  { 'battle 3 11', 'ja', 'Yonin',          'me', 'Yonin',     'ffxiv/nin/shade_shift' }, -- tanky
  { 'battle 3 12', 'ja', 'Innin',          'me', 'Innin',     'ffxiv/nin/assassinate' }, -- dps
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
  -- {'battle 3 9', 'ja', 'Stutter Step', 'stnpc', 'Stutter','ffxiv/dnc/fountainfall'},
  -- Flourishes
  { 'battle 3 12', 'ja', 'Animated Flourish', 'stnpc', 'Voke',     'ffxiv/dnc/closed_position' },
  { 'battle 3 9',  'ja', 'Violent Flourish',  't',     'Stun',     'ffxiv/dnc/starfall_dance' },
  { 'battle 3 10', 'ja', 'Reverse Flourish',  'me',    'Reverse',  'ffxiv/dnc/reverse_cascade' },
  { 'battle 3 11', 'ja', 'Building Flourish', 'me',    'Building', 'ffxiv/dnc/flourish' },
  -- Jigs
  -- {'battle 3 8', 'ja', 'Spectral Jig', 'me', 'Spectral','ffxiv/dnc/fan_dance_IV'},
  -- {'battle 3 8', 'ja', 'Chocobo Jig', 'me', 'Chocobo','ffxiv/dnc/entrechat'}, -- mastery
}

xivhotbar_keybinds_job['SAM'] = {
  { 'battle 3 1', 'ja', 'Hasso',          'me', 'Hasso',   'ffxiv/sam/ikishoten' },
  { 'battle 3 2', 'ja', 'Meditate',       'me', 'Mdtate',  'ffxiv/sam/meditate' },
  { 'battle 3 3', 'ja', 'Sekkanoki',      'me', 'Sekka',   'ffxiv/sam/higanbana' },
  { 'battle 3 4', 'ja', 'Seigan',         'me', 'Seigan',  'ffxiv/sam/tengentsu' },
  { 'battle 3 5', 'ja', 'Third Eye',      'me', '3rd Eye', 'ffxiv/sam/third_eye' },
  { 'battle 3 6', 'ja', 'Warding Circle', 'me', 'Warding', 'ffxiv/gnb/demon_slaughter' },
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
  { 'battle 3 6', 'ma', 'Bio',           't',     'Bio' },
  { 'battle 3 6', 'ma', 'Bio II',        't',     'Bio2' },
  { 'battle 3 7', 'ma', 'Sleep',         'stnpc', 'Sleep' },
  { 'battle 3 7', 'ma', 'Sleep II',      'stnpc', 'Sleep2' },
  { 'battle 3 8', 'ma', 'Stun',          't',     'Stun' },
}

-- WEAPONSKILL SETS
xivhotbar_keybinds_job['Axe'] = {
  -- Wind
  { 'battle 1 9',  'ws', 'Gale Axe',      't', 'Gale' },
  -- Heavy Hit
  { 'battle 1 9',  'ws', 'Avalanche Axe', 't', 'Avlnche' },
  -- {'battle 1 1', 'ws', 'Spinning Axe', 't', 'Spinning'}, -- war drk run bst
  -- {'battle 1 1', 'ws', 'Calamity', 't', 'Calamity'}, -- war bst
  -- Multi-Hit
  { 'battle 1 10', 'ws', 'Raging Axe',    't', 'Raging' },
  { 'battle 1 10', 'ws', 'Rampage',       't', 'Rampage' },
  { 'battle 1 10', 'ws', 'Decimation',    't', 'Decimate' }, -- war drk bst rng run
  -- Specials
  -- {'battle 1 4', 'ws', 'Mistral Axe', 't', 'Mistral'}, -- war bst
  -- Prime #6
  -- {'battle 1 6', 'ws', 'Blitz', 't', 'Blitz'}, -- bst
  -- Class Specific #7
  -- {'battle 1 7', 'ws', 'Primal Rend', 't', 'Primal'}, -- bst
  -- Merit Point #8
  { 'battle 1 11', 'ws', 'Ruinator',      't', 'Ruinator' }, -- war drk bst rng run
  -- Empyrean (Abyssea only)  #9
  -- {'battle 1 9', 'ws', 'Cloudsplitter', 't', 'Cloudsplt'}, -- war bst
  -- Relic (only usable with specific weapon equips) #10
  -- {'battle 1 10', 'ws', 'Onslaught', 't', 'Onslaught'}, -- bst relic
  -- Bind WS #11
  -- {'battle 1 12', 'ws', 'Bora Axe', 't', 'Bora'}, -- war drk run bst
  -- Bind WS #12
  { 'battle 1 12', 'ws', 'Smash Axe',     't', 'Smash' },
}

xivhotbar_keybinds_job['Dagger'] = {
  -- Wind
  { 'battle 1 9',  'ws', 'Gust Slash',      't', 'Gust' },
  -- Heavy Hit
  { 'battle 1 9',  'ws', 'Wasp Sting',      't', 'Wasp' },
  { 'battle 1 9',  'ws', 'Viper Bite',      't', 'Viper' }, -- rdm thf brd rng nin dnc
  -- {'battle 1 1', 'ws', 'Shark Bite', 't', 'Shark'}, -- thf dnc
  -- Multi-Hit
  -- {'battle 1 2', 'ws', 'Dancing Edge', 't', 'DncEdge'}, -- thf dnc
  { 'battle 1 10', 'ws', 'Evisceration',    't', 'Evisc' }, -- war rdm thf bst brd rng nin cor dnc
  -- Specials
  -- {'battle 1 4', 'ws', 'Energy Steal', 't', 'Energy'},
  -- {'battle 1 4', 'ws', 'Energy Drain', 't', 'Energy'}, -- rdm thf brd rng nin dnc
  -- Prime #6
  { 'battle 1 9',  'ws', 'Ruthless Stroke', 't', 'Ruthless' },
  -- Class Specific #7
  -- {'battle 1 7', 'ws', 'Mandalic Stab', 't', 'Mandalic'}, -- thf
  -- {'battle 1 7', 'ws', 'Mordant Rime', 't', 'Mordant'}, -- brd
  -- {'battle 1 7', 'ws', 'Pyrrhic Kleos', 't', 'Pyrrhic'}, -- dnc
  -- Merit Point #8
  { 'battle 1 9',  'ws', 'Exenterator',     't', 'Exent' }, -- war rdm thf bst brd rng nin cor dnc
  -- Empyrean (Abyssea only)  #9
  -- {'battle 1 9', 'ws', "Rudra's Storm", 't', 'Rudra'}, -- thf brd dnc
  -- Relic (only usable with specific weapon equips) #10
  -- {'battle 1 10', 'ws', 'Mercy Stroke', 't', 'Mercy'}, -- rdm thf brd dnc relic
  -- AoE Ws #11
  { 'battle 1 11', 'ws', 'Cyclone',         't', 'Cyclone' }, -- rdm thf brd rng nin cor dnc
  { 'battle 1 11', 'ws', 'Aeolian Edge',    't', 'Aeoln' },   -- rdm thf brd rng nin dnc
  -- Bind WS #12
  { 'battle 1 12', 'ws', 'Shadowstitch',    't', 'ShdSt' },
}

xivhotbar_keybinds_job['Bow'] = {
  -- Heavy Hit
  { 'battle 1 1', 'ws', 'Flaming Arrow',     't', 'Flame' },    -- rng sub
  { 'battle 1 1', 'ws', 'Piercing Arrow',    't', 'Pierce' },   -- rng sub
  { 'battle 1 1', 'ws', 'Sidewinder',        't', 'Sidewndr' }, -- rng sub
  { 'battle 1 1', 'ws', 'Arching Arrow',     't', 'Arch' },     -- rng
  { 'battle 1 2', 'ws', 'Empyreal Arrow',    't', 'Empyrl' },   -- rng
  -- Multi-Hit
  { 'battle 1 3', 'ws', 'Refulgent Arrow',   't', 'Reflgnt' },  -- rng sub
  -- Specials
  { 'battle 1 4', 'ws', 'Dulling Arrow',     't', 'Dull' },     -- rng sub
  { 'battle 1 4', 'ws', 'Blast Arrow',       't', 'Blast' },    -- rng
  -- Prime #6
  { 'battle 1 5', 'ws', 'Sarv',              't', 'Sarv' },     -- rng
  -- Merit Point #8
  { 'battle 1 6', 'ws', 'Apex Arrow',        't', 'Apex' },     -- rng sam
  -- Empyrean (Abyssea only)  #9
  { 'battle 1 7', 'ws', "Jishnu's Radiance", 't', 'Jishnu' },   -- rng
  -- Relic (only usable with specific weapon equips) #10
  { 'battle 1 8', 'ws', 'Namas Arrow',       't', 'Namas' },    -- rng sam relic
  -- AoE Ws #11
  -- none
  -- Stun WS #12
  -- none
}

xivhotbar_keybinds_job['Marksmanship'] = {
  -- Heavy Hit
  { 'battle 1 1', 'ws', 'Hot Shot',     't', 'Hot' },      -- rng cor sub
  { 'battle 1 1', 'ws', 'Sniper Shot',  't', 'Sniper' },   -- rng cor sub
  { 'battle 1 1', 'ws', 'Slug Shot',    't', 'Slug' },     -- rng cor sub
  { 'battle 1 1', 'ws', 'Detonator',    't', 'Detonate' }, -- rng cor
  -- Multi-Hit
  { 'battle 1 2', 'ws', 'Blast Shot',   't', 'Blast' },    -- rng
  -- Specials
  { 'battle 1 3', 'ws', 'Split Shot',   't', 'Split' },    -- rng cor
  { 'battle 1 3', 'ws', 'Numbing Shot', 't', 'Numb' },     -- rng cor sub
  -- Prime #6
  { 'battle 1 4', 'ws', 'Terminus',     't', 'Terminus' }, -- rng cor
  -- Class Specific #7
  { 'battle 1 5', 'ws', 'Heavy Shot',   't', 'Heavy' },    -- rng
  { 'battle 1 5', 'ws', 'Trueflight',   't', 'Trueflt' },  -- rng
  -- {'battle 1 7', 'ws', 'Leaden Salute', 't', 'Leaden'}, -- cor
  -- Merit Point #8
  { 'battle 1 6', 'ws', 'Last Stand',   't', 'Last' },     -- thf rng cor
  -- Empyrean (Abyssea only)  #9
  { 'battle 1 7', 'ws', 'Wildfire',     't', 'Wildfire' }, -- rng cor
  -- Relic (only usable with specific weapon equips) #10
  { 'battle 1 8', 'ws', 'Coronach',     't', 'Coronach' }, -- rng cor relic
  -- AoE Ws #11
  -- none
  -- Stun WS #12
  -- none
}

return xivhotbar_keybinds_job
