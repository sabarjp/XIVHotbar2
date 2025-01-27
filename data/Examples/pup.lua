-- Load and initialize the include file.
xivhotbar_keybinds_job['Base'] = {
  -- Hotbar #1 Primary JAs
  { 'battle 1 1',  'ja', 'Deploy',           't',  'Fight',    'ffxiv/mch/rook_overload' },
  { 'battle 1 2',  'ja', 'Retrieve',         't',  'Retrieve', 'ffxiv/mch/pile_bunker' },
  -- Maneuvers
  { 'battle 1 3',  'ja', 'Fire Maneuver',    'me', 'FireMan',  'ffxiv/pic/fire_in_red' },
  { 'battle 1 4',  'ja', 'Ice Maneuver',     'me', 'IceMan',   'ffxiv/pic/blizzard_in_cyan' },
  { 'battle 1 5',  'ja', 'Wind Maneuver',    'me', 'WndMan',   'ffxiv/pic/aero_in_green' },
  { 'battle 1 6',  'ja', 'Earth Maneuver',   'me', 'EthMan',   'ffxiv/pic/stone_in_yellow' },
  { 'battle 1 7',  'ja', 'Thunder Maneuver', 'me', 'ThrMan',   'ffxiv/pic/thunder_in_magenta' },
  { 'battle 1 8',  'ja', 'Water Maneuver',   'me', 'WtrMan',   'ffxiv/pic/water_in_blue' },
  { 'battle 1 9',  'ja', 'Light Maneuver',   'me', 'LghMan',   'ffxiv/pic/holy_in_white' },
  { 'battle 1 10', 'ja', 'Dark Maneuver',    'me', 'DrkMan',   'ffxiv/pic/comet_in_black' },
  -- Hotbar #2 weapon skills; leave blank

  -- Hotbar #3 Pet stuff
  { 'battle 3 3',  'ja', 'Activate',         'me', 'Activate', 'ffxiv/mch/roller_dash' },
  { 'battle 3 4',  'ja', 'Deus Ex Automata', 'me', 'DeusEx',   'ffxiv/mch/rook_overdrive' },
  { 'battle 3 5',  'ja', 'Repair',           'me', 'Repair',   'ffxiv/mch/barrel_stabilizer' }, --needs oil
  { 'battle 3 6',  'ja', 'Maintenance',      'me', 'Maintain', 'ffxiv/mch/heated_clean_shot' }, --needs oil
  { 'battle 3 7',  'ja', 'Ventriloquy',      'me', 'Vent',     'ffxiv/mch/reassemble' },        -- merit
  { 'battle 3 8',  'ja', 'Role Reversal',    'me', 'RoleRev',  'ffxiv/mch/heat_blast' },        -- merit
  { 'battle 3 9',  'ja', 'Tactical Switch',  'me', 'T.Switch', 'ffxiv/mch/ricochet' },
  { 'battle 3 10', 'ja', 'Cooldown',         'me', 'C.Down',   'ffxiv/mch/wildfire' },
  { 'battle 3 12', 'ja', 'Heady Artifice',   'me', 'Pet1HR',   'ffxiv/pic/subtractive_palette' },

  -- Hotbar #4 Mostly Subs
  { 'battle 4 11', 'ja', 'Deactivate',       'me', 'Deactvte', 'ffxiv/mch/hot_shot' },
  { 'battle 4 12', 'ja', 'Overdrive',        'me', 'O.Drive',  'ffxiv/pic/polishing_hammer' },

  -- Hotbar #5

  -- Hotbar #6

}

-- SUBJOBS (1-10)
xivhotbar_keybinds_job['NIN'] = {
  -- Shadows
  { 'battle 4 1',  'ma', 'Utsusemi: Ichi', 'me', 'Utsu:Ichi', 'ffxiv/nin/dream_within_a_dream' },
  { 'battle 4 2',  'ma', 'Utsusemi: Ni',   'me', 'Utsu:Ni',   'ffxiv/nin/phantom_kamaitachi' },
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
  -- { 'battle 4 3',  'ma', 'Kurayami: Ichi', 'stnpc', 'Kura',      'ffxiv/blu/glower' },      -- blind
  -- { 'battle 4 4',  'ma', 'Hojo: Ichi',     't',     'Hojo',      'ffxiv/ast/redraw' },      -- slow
  -- { 'battle 4 4',  'ma', 'Hojo: Ni',       't',     'Hojo',      'ffxiv/ast/redraw' },      -- slow
  -- { 'battle 4 5',  'ma', 'Dokumori: Ichi', 'stnpc', 'Doku',      'ffxiv/blu/exuviation' },  -- poison
  -- { 'battle 4 6',  'ma', 'Jubaku: Ichi',   'stnpc', 'Jubaku',    'ffxiv/blu/faze' },        -- paralyze
  -- Stances
  -- { 'battle 4 9',  'ja', 'Yonin',          'me',    'Yonin',     'ffxiv/nin/shade_shift' }, -- tanky
  { 'battle 4 10', 'ja', 'Innin',          'me', 'Innin',     'ffxiv/nin/assassinate' }, -- dps
}

xivhotbar_keybinds_job['WAR'] = {
  { 'battle 4 1', 'ja', 'Provoke',   'stnpc', 'Voke',   'ffxiv/war/defiance' },
  { 'battle 4 2', 'ja', 'Berserk',   'me',    'Brsrk',  'ffxiv/war/berserk' },
  { 'battle 4 3', 'ja', 'Defender',  'me',    'Dfnd',   'ffxiv/war/shake_it_off' },
  { 'battle 4 4', 'ja', 'Warcry',    'me',    'Wrcry',  'ffxiv/war/inner_beast' },
  { 'battle 4 5', 'ja', 'Aggressor', 'me',    'Aggrsr', 'ffxiv/war/onslaught' },
}

xivhotbar_keybinds_job['DRG'] = {
  { 'battle 4 1', 'ja', 'Jump',           't',  'Jump',    'ffxiv/drg/jump' },
  { 'battle 4 2', 'ja', 'High Jump',      't',  'HiJump',  'ffxiv/drg/high_jump' },
  { 'battle 4 3', 'ja', 'Ancient Circle', 'me', 'Ancient', 'ffxiv/rpr/arcane_crest' },
  { 'battle 4 4', 'ja', 'Super Jump',     't',  'SuJump',  'ffxiv/drg/elusive_jump' }, -- mastery
}

xivhotbar_keybinds_job['DNC'] = {
  -- Sambas
  { 'battle 4 10', 'ja', 'Drain Samba',       'me',    'Drain',    'ffxiv/dnc/emboite' },
  { 'battle 4 10', 'ja', 'Drain Samba II',    'me',    'Drain2',   'ffxiv/dnc/emboite' },
  { 'battle 4 10', 'ja', 'Haste Samba',       'me',    'Haste',    'ffxiv/dnc/pirouette' },
  -- {'battle 3 3', 'ja', 'Aspir Samba', 'me', 'Aspir','ffxiv/dnc/jete'},
  -- Waltzes
  { 'battle 4 1',  'ja', 'Curing Waltz',      'stpc',  'CurW',     'ffxiv/dnc/curing_waltz' },
  { 'battle 4 1',  'ja', 'Curing Waltz II',   'stpc',  'CurW2',    'ffxiv/dnc/curing_waltz' },
  { 'battle 4 1',  'ja', 'Curing Waltz III',  'stpc',  'CurW3',    'ffxiv/dnc/curing_waltz' },
  { 'battle 4 2',  'ja', 'Divine Waltz',      'stpc',  'Divine',   'ffxiv/dnc/improvised_finish' },
  { 'battle 4 3',  'ja', 'Healing Waltz',     'stpc',  'Healing',  'ffxiv/dnc/shield_samba' },
  { 'battle 4 9',  'ja', 'Contradance',       'me',    'Contra',   'ffxiv/dnc/tillana' }, -- mastery
  -- Steps
  { 'battle 4 4',  'ja', 'Quickstep',         't',     'Quick',    'ffxiv/dnc/en_avant' },
  { 'battle 4 5',  'ja', 'Box Step',          't',     'Box',      'ffxiv/dnc/bladeshower' },
  -- {'battle 3 9', 'ja', 'Stutter Step', 'stnpc', 'Stutter','ffxiv/dnc/fountainfall'},
  -- Flourishes
  { 'battle 4 6',  'ja', 'Animated Flourish', 'stnpc', 'Voke',     'ffxiv/dnc/closed_position' },
  -- { 'battle 4 7',  'ja', 'Violent Flourish',  'stnpc', 'Stun',     'ffxiv/dnc/starfall_dance' },
  { 'battle 4 7',  'ja', 'Reverse Flourish',  'me',    'Reverse',  'ffxiv/dnc/reverse_cascade' },
  { 'battle 4 8',  'ja', 'Building Flourish', 'me',    'Building', 'ffxiv/dnc/flourish' },
  -- Jigs
  -- {'battle 3 8', 'ja', 'Spectral Jig', 'me', 'Spectral','ffxiv/dnc/fan_dance_IV'},
  -- {'battle 3 8', 'ja', 'Chocobo Jig', 'me', 'Chocobo','ffxiv/dnc/entrechat'}, -- mastery
}

xivhotbar_keybinds_job['SAM'] = {
  -- PUP has no 2handers
  -- {'battle 4 1', 'ja', 'Hasso', 'me', 'Hasso', 'ffxiv/sam/ikishoten'},
  { 'battle 4 1', 'ja', 'Meditate',       'me', 'Mdtate',  'ffxiv/sam/meditate' },
  { 'battle 4 2', 'ja', 'Sekkanoki',      'me', 'Sekka',   'ffxiv/sam/higanbana' },
  -- {'battle 4 4', 'ja', 'Seigan', 'me', 'Seigan', 'ffxiv/sam/tengentsu'},
  { 'battle 4 3', 'ja', 'Third Eye',      'me', '3rd Eye', 'ffxiv/sam/third_eye' },
  { 'battle 4 4', 'ja', 'Warding Circle', 'me', 'Warding', 'ffxiv/gnb/demon_slaughter' },
}

xivhotbar_keybinds_job['COR'] = {
  { 'battle 4 1',  'ja', "Double-Up",      'me', 'Dbl Up', 'ffxiv/ast/play' },
  { 'battle 4 2',  'ja', "Corsair's Roll", 'me', 'COR',    'classes/ast' }, -- exp
  -- { 'battle 4 3',  'ja', "Ninja Roll",     'me', 'NIN',    'classes/nin' }, -- eva
  { 'battle 4 3',  'ja', "Hunter's Roll",  'me', 'HUN',    'classes/acr' }, -- acc & ra acc
  { 'battle 4 4',  'ja', "Chaos Roll",     'me', 'CHS',    'classes/rpr' }, -- phys atk
  -- { 'battle 4 7',  'ja', "Magus's Roll",   'me', 'MGS',    'classes/whm' }, -- mag def
  -- {'battle 3 7', 'ja', "Healer's Roll", 'me', 'HLR','classes/hlr'}, -- cure potency
  { 'battle 4 5',  'ja', "Drachen Roll",   'me', 'DRC',    'classes/lnc' }, -- pet & ra acc
  -- {'battle 3 9', 'ja', "Choral Roll", 'me', 'CRL','classes/brd'}, -- spell interrupt
  -- {'battle 3 10', 'ja', "Monk's Roll", 'me', 'MNK','classes/mnk'}, -- subtle blow
  { 'battle 4 6',  'ja', "Beast Roll",     'me', 'BST',    'classes/war' }, -- pet atk
  { 'battle 4 9',  'ja', "Samurai Roll",   'me', 'SAM',    'classes/sam' }, -- store TP
  -- {'battle 3 3', 'ja', "Quick Draw", 'me', 'QkDraw','classes/mch'},
  -- {'battle 4 9', 'ja', "Evoker's Roll", 'me', 'EVO','classes/smn'}, -- MP regen
  -- { 'battle 4 6',  'ja', "Rogue's Roll",   'me', 'RGE',    'classes/rge' }, -- crit
  -- {'battle 3 4', 'ja', "Warlock's Roll", 'me', 'WLK','classes/thm'}, -- magic acc
  { 'battle 4 8',  'ja', "Fighter's Roll", 'me', 'FTR',    'classes/mar' }, -- double atk
  -- Mastery only
  { 'battle 4 7',  'ja', "Puppet Roll",    'me', 'PUP',    'classes/pug' }, -- pet matk & pet macc
  -- { 'battle 4 8',  'ja', "Gallant's Roll", 'me', 'GAL',    'classes/pld' }, -- def
  -- {'battle 3 8', 'ja', "Wizard's Roll", 'me', 'WIZ','classes/blm'}, -- matk
  { 'battle 4 10', 'ja', "Random Deal",    'me', 'Randm',  'ffxiv/ast/draw' },
}

xivhotbar_keybinds_job['THF'] = {
  { 'battle 4 3', 'ja', 'Steal',        't',  'Steal', 'ffxiv/nin/dream_within_a_dream' },
  { 'battle 4 1', 'ja', 'Sneak Attack', 'me', 'SAtk',  'ffxiv/nin/spinning_edge' },
  { 'battle 4 6', 'ja', 'Flee',         'me', 'Flee',  'ffxiv/nin/role/peloton' },
  { 'battle 4 2', 'ja', 'Trick Attack', 'me', 'TAtk',  'ffxiv/nin/trick_attack' },
  { 'battle 4 4', 'ja', 'Mug',          't',  'Mug',   'ffxiv/nin/mug' },
  { 'battle 4 5', 'ja', 'Hide',         'me', 'Hide',  'ffxiv/nin/hide' },
}

xivhotbar_keybinds_job['RDM'] = {
  -- Abilities
  { 'battle 4 10', 'ja', 'Convert',   'me',    'Convert', 'ffxiv/rdm/magic_barrier' },
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
  { 'battle 4 1',  'ma', 'Dia',       't',     'Dia' },
  { 'battle 4 1',  'ma', 'Dia II',    't',     'Dia2' },
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
  { 'battle 4 3',  'ma', 'Sleep',     'stnpc', 'Sleep' },
  { 'battle 4 3',  'ma', 'Sleep II',  'stnpc', 'Sleep2' },
  -- { 'battle 4 ',   'ma', 'Dispel',    'stnpc', 'Dispel' },
  -- { 'battle 3 ',  'ma', 'Distract',      'stnpc', 'Distract' },
  -- { 'battle 3 ',  'ma', 'Frazzle',       'stnpc', 'Frazzle' },
  -- White Magic
  { 'battle 4 2',  'ma', 'Cure',      'stpc',  'Cure' },
  { 'battle 4 2',  'ma', 'Cure II',   'stpc',  'Cure2' },
  { 'battle 4 2',  'ma', 'Cure III',  'stpc',  'Cure3' },
  { 'battle 4 2',  'ma', 'Cure IV',   'stpc',  'Cure 4' },
  -- { 'battle 4 3',  'ma', 'Regen',     'stpc',  'Regen' },
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
  { 'battle 4 4',  'ma', 'Refresh',   'stpc',  'Refresh' },
  { 'battle 4 5',  'ma', 'Haste',     'stpc',  'Haste' },
  -- { 'battle 4 6',  'ma', 'Flurry',    'stpc',  'Flurry' },
  { 'battle 4 7',  'ma', 'Aquaveil',  'me',    'Aquaveil' },
  { 'battle 4 8',  'ma', 'Blink',     'me',    'Blink' },
  { 'battle 4 6',  'ma', 'Phalanx',   'me',    'Phalanx' },
  { 'battle 4 9',  'ma', 'Stoneskin', 'me',    'StnSkin' },
  -- { 'battle 3 7',  'ma', 'Blaze Spikes',  'me',    'BlzSpikes' },
  -- { 'battle 3 8',  'ma', 'Ice Spikes',    'me',    'IceSpikes' },
  -- Barspells
  -- { 'battle 3 7',  'ma', 'Barstone',      'me',    'BStone',    'Barstonra' },
  -- { 'battle 3 8',  'ma', 'Barwater',      'me',    'BWater',    'Barwatera' },
  -- { 'battle 3 9',  'ma', 'Baraero',       'me',    'BAero',     'Baraera' },
  -- { 'battle 3 10', 'ma', 'Barfire',       'me',    'BFire',     'Barfira' },
  -- { 'battle 3 11', 'ma', 'Barblizzard',   'me',    'BBlizzard', 'Barblizzara' },
  -- { 'battle 4 5',  'ma', 'Barthunder', 'me',    'BThunder', 'Barthundra' },
  -- { 'battle 3 5',  'ma', 'Barsleep',      'me',    'BSleep',    '' },
  -- { 'battle 3 6',  'ma', 'Barpoison',     'me',    'BPoison',   '' },
  -- { 'battle 3 7',  'ma', 'Barparalyze',   'me',    'BPara',     '' },
  -- { 'battle 3 8',  'ma', 'Barblind',      'me',    'BBlind',    '' },
  -- { 'battle 4 6',  'ma', 'Barsilence', 'me',    'BSilence', '' },
  -- { 'battle 3 10', 'ma', 'Barvirus',      'me',    'BVirus',    '' },
  -- { 'battle 3 11', 'ma', 'Barpetrify',    'me',    'BPetri',    '' },
}

xivhotbar_keybinds_job['WHM'] = {
  -- Abilities
  { 'battle 4 10', 'ja', 'Divine Seal', 'me',   'Divine',  'ffxiv/whm/divine_benison' },
  -- Enfeeblement
  -- { 'battle 3 ',  'ma', 'Paralyze',     'stnpc', 'Para' },
  -- { 'battle 3 ',  'ma', 'Slow',         'stnpc', 'Slow' },
  -- { 'battle 3 ',  'ma', 'Silence',      'stnpc', 'Silence' },
  { 'battle 4 1',  'ma', 'Dia',         't',    'Dia' },
  { 'battle 4 1',  'ma', 'Dia II',      't',    'Dia II' },
  -- { 'battle 4 9',  'ma', 'Repose',      'stnpc', 'Repose' },
  -- { 'battle 3 ',  'ma', 'Flash',        'stnpc', 'Flash',     'ffxiv/pld/flash' },
  --{ 'battle 4 9',  'ma', 'Aquaveil',    'me',    'Aquaveil' },
  -- Barspells
  -- { 'battle 4 ',   'ma', 'Barsleepra',  'me',    'Sleepra', '' },
  -- { 'battle 3 ',  'ma', 'Barpoisonra',  'me',    'Poisonra',  '' },
  -- { 'battle 3 ',  'ma', 'Barparalyzra', 'me',    'Paralyzra', '' },
  -- { 'battle 3 ',  'ma', 'Barstonra',    'me',    'Stonra',    'Barstonra' },
  -- { 'battle 3 ',  'ma', 'Barwatera',    'me',    'Watera',    'Barwatera' },
  -- { 'battle 3 ',  'ma', 'Baraera',      'me',    'Aera',      'Baraera' },
  -- { 'battle 3 ',  'ma', 'Barfira',      'me',    'Fira',      'Barfira' },
  -- { 'battle 3 ',  'ma', 'Barblindra',   'me',    'Blindra',   '' },
  -- { 'battle 4 ',  'ma', 'Barblizzara', 'me',    'Blizzara', 'Barblizzara' },
  -- { 'battle 3 ',  'ma', 'Barsilencera', 'me',    'Silencera' },
  -- { 'battle 4 ',  'ma', 'Barthundra',  'me',    'Thundra',  'Barthundra' },
  -- { 'battle 3 ',  'ma', 'Barvira',      'me',    'Vira' },
  -- { 'battle 3 ',  'ma', 'Barpetra',     'me',    'Petra' },
  -- Atk
  -- { 'battle 3 ',  'ma', 'Holy',         'stnpc', 'Holy' }, -- mastery
  -- Regen
  -- { 'battle 4 3',  'ma', 'Regen',       'stpc',  'Regen' },
  -- { 'battle 4 3',  'ma', 'Regen II',    'stpc',  'Regen2' },
  -- Cure
  { 'battle 4 2',  'ma', 'Cure',        'stpc', 'Cure' },
  { 'battle 4 2',  'ma', 'Cure II',     'stpc', 'Cure2' },
  { 'battle 4 2',  'ma', 'Cure III',    'stpc', 'Cure3' },
  { 'battle 4 2',  'ma', 'Cure IV',     'stpc', 'Cure4' },
  -- Cura
  -- { 'battle 3 ', 'ma', 'Cura',         'me',    'Cura' },
  -- Curaga
  { 'battle 4 3',  'ma', 'Curaga',      'stpc', 'Curaga' },
  { 'battle 4 3',  'ma', 'Curaga II',   'stpc', 'Curaga2' },
  { 'battle 4 3',  'ma', 'Curaga III',  'stpc', 'Curaga3' }, -- mastery
  -- Supportive
  { 'battle 4 3',  'ma', 'Poisona',     'stpc', 'Poisona' },
  { 'battle 4 4',  'ma', 'Paralyna',    'stpc', 'Paralyna' },
  { 'battle 4 5',  'ma', 'Blindna',     'stpc', 'Blindna' },
  { 'battle 4 6',  'ma', 'Silena',      'stpc', 'Silena' },
  -- { 'battle 4 7',  'ma', 'Blink',       'me',    'Blink' },
  -- { 'battle 4 7',  'ma', 'Stoneskin',   'me',    'StnSkin' },
  { 'battle 4 7',  'ma', 'Cursna',      'stpc', 'Cursna' },
  { 'battle 4 9',  'ma', 'Erase',       'stpc', 'Erase' },
  -- { 'battle 3 4',  'ma', 'Viruna',       'stpc',  'Viruna' },
  { 'battle 4 8',  'ma', 'Stona',       'stpc', 'Stona' },
  -- { 'battle 4 5',  'ma', 'Haste',       'stpc',  'Haste' },
  -- { 'battle 3 ',  'ma', 'Auspice',      'me',    'Ausp' }, -- mastery
}

xivhotbar_keybinds_job['SCH'] = {
  -- Abilities
  { 'battle 5 1',  'ja', 'Dark Arts',       'me',   'Dark',     'ffxiv/sch/ruin' },
  { 'battle 5 7',  'ja', 'Light Arts',      'me',   'Light',    'ffxiv/sch/ruin_II' },
  { 'battle 5 ',   'ja', 'Sublimation',     'me',   'Sublim',   'ffxiv/sch/aetherflow' },
  { 'battle 5 2',  'ja', 'Penury',          'me',   'Penury',   'ffxiv/sch/dissipation' },        -- shares A - reduce MP
  { 'battle 5 8',  'ja', 'Parsimony',       'me',   'Parsmy',   'ffxiv/sch/broil_IV' },           -- shares A - reduce MP
  { 'battle 5 3',  'ja', 'Celerity',        'me',   'Celrty',   'ffxiv/sch/expedient' },          -- shares B - reduce cast
  { 'battle 5 9',  'ja', 'Alacrity',        'me',   'Alacty',   'ffxiv/sch/deployment_tactics' }, -- shares B - reduce cast
  { 'battle 5 4',  'ja', 'Addendum: White', 'me',   'Add.Wht',  'ffxiv/sch/excogitation' },
  { 'battle 5 10', 'ja', 'Addendum: Black', 'me',   'Add.Blk',  'ffxiv/sch/recitation' },
  { 'battle 5 5',  'ja', 'Accession',       'me',   'Accssn',   'ffxiv/sch/protraction' },   -- shares C - extend
  { 'battle 5 11', 'ja', 'Manifestation',   'me',   'Manifst',  'ffxiv/sch/biolysis' },      -- shares C - extend
  { 'battle 5 6',  'ja', 'Rapture',         'me',   'Raptur',   'ffxiv/sch/art_of_war_II' }, -- shares D - mastery - potency
  { 'battle 5 12', 'ja', 'Ebullience',      'me',   'Ebull',    'ffxiv/sch/art_of_war' },    -- Shares D - mastery - potency
  -- Storms
  { 'battle 6 1',  'me', 'Sandstorm',       'stpc', 'Sand',     'ffxiv/whm/stone_II' },
  { 'battle 6 2',  'me', 'Rainstorm',       'stpc', 'Rain',     'ffxiv/whm/fluid_aura' },
  { 'battle 6 3',  'me', 'Windstorm',       'stpc', 'Wind',     'ffxiv/whm/aero_II' },
  { 'battle 6 4',  'me', 'Firestorm',       'stpc', 'Fire',     'ffxiv/blm/fire_IV' },
  { 'battle 6 5',  'me', 'Hailstorm',       'stpc', 'Hail',     'ffxiv/blm/blizzard_II' },
  { 'battle 6 6',  'me', 'Thunderstorm',    'stpc', 'Thdr',     'ffxiv/blm/thunder_IV' },
  { 'battle 6 7',  'me', 'Voidstorm',       'stpc', 'Void',     'ffxiv/ast/malefic_III' },
  { 'battle 6 8',  'me', 'Aurorastorm',     'stpc', 'Aurora',   'ffxiv/whm/glare' },
  -- Buffs (good in either art)
  { 'battle 4 8',  'ma', 'Blink',           'me',   'Blink' },
  { 'battle 4 10', 'ma', 'Stoneskin',       'me',   'Stoneskin' },
  { 'battle 4 9',  'ma', 'Aquaveil',        'me',   'Aquaveil' },
}

xivhotbar_keybinds_job['Light Arts'] = {
  -- White Magic
  { 'battle 4 1', 'ma', 'Cure',      'stpc', 'Cure1' },
  { 'battle 4 1', 'ma', 'Cure II',   'stpc', 'Cure2' },
  { 'battle 4 1', 'ma', 'Cure III',  'stpc', 'Cure3' },
  { 'battle 4 1', 'ma', 'Cure IV',   'stpc', 'Cure4' }, -- mastery
  { 'battle 4 2', 'ma', 'Regen',     'stpc', 'Regen' },
  { 'battle 4 2', 'ma', 'Regen II',  'stpc', 'Regen2' },
  { 'battle 4 2', 'ma', 'Regen III', 'stpc', 'Regen3' }, -- mastery
  -- Status Removal
  -- { 'battle 3 2', 'ma', 'Poisona',   'stpc', 'Poisona' },
  -- { 'battle 3 2', 'ma', 'Paralyna',  'stpc', 'Paralyna' },
  -- { 'battle 3 2', 'ma', 'Blindna',   'stpc', 'Blindna' },
  -- { 'battle 3 2', 'ma', 'Silena',    'stpc', 'Silena' },
  -- { 'battle 3 2', 'ma', 'Cursna',    'stpc', 'Cursna' },
  -- { 'battle 3 2', 'ma', 'Viruna',    'stpc', 'Viruna' },
  -- { 'battle 3 2', 'ma', 'Stona',     'stpc', 'Stona' }, -- mastery
  { 'battle 4 3', 'ma', 'Erase',     'stpc', 'Erase' },
}

xivhotbar_keybinds_job['Dark Arts'] = {
  -- Black Magic
  -- { 'battle 3 ', 'ma', 'Stone',        'stnpc', 'Stone' },
  -- { 'battle 3 ', 'ma', 'Stone II',     'stnpc', 'Stone2' },
  -- { 'battle 3 ', 'ma', 'Stone III',    'stnpc', 'Stone3' }, -- mastery
  -- { 'battle 3 ', 'ma', 'Water',        'stnpc', 'Water' },
  -- { 'battle 3 ', 'ma', 'Water II',     'stnpc', 'Water2' },
  -- { 'battle 3 ', 'ma', 'Water III',    'stnpc', 'Water3' }, -- mastery
  -- { 'battle 3 ', 'ma', 'Aero',         'stnpc', 'Aero' },
  -- { 'battle 3 ', 'ma', 'Aero II',      'stnpc', 'Aero2' },
  -- { 'battle 3 ', 'ma', 'Fire',         'stnpc', 'Fire' },
  -- { 'battle 3 ', 'ma', 'Fire II',      'stnpc', 'Fire2' },
  -- { 'battle 3 ', 'ma', 'Blizzard',     'stnpc', 'Blizz' },
  -- { 'battle 3 ', 'ma', 'Blizzard II',  'stnpc', 'Blizz2' },
  -- { 'battle 3 ', 'ma', 'Thunder',      'stnpc', 'Thund' },
  -- { 'battle 3 ', 'ma', 'Thunder II',   'stnpc', 'Thund2' }, -- mastery
  -- Enfeeblement
  -- { 'battle 3 ', 'ma', 'Sleep',        'stnpc', 'Sleep' },
  { 'battle 4 1', 'ma', 'Dispel',       't',  'Dispel' },
  -- Buffs
  -- { 'battle 4 2', 'ma', 'Klimaform',   'me',    'Klima' },
  { 'battle 4 2', 'ma', 'Blaze Spikes', 'me', 'B. Spikes' },
  { 'battle 4 2', 'ma', 'Ice Spikes',   'me', 'I. Spikes' }, -- mastery
  -- Helix
  -- { 'battle 4 3', 'ma', 'Geohelix',     'stnpc', 'Geo' },
  -- { 'battle 4 4', 'ma', 'Hydrohelix',   'stnpc', 'Hydro' },
  -- { 'battle 4 5', 'ma', 'Anemohelix',   'stnpc', 'Anemo' },
  -- { 'battle 4 3', 'ma', 'Pyrohelix',   'stnpc', 'Pyro' },
  -- { 'battle 4 4', 'ma', 'Cryohelix',   'stnpc', 'Cryo' },
  -- { 'battle 4 5', 'ma', 'Ionohelix',   'stnpc', 'Iono' },
  -- { 'battle 4 6', 'ma', 'Noctohelix',  't', 'Nocto' },
  -- { 'battle 4 7', 'ma', 'Luminohelix', 't', 'Lumino' },
  -- Absorb
  -- { 'battle 3 ', 'ma', 'Drain',        'stnpc', 'Drain' },
  -- { 'battle 3 ', 'ma', 'Aspir',        'stnpc', 'Aspir' },
}

xivhotbar_keybinds_job['BLM'] = {
  -- Abilities
  { 'battle 4 10', 'ja', 'Elemental Seal', 'me',    'E Seal',  'ffxiv/blm/foul' },
  -- Elemental
  -- { 'battle 3 2',  'ma', 'Stone',          'stnpc', 'Stone' },
  -- { 'battle 3 2',  'ma', 'Stone II',       'stnpc', 'Stone2' },
  -- { 'battle 3 2',  'ma', 'Stone III',      'stnpc', 'Stone3' }, -- mastery
  -- { 'battle 3 2',  'ma', 'Water',          'stnpc', 'Water' },
  -- { 'battle 3 2',  'ma', 'Water II',       'stnpc', 'Water2' },
  -- { 'battle 3 2',  'ma', 'Water III',      'stnpc', 'Water3' }, -- mastery
  -- { 'battle 3 2',  'ma', 'Aero',           'stnpc', 'Aero' },
  -- { 'battle 3 2',  'ma', 'Aero II',        'stnpc', 'Aero2' },
  -- { 'battle 3 2',  'ma', 'Aero III',       'stnpc', 'Aero3' }, -- mastery
  -- { 'battle 3 2',  'ma', 'Fire',           'stnpc', 'Fire' },
  -- { 'battle 3 2',  'ma', 'Fire II',        'stnpc', 'Fire2' },
  -- { 'battle 3 2',  'ma', 'Blizzard',       'stnpc', 'Blizzard' },
  -- { 'battle 3 2',  'ma', 'Blizzard II',    'stnpc', 'Blizzard2' },
  -- { 'battle 3 2',  'ma', 'Thunder',        'stnpc', 'Thunder' },
  -- { 'battle 3 2',  'ma', 'Thunder II',     'stnpc', 'Thunder2' },
  -- { 'battle 3 2',  'ma', 'Drain',          'stpc',  'Drain' },
  -- { 'battle 3 2',  'ma', 'Aspir',          'stpc',  'Aspir' },
  -- Elemental AoE
  -- { 'battle 3 2',  'ma', 'Stonega',        'stnpc', 'Stga' },
  -- { 'battle 3 2',  'ma', 'Stonega II',     'stnpc', 'Stga2' },
  -- { 'battle 3 2',  'ma', 'Waterga',        'stnpc', 'Waga' },
  -- { 'battle 3 2',  'ma', 'Waterga II',     'stnpc', 'Waga2' },
  -- { 'battle 3 2',  'ma', 'Aeroga',         'stnpc', 'Aega' },
  -- { 'battle 3 2',  'ma', 'Aeroga II',      'stnpc', 'Aega2' },
  -- { 'battle 3 2',  'ma', 'Firaga',         'stnpc', 'Figa' },
  -- { 'battle 3 2',  'ma', 'Firaga II',      'stnpc', 'Figa2' }, -- mastery
  -- { 'battle 3 2',  'ma', 'Blizzaga',       'stnpc', 'Blga' },
  -- { 'battle 3 2',  'ma', 'Blizzaga II',    'stnpc', 'Blga2' }, -- mastery
  -- { 'battle 3 2',  'ma', 'Thundaga',       'stnpc', 'Thga' },
  -- Ancient Magic
  -- { 'battle 3 2',  'ma', 'Freeze',         'stnpc', 'Freeze' },  -- mastery
  -- { 'battle 3 2',  'ma', 'Tornado',        'stnpc', 'Tornado' }, -- mastery
  -- { 'battle 3 2',  'ma', 'Quake',          'stnpc', 'Quake' },   -- mastery
  -- { 'battle 3 2',  'ma', 'Burst',          'stnpc', 'Burst' },   -- mastery
  -- { 'battle 3 2',  'ma', 'Flood',          'stnpc', 'Flood' },   -- mastery
  -- Elemental DoTs
  -- { 'battle 3 10', 'ma', 'Shock',          'stpc',  'Shock' },
  -- { 'battle 3 5',  'ma', 'Rasp',           'stpc',  'Rasp' },
  -- { 'battle 3 7',  'ma', 'Frost',          'stpc',  'Frost' },
  -- { 'battle 3 6',  'ma', 'Choke',          'stpc',  'Choke' },
  -- { 'battle 3 8',  'ma', 'Burn',           'stpc',  'Burn' },
  -- { 'battle 3 9',  'ma', 'Drown',          'stpc',  'Drown' },
  -- Enfeeblement
  -- { 'battle 3 2',  'ma', 'Poison',         't',     'Poison' },
  -- { 'battle 3 2',  'ma', 'Poison II',      't',     'Poison2' },
  -- { 'battle 3 2',  'ma', 'Poisonga',       'stpc',  'Psnga' },
  -- { 'battle 3 3',  'ma', 'Blind',          't',     'Blind' },
  { 'battle 4 2',  'ma', 'Bind',           'stnpc', 'Bind' },
  { 'battle 4 1',  'ma', 'Bio',            't',     'Bio' },
  { 'battle 4 1',  'ma', 'Bio II',         't',     'Bio2' },
  -- { 'battle 3 2',  'ma', 'Sleep',          'stnpc', 'Sleep' },
  -- { 'battle 3 2',  'ma', 'Sleep II',       'stnpc', 'Sleep2' }, -- mastery
  { 'battle 4 3',  'ma', 'Stun',           't',     'Stun' },
  { 'battle 4 4',  'ma', 'Sleepga',        'stnpc', 'Sleepga' },
  { 'battle 4 5',  'ma', 'Sleepga II',     'stnpc', 'Sleepga2' }, -- mastery
  -- Spikes
  { 'battle 4 6',  'ma', 'Blaze Spikes',   'me',    'BlzSpk' },
  { 'battle 4 6',  'ma', 'Ice Spikes',     'me',    'IceSpk' },
  { 'battle 4 7',  'ma', 'Shock Spikes',   'me',    'ShkSpk' },
  -- Utility
  -- { 'battle 3 11', 'ma', 'Tractor',        'stpc',  'Tractor' },
  -- { 'battle 3 2',  'ma', 'Escape',         'me',    'Escape' },
  -- { 'battle 3 2',  'ma', 'Warp',           'me',    'Warp' },
  -- { 'battle 3 2',  'ma', 'Warp II',        'stnc',  'Warp2' },
  -- { 'battle 3 2',  'ma', 'Retrace',        'stnc',  'Retrace' }, -- mastery
}

-- WEAPONSKILL SETS
xivhotbar_keybinds_job['Hand-to-hand'] = {
  -- Heavy Hit
  { 'battle 1 11', 'ws', 'One Inch Punch',  't', '1Inch' },  -- mnk pup
  { 'battle 1 11', 'ws', 'Backhand Blow',   't', 'Backhand' },
  { 'battle 1 11', 'ws', 'Dragon Kick',     't', 'Dragon' }, -- mmk pup
  -- Multi-Hit
  { 'battle 1 11', 'ws', 'Combo',           't', 'Combo' },
  { 'battle 1 11', 'ws', 'Raging Fists',    't', 'Raging' }, -- mnk pup
  { 'battle 1 11', 'ws', 'Asuran Fists',    't', 'Asuran' }, -- mnk pup
  -- Specials
  -- {'battle 1 3', 'ws', 'Howling Fist', 't', 'Howling'}, -- mnk pup
  -- {'battle 1 4', 'ws', 'Tornado Kick', 't', 'Tornado'}, -- mnk pup
  -- Prime #6
  -- {'battle 1 6', 'ws', 'Maru Kala', 't', 'Maru'},
  -- Class Specific #7
  -- {'battle 1 7', 'ws', "Ascetic's Fury", 't', 'Ascetic'}, -- mnk
  -- {'battle 1 7', 'ws', 'Stringing Pummel', 't', 'String'}, -- pup
  -- Merit Point #8
  -- {'battle 1 8', 'ws', 'Shijin Spiral', 't', 'Shijin'}, -- mnk pup
  -- Empyrean (Abyssea only)  #9
  -- {'battle 1 9', 'ws', 'Victory Smite', 't', 'Victory'}, -- mnk pup
  -- Relic (only usable with specific weapon equips) #10
  -- {'battle 1 10', 'ws', 'Final Heaven', 't', 'FinHvn'}, -- mnk
  -- {'battle 1 10', 'ws', 'Dragon Blow', 't', 'DragonB'}, -- bonanza
  -- AoE Ws #11
  -- {'battle 1 11', 'ws', 'Spinning Attack', 't', 'Spinning'},
  -- Stun WS #12
  { 'battle 1 12', 'ws', 'Shoulder Tackle', 't', 'Tackle' },
}

return xivhotbar_keybinds_job
