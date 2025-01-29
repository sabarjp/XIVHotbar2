-- Load and initialize the include file.
xivhotbar_keybinds_job['Base'] = {

  --Hotbar #1
  -- Weaponskills; leave blank

  --Hotbar #2
  --main job abilities
  { 'battle 2 1',  'ja', 'Jump',             't',  'Jump',      'ffxiv/drg/jump' },
  { 'battle 2 2',  'ja', 'High Jump',        't',  'Hi Jump',   'ffxiv/drg/high_jump' },
  { 'battle 2 3',  'ja', 'Spirit Jump',      't',  'Sp Jump',   'ffxiv/drg/dragonfire_dive' },
  { 'battle 2 4',  'ja', 'Soul Jump',        't',  'Sl Jump',   'ffxiv/drg/spineshatter_dive' },
  { 'battle 2 5',  'ja', 'Fly High',         'me', 'Fly',       'ffxiv/drg/heavens_thrust' },
  { 'battle 2 6',  'ja', 'Ancient Circle',   'me', 'Ancient',   'ffxiv/rpr/arcane_crest' },
  { 'battle 2 7',  'ja', 'Dragon Breaker',   't',  'Drg Break', 'ffxiv/drg/wyrmwind_thrust' },
  { 'battle 2 8',  'ja', 'Super Jump',       't',  'Su Jump',   'ffxiv/drg/elusive_jump' },
  { 'battle 2 9',  'ja', 'Angon',            't',  'Angon',     'ffxiv/drg/disembowel' },

  --Hotbar #3
  --sub job abilities; leave blank

  --Hotbar #4
  --utility or pet bar
  --12 is always 2-hour ability
  { 'battle 4 1',  'ja', 'Call Wyvern',      'me', 'Call Wyv',  'ffxiv/drg/dragon_sight' },
  { 'battle 4 2',  'ja', 'Spirit Link',      'me', 'Sp Link',   'ffxiv/drg/lance_charge' },
  { 'battle 4 3',  'ja', 'Spirit Bond',      'me', 'Sp Bond',   'ffxiv/drg/life_surge' },
  { 'battle 4 4',  'ja', 'Deep Breathing',   'me', 'Dp Breath', 'ffxiv/drg/nastrond' },
  { 'battle 4 5',  'ja', 'Smiting Breath',   't',  'Sm Breath', 'ffxiv/blu/water_cannon' },
  { 'battle 4 6',  'ja', 'Restoring Breath', 'me', 'Re Breath', 'ffxiv/blu/white_wind' },
  { 'battle 4 7',  'ja', 'Steady Wing',      'me', 'St Wing',   'ffxiv/drg/chaotic_spring' },
  { 'battle 4 11', 'ja', 'Dismiss',          'me', 'Dismiss',   'ffxiv/pet/steady' },
  { 'battle 4 12', 'ja', 'Spirit Surge',     'me', 'Sp Surge',  'ffxiv/drg/battle_litany' },

  -- Hotbar #5
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
  { 'battle 3 4',  'ma', 'Hojo: Ichi',     't',     'Hojo',      'ffxiv/ast/redraw' },      -- slow
  { 'battle 3 4',  'ma', 'Hojo: Ni',       't',     'Hojo',      'ffxiv/ast/redraw' },      -- slow
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

xivhotbar_keybinds_job['SAM'] = {
  { 'battle 3 1', 'ja', 'Hasso',          'me', 'Hasso',   'ffxiv/sam/ikishoten' },
  { 'battle 3 2', 'ja', 'Meditate',       'me', 'Mdtate',  'ffxiv/sam/meditate' },
  { 'battle 3 3', 'ja', 'Sekkanoki',      'me', 'Sekka',   'ffxiv/sam/higanbana' },
  { 'battle 3 4', 'ja', 'Seigan',         'me', 'Seigan',  'ffxiv/sam/tengentsu' },
  { 'battle 3 5', 'ja', 'Third Eye',      'me', '3rd Eye', 'ffxiv/sam/third_eye' },
  { 'battle 3 6', 'ja', 'Warding Circle', 'me', 'Warding', 'ffxiv/gnb/demon_slaughter' },
}

xivhotbar_keybinds_job['DRK'] = {
  { 'battle 3 1', 'ja', 'Last Resort',   'me',    'LResort', 'ffxiv/drk/grit' },
  { 'battle 3 2', 'ja', 'Souleater',     'me',    'SEater',  'ffxiv/drk/souleater' },
  { 'battle 3 3', 'ja', 'Consume Mana',  'me',    'Consume', 'ffxiv/drk/syphon_strike' },
  { 'battle 3 4', 'ja', 'Weapon Bash',   't',     'Bash',    'ffxiv/drk/shadow_wall' },
  { 'battle 3 5', 'ja', 'Arcane Circle', 'me',    'Arcane',  'ffxiv/drk/salted_earth' },
  { 'battle 3 6', 'ma', 'Bio',           'stnpc', 'Bio' },
  { 'battle 3 6', 'ma', 'Bio II',        'stnpc', 'Bio2' },
  { 'battle 3 7', 'ma', 'Sleep',         'stnpc', 'Sleep' },
  { 'battle 3 7', 'ma', 'Sleep II',      'stnpc', 'Sleep2' },
  { 'battle 3 8', 'ma', 'Stun',          't',     'Stun' },
}

xivhotbar_keybinds_job['WHM'] = {
  -- Abilities
  { 'battle 3 12', 'ja', 'Divine Seal', 'me',    'Divine',  'ffxiv/whm/divine_benison' },
  -- Enfeeblement
  -- { 'battle 3 ',  'ma', 'Paralyze',     'stnpc', 'Para' },
  -- { 'battle 3 ',  'ma', 'Slow',         'stnpc', 'Slow' },
  -- { 'battle 3 ',  'ma', 'Silence',      'stnpc', 'Silence' },
  { 'battle 3 1',  'ma', 'Dia',         'stnpc', 'Dia' },
  --{ 'battle 3 2',  'ma', 'Dia II',      'stnpc', 'Dia II' },
  -- { 'battle 3 ',  'ma', 'Repose',       'stnpc', 'Repose' },
  -- { 'battle 3 ',  'ma', 'Flash',        'stnpc', 'Flash',     'ffxiv/pld/flash' },
  { 'battle 3 3',  'ma', 'Aquaveil',    'me',    'Aquaveil' },
  -- Barspells
  -- { 'battle 3 ',  'ma', 'Barsleepra',   'me',    'Sleepra',   '' },
  -- { 'battle 3 ',  'ma', 'Barpoisonra',  'me',    'Poisonra',  '' },
  -- { 'battle 3 ',  'ma', 'Barparalyzra', 'me',    'Paralyzra', '' },
  -- { 'battle 3 ',  'ma', 'Barstonra',    'me',    'Stonra',    'Barstonra' },
  -- { 'battle 3 ',  'ma', 'Barwatera',    'me',    'Watera',    'Barwatera' },
  -- { 'battle 3 ',  'ma', 'Baraera',      'me',    'Aera',      'Baraera' },
  -- { 'battle 3 ',  'ma', 'Barfira',      'me',    'Fira',      'Barfira' },
  -- { 'battle 3 ',  'ma', 'Barblindra',   'me',    'Blindra',   '' },
  -- { 'battle 3 ',  'ma', 'Barblizzara',  'me',    'Blizzara',  'Barblizzara' },
  -- { 'battle 3 ',  'ma', 'Barsilencera', 'me',    'Silencera' },
  -- { 'battle 3 ',  'ma', 'Barthundra',   'me',    'Thundra',   'Barthundra' },
  -- { 'battle 3 ',  'ma', 'Barvira',      'me',    'Vira' },
  -- { 'battle 3 ',  'ma', 'Barpetra',     'me',    'Petra' },
  -- Atk
  -- { 'battle 3 ',  'ma', 'Holy',         'stnpc', 'Holy' }, -- mastery
  -- Regen
  { 'battle 3 5',  'ma', 'Regen',       'stpc',  'Regen' },
  { 'battle 3 5',  'ma', 'Regen II',    'stpc',  'Regen2' },
  -- Cure
  { 'battle 3 4',  'ma', 'Cure',        'stpc',  'Cure' },
  { 'battle 3 4',  'ma', 'Cure II',     'stpc',  'Cure2' },
  { 'battle 3 4',  'ma', 'Cure III',    'stpc',  'Cure3' },
  { 'battle 3 4',  'ma', 'Cure IV',     'stpc',  'Cure4' },
  -- Cura
  --{ 'battle 1 ',   'ma', 'Cura',        'me',    'Cura' },
  -- Curaga
  { 'battle 3 6',  'ma', 'Curaga',      'stpc',  'Curaga' },
  { 'battle 3 6',  'ma', 'Curaga II',   'stpc',  'Curaga2' },
  { 'battle 3 6',  'ma', 'Curaga III',  'stpc',  'Curaga3' }, -- mastery
  -- Supportive
  { 'battle 3 7',  'ma', 'Poisona',     'stpc',  'Poisona' },
  { 'battle 3 7',  'ma', 'Paralyna',    'stpc',  'Paralyna' },
  { 'battle 3 7',  'ma', 'Blindna',     'stpc',  'Blindna' },
  { 'battle 3 7',  'ma', 'Silena',      'stpc',  'Silena' },
  { 'battle 3 7',  'ma', 'Blink',       'me',    'Blink' },
  { 'battle 3 7',  'ma', 'Stoneskin',   'me',    'StnSkin' },
  { 'battle 3 7',  'ma', 'Cursna',      'stpc',  'Cursna' },
  { 'battle 3 7',  'ma', 'Erase',       'stpc',  'Erase' },
  -- { 'battle 3 ',  'ma', 'Viruna',       'stpc',  'Viruna' },
  -- { 'battle 3 ',  'ma', 'Stona',        'stpc',  'Stona' },
  { 'battle 3 10', 'ma', 'Haste',       'stpc',  'Haste' },
  { 'battle 3 11', 'ma', 'Auspice',     'me',    'Ausp' }, -- mastery
}

-- WEAPONSKILL SETS
xivhotbar_keybinds_job['Polearm'] = {
  -- Heavy Hit
  { 'battle 1 1',  'ws', 'Vorpal Thrust',     't', 'Vorpal' },
  { 'battle 1 1',  'ws', 'Wheeling Thrust',   't', 'Wheel' },              -- drg
  -- Multi-Hit
  { 'battle 1 2',  'ws', 'Double Thrust',     't', 'Double' },
  { 'battle 1 2',  'ws', 'Penta Thrust',      't', 'Penta' },
  { 'battle 1 2',  'ws', 'Drakesbane',        't', 'Drakes' },
  -- Thunder
  { 'battle 1 3',  'ws', 'Thunder Thrust',    't', 'Thunder' },
  { 'battle 1 3',  'ws', 'Raiden Thrust',     't', 'Raiden' },               -- war pld drg
  -- Specials
  { 'battle 1 4',  'ws', 'Skewer',            't', 'Skewer' },               -- drg
  { 'battle 1 4',  'ws', 'Impulse Drive',     't', 'Impulse' },              -- war sam drg
  -- Prime #6
  { 'battle 1 6',  'ws', 'Diarmuid',          't', 'Diarm' },
  -- Merit Point #8
  { 'battle 1 8',  'ws', 'Stardiver',         't', 'Star' },                -- war sam drg
  -- Empyrean (Abyssea only)  #9
  { 'battle 1 9',  'ws', "Camlann's Torment", 't', 'Camlann' },             -- drg
  -- Relic (only usable with specific weapon equips) #10
  { 'battle 1 10', 'ws', 'Geirskogul',        't', 'Geirsk' },              -- drg
  -- AoE Ws #11
  { 'battle 1 11', 'ws', 'Sonic Thrust',      't', 'Sonic' },               -- war pld drg
  -- Stun WS #12
  { 'battle 1 12', 'ws', 'Leg Sweep',         't', 'LegSwp' },
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
