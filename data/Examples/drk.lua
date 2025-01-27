--Load and initialize the include file.
xivhotbar_keybinds_job['Base'] = {
  --Hotbar #1  WS in 4-12
  { 'battle 1 1',  'ja', 'Weapon Bash',      't',     'Bash' },
  { 'battle 1 2',  'ma', 'Stun',             't',     'Stun' },
  { 'battle 1 3',  'ja', 'Souleater',        'me',    'SoulEat' },
  { 'battle 1 4',  'ja', 'Last Resort',      'me',    'L.Rsrt' },

  --Hotbar #2  JAs
  { 'battle 2 1',  'ja', 'Arcane Circle',    'me',    'Arcane' },
  { 'battle 2 2',  'ja', 'Consume Mana',     'me',    'C. Mana' },
  { 'battle 2 3',  'ja', 'Dark Seal',        'me',    'D. Seal' },
  { 'battle 2 4',  'ja', 'Diabolic Eye',     'me',    'D. Eye' },
  { 'battle 2 5',  'ja', 'Nether Void',      'me',    'N. Void' },
  { 'battle 2 6',  'ja', 'Arcane Crest',     't',     'A. Crest' },
  { 'battle 2 7',  'ja', 'Scarlet Delirium', 'me',    'S. Deli' },
  { 'battle 2 8',  'ja', 'Soul Enslavement', 'me',    'Enslav' },

  --Hotbar #3  Reserved for Subjob


  --Hotbar #4   Auxillary spells
  { 'battle 4 1',  'ma', 'Bio',              't',     'Bio' },
  { 'battle 4 1',  'ma', 'Bio II',           't',     'Bio2' },
  { 'battle 4 2',  'ma', 'Drain',            't',     'Drain' },
  { 'battle 4 2',  'ma', 'Drain II',         't',     'Drain2' },
  { 'battle 4 3',  'ma', 'Aspir',            't',     'Aspir' },
  { 'battle 4 3',  'ma', 'Aspir II',         't',     'Aspir2' },
  { 'battle 4 4',  'ma', 'Bind',             'stnpc', 'Bind' },
  { 'battle 4 5',  'ma', 'Sleep',            'stnpc', 'Sleep' },
  { 'battle 4 5',  'ma', 'Sleep II',         'stnpc', 'Sleep2' },
  { 'battle 4 6',  'ma', 'Break',            't',     'Break' },
  { 'battle 4 7',  'ma', 'Poison',           't',     'Psn' },
  { 'battle 4 7',  'ma', 'Poison II',        't',     'Psn2' },
  { 'battle 4 8',  'ma', 'Endark',           'me',    'Endark' },
  { 'battle 4 9',  'ma', 'Dread Spikes',     'me',    'Dread' },
  { 'battle 4 10', 'ma', 'Tractor',          'stpc',  'Tractor' },
  { 'battle 4 12', 'ja', 'Blood Weapon',     'me',    'Bld.Wep',  '2HR' },


  -- Hotbar #5   Nukes
  { 'battle 5 1',  'ma', 'Stone',            't',     'Stone' },
  { 'battle 5 1',  'ma', 'Stone II',         't',     'Stone2' },
  { 'battle 5 1',  'ma', 'Stone III',        't',     'Stone3' },
  { 'battle 5 2',  'ma', 'Water',            't',     'Water' },
  { 'battle 5 2',  'ma', 'Water II',         't',     'Water2' },
  { 'battle 5 2',  'ma', 'Water III',        't',     'Water3' },
  { 'battle 5 3',  'ma', 'Aero',             't',     'Aero' },
  { 'battle 5 3',  'ma', 'Aero II',          't',     'Aero2' },
  { 'battle 5 3',  'ma', 'Aero III',         't',     'Aero3' },
  { 'battle 5 4',  'ma', 'Fire',             't',     'Fire' },
  { 'battle 5 4',  'ma', 'Fire II',          't',     'Fire2' },
  { 'battle 5 4',  'ma', 'Fire III',         't',     'Fire3' },
  { 'battle 5 5',  'ma', 'Blizzard',         't',     'Blizz' },
  { 'battle 5 5',  'ma', 'Blizzard II',      't',     'Blizz2' },
  { 'battle 5 5',  'ma', 'Blizzard III',     't',     'Blizz3' },
  { 'battle 5 6',  'ma', 'Thunder',          't',     'Thund' },
  { 'battle 5 6',  'ma', 'Thunder II',       't',     'Thund2' },
  { 'battle 5 6',  'ma', 'Thunder III',      't',     'Thund3' },

  -- Hotbar #6   Absorbs
  { 'battle 6 1',  'ma', 'Absorb-STR',       't',     'Abs-STR' },
  { 'battle 6 2',  'ma', 'Absorb-DEX',       't',     'Abs-DEX' },
  { 'battle 6 3',  'ma', 'Absorb-AGI',       't',     'Abs-AGI' },
  { 'battle 6 4',  'ma', 'Absorb-VIT',       't',     'Abs-VIT' },
  { 'battle 6 5',  'ma', 'Absorb-INT',       't',     'Abs-INT' },
  { 'battle 6 6',  'ma', 'Absorb-MND',       't',     'Abs-MND' },
  { 'battle 6 7',  'ma', 'Absorb-TP',        't',     'Abs-TP' },
  { 'battle 6 8',  'ma', 'Absorb-ACC',       't',     'Abs-ACC' },
  { 'battle 6 9',  'ma', 'Absorb-Attri',     't',     'Abs-Attri' },
  { 'battle 6 10', 'ma', 'Absorb-CHR',       't',     'Abs-CHR' },
  --{'battle 6 11', '', '', '', '', ''},
  --{'battle 6 12', '', '', '', '', ''},

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
  { 'battle 3 4',  'ma', 'Hojo: Ichi',     't',  'Hojo',      'ffxiv/ast/redraw' },      -- slow
  { 'battle 3 4',  'ma', 'Hojo: Ni',       't',  'Hojo',      'ffxiv/ast/redraw' },      -- slow
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

xivhotbar_keybinds_job['BLM'] = {
  { 'battle 3 1', 'ma', 'Sleepga',        'stpc', 'Sleepga' },
  { 'battle 3 2', 'ja', 'Elemental Seal', 'me',   'E.Seal' },
}

xivhotbar_keybinds_job['SAM'] = {
  { 'battle 3 1', 'ja', 'Hasso',          'me', 'Hasso',   'ffxiv/sam/ikishoten' },
  { 'battle 3 2', 'ja', 'Meditate',       'me', 'Mdtate',  'ffxiv/sam/meditate' },
  { 'battle 3 3', 'ja', 'Sekkanoki',      'me', 'Sekka',   'ffxiv/sam/higanbana' },
  { 'battle 3 4', 'ja', 'Seigan',         'me', 'Seigan',  'ffxiv/sam/tengentsu' },
  { 'battle 3 5', 'ja', 'Third Eye',      'me', '3rd Eye', 'ffxiv/sam/third_eye' },
  { 'battle 3 6', 'ja', 'Warding Circle', 'me', 'Warding', 'ffxiv/gnb/demon_slaughter' },
}


xivhotbar_keybinds_job['WHM'] = {
  -- Abilities
  { 'battle 3 12', 'ja', 'Divine Seal', 'me',   'Divine',  'ffxiv/whm/divine_benison' },
  -- Enfeeblement
  -- { 'battle 3 ',  'ma', 'Paralyze',     'stnpc', 'Para' },
  -- { 'battle 3 ',  'ma', 'Slow',         'stnpc', 'Slow' },
  -- { 'battle 3 ',  'ma', 'Silence',      'stnpc', 'Silence' },
  { 'battle 3 1',  'ma', 'Dia',         't',    'Dia' },
  --{ 'battle 3 2',  'ma', 'Dia II',      'stnpc', 'Dia II' },
  -- { 'battle 3 ',  'ma', 'Repose',       'stnpc', 'Repose' },
  -- { 'battle 3 ',  'ma', 'Flash',        'stnpc', 'Flash',     'ffxiv/pld/flash' },
  { 'battle 3 3',  'ma', 'Aquaveil',    'me',   'Aquaveil' },
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
  { 'battle 3 5',  'ma', 'Regen',       'stpc', 'Regen' },
  { 'battle 3 5',  'ma', 'Regen II',    'stpc', 'Regen2' },
  -- Cure
  { 'battle 3 4',  'ma', 'Cure',        'stpc', 'Cure' },
  { 'battle 3 4',  'ma', 'Cure II',     'stpc', 'Cure2' },
  { 'battle 3 4',  'ma', 'Cure III',    'stpc', 'Cure3' },
  { 'battle 3 4',  'ma', 'Cure IV',     'stpc', 'Cure4' },
  -- Cura
  --{ 'battle 1 ',   'ma', 'Cura',        'me',    'Cura' },
  -- Curaga
  { 'battle 3 6',  'ma', 'Curaga',      'stpc', 'Curaga' },
  { 'battle 3 6',  'ma', 'Curaga II',   'stpc', 'Curaga2' },
  { 'battle 3 6',  'ma', 'Curaga III',  'stpc', 'Curaga3' }, -- mastery
  -- Supportive
  { 'battle 3 7',  'ma', 'Poisona',     'stpc', 'Poisona' },
  { 'battle 3 7',  'ma', 'Paralyna',    'stpc', 'Paralyna' },
  { 'battle 3 7',  'ma', 'Blindna',     'stpc', 'Blindna' },
  { 'battle 3 7',  'ma', 'Silena',      'stpc', 'Silena' },
  { 'battle 3 7',  'ma', 'Blink',       'me',   'Blink' },
  { 'battle 3 7',  'ma', 'Stoneskin',   'me',   'StnSkin' },
  { 'battle 3 7',  'ma', 'Cursna',      'stpc', 'Cursna' },
  { 'battle 3 7',  'ma', 'Erase',       'stpc', 'Erase' },
  -- { 'battle 3 ',  'ma', 'Viruna',       'stpc',  'Viruna' },
  -- { 'battle 3 ',  'ma', 'Stona',        'stpc',  'Stona' },
  { 'battle 3 10', 'ma', 'Haste',       'stpc', 'Haste' },
  { 'battle 3 11', 'ma', 'Auspice',     'me',   'Ausp' }, -- mastery
}

xivhotbar_keybinds_job['RDM'] = {
  { 'battle 3 1',  'ma', 'Cure',     'stpc',  'Cure 1' },
  { 'battle 3 1',  'ma', 'Cure II',  'stpc',  'Cure 2' },
  { 'battle 3 1',  'ma', 'Cure III', 'stpc',  'Cure 3' },
  { 'battle 3 1',  'ma', 'Cure IV',  'stpc',  'Cure 4' },

  { 'battle 3 1',  'ma', 'Refresh',  'stpc',  'Refresh' },
  { 'battle 3 2',  'ma', 'Haste',    'stpc',  'Haste' },
  { 'battle 3 3',  'ma', 'Dia',      'stnpc', 'Dia' },
  --{ 'battle 3 3',  'ma', 'Dia II',   'stnpc', 'Dia2' },

  { 'battle 3 4',  'ma', 'Paralyze', 't',     'Paralyze' },
  { 'battle 3 5',  'ma', 'Slow',     't',     'Slow' },
  { 'battle 3 6',  'ma', 'Silence',  'stnpc', 'Silence' },
  { 'battle 3 7',  'ma', 'Poison',   't',     'Paralyze' },
  { 'battle 3 8',  'ma', 'Blind',    't',     'Slow' },
  { 'battle 3 9',  'ma', 'Bind',     'stnpc', 'Bind' },
  { 'battle 3 10', 'ma', 'Frazzle',  't',     'Frazzle' },

  { 'battle 3 11', 'ma', 'Phalanx',  'me',    'Phalanx' },
}

xivhotbar_keybinds_job['Scythe'] = {
  -- Heavy Hit
  { 'battle 1 4',  'ws', 'Slice',            't', 'Slice' },
  { 'battle 1 4',  'ws', 'Vorpal Scythe',    't', 'Vorpal' },
  { 'battle 1 4',  'ws', 'Spiral Hell',      't', 'Spiral' }, -- war drk bst
  -- Multi-Hit
  { 'battle 1 5',  'ws', 'Cross Reaper',     't', 'Cross' },
  -- Darkness
  { 'battle 1 6',  'ws', 'Dark Harvest',     't', 'DHvst' },
  { 'battle 1 6',  'ws', 'Shadow of Death',  't', 'Shadow' },   -- war drk
  { 'battle 1 6',  'ws', 'Infernal Scythe',  't', 'Infernal' }, -- war drk
  -- Specials
  { 'battle 1 7',  'ws', 'Guillotine',       't', 'Guill' },    -- drk
  { 'battle 1 7',  'ws', 'Nightmare Scythe', 't', 'Nmare' },
  -- Class Specific
  { 'battle 1 8',  'ws', 'Insurgency',       't', 'Insurge' }, -- drk
  -- Merit Point
  { 'battle 1 9',  'ws', 'Entropy',          't', 'Entropy' }, -- war drk bst
  -- Empyrean (Abyssea only)  #9
  { 'battle 1 10', 'ws', 'Quietus',          't', 'Quietus' },
  -- Relic & Prime (only usable with specific weapon equips) #10
  { 'battle 1 11', 'ws', 'Catastrophe',      't', 'Cata' },   -- drk relic
  { 'battle 1 11', 'ws', 'Origin',           't', 'Origin' }, -- drk
  -- AoE Ws #11
  { 'battle 1 12', 'ws', 'Spinning Scythe',  't', 'Spinning' },
  -- Stun WS #12
  -- none
}

xivhotbar_keybinds_job['Great Sword'] = {
  -- Heavy Hit
  { 'battle 1 4',  'ws', 'Hard Slash',      't', 'Hard' },
  { 'battle 1 4',  'ws', 'Power Slash',     't', 'Power' },
  { 'battle 1 4',  'ws', 'Crescent Moon',   't', 'Crescent' },
  { 'battle 1 4',  'ws', 'Spinning Slash',  't', 'Spinning' }, -- run drk pld war
  { 'battle 1 4',  'ws', 'Ground Strike',   't', 'Ground' },
  -- Multi-Hit
  { 'battle 1 5',  'ws', 'Sickle Moon',     't', 'Sickle' },
  -- Ice
  { 'battle 1 6',  'ws', 'Frostbite',       't', 'Frostbite' },
  { 'battle 1 6',  'ws', 'Freezebite',      't', 'Freezebite' },
  -- Specials
  { 'battle 1 7',  'ws', 'Herculean Slash', 't', 'Herculean' },
  -- Class Specific
  { 'battle 1 8',  'ws', 'Dimidiation',     't', 'Dimidiation' }, -- run
  -- Merit Point
  { 'battle 1 9',  'ws', 'Resolution',      't', 'Resolutn' },    -- merit
  -- Empyrean (Abyssea only) #9
  { 'battle 1 10', 'ws', 'Torcleaver',      't', 'Torclvr' },     -- pld drk
  -- Relic & Prime (only usable with specific weapon equips) #10
  { 'battle 1 11', 'ws', 'Scourge',         't', 'Scourge' },     -- war pld drk run relic
  { 'battle 1 11', 'ws', 'Fimbulvetr',      't', 'Fimbulvetr' },
  -- AoE Ws #11
  -- none
  -- Sleep WS #12
  { 'battle 1 12', 'ws', 'Shockwave',       't', 'Shockwave' },
}

return xivhotbar_keybinds_job
