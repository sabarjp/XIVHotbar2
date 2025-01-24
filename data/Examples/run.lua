-- Load and initialize the include file.
xivhotbar_keybinds_job['Base'] = {
  --Hotbar #1
  -- 9-12 Weaponskills;
  -- 1-8 Runes
  { 'battle 1 1',  'ja', 'Ignis',              'me',    'Ignis',     'ffxiv/pic/fire_in_red' },
  { 'battle 1 2',  'ja', 'Gelus',              'me',    'Gelus',     'ffxiv/pic/blizzard_in_cyan' },
  { 'battle 1 3',  'ja', 'Flabra',             'me',    'Flabra',    'ffxiv/pic/aero_in_green' },
  { 'battle 1 4',  'ja', 'Tellus',             'me',    'Tellus',    'ffxiv/pic/stone_in_yellow' },
  { 'battle 1 5',  'ja', 'Sulpor',             'me',    'Sulpor',    'ffxiv/pic/thunder_in_magenta' },
  { 'battle 1 6',  'ja', 'Unda',               'me',    'Unda',      'ffxiv/pic/water_in_blue' },
  { 'battle 1 7',  'ja', 'Lux',                'me',    'Lux',       'ffxiv/pic/holy_in_white' },
  { 'battle 1 8',  'ja', 'Tenebrae',           'me',    'Ignis',     'ffxiv/pic/comet_in_black' },

  -- Hotbar #2
  --main job abilities
  -- Offensive
  { 'battle 2 1',  'ja', 'Swipe',              't',     'Swipe',     'ffxiv/vpr/First_Generation' },
  { 'battle 2 2',  'ja', 'Lunge',              't',     'Lunge',     'ffxiv/vpr/Hindsbane_Fang' },
  { 'battle 2 3',  'ja', 'Gambit',             't',     'Gambit',    'ffxiv/vpr/Twinfang_Bite' },
  { 'battle 2 4',  'ja', 'Rayke',              'me',    'Rayke',     'ffxiv/vpr/Vicepit' }, -- merit
  -- Defensive Spells
  { 'battle 2 5',  'ma', 'Blink',              'me',    'Blink' },
  { 'battle 2 6',  'ma', 'Stoneskin',          'me',    'Stoneskin' },
  { 'battle 2 7',  'ma', 'Phalanx',            'me',    'Phalanx' },
  { 'battle 2 8',  'ma', 'Temper',             'me',    'Temper' }, -- job point
  -- Curative Spells
  { 'battle 2 9',  'ma', 'Regen',              'stpc',  'Regen' },
  { 'battle 2 9',  'ma', 'Regen II',           'stpc',  'Regen2' },
  { 'battle 2 9',  'ma', 'Regen III',          'stpc',  'Regen3' },
  { 'battle 2 9',  'ma', 'Regen IV',           'stpc',  'Regen4' },
  { 'battle 2 10', 'ma', 'Refresh',            'stpc',  'Refresh' },
  -- Spell buffs
  { 'battle 2 12', 'ja', 'Embolden',           'me',    'Embold',    'ffxiv/vpr/Uncoiled_Fury' },

  --Hotbar #3
  --sub job abilities; leave blank

  --Hotbar #4
  --utility or pet bar
  --12 is always 2-hour ability
  -- Tanking / Self-Targeted Defense
  { 'battle 4 1',  'ja', 'Vallation',          'me',    'Valltn',    'ffxiv/sge/haima' },
  { 'battle 4 2',  'ja', 'Swordplay',          'me',    'Swordply',  'ffxiv/vpr/Flanksbane_Fang' },
  { 'battle 4 3',  'ja', 'Pflug',              'me',    'Pflug',     'ffxiv/sge/eukrasia' },
  { 'battle 4 4',  'ja', 'Vivacious Pulse',    'me',    'Viva',      'ffxiv/sge/krasis' },
  { 'battle 4 5',  'ja', 'Battuta',            'me',    'Battuta',   'ffxiv/vpr/Twinblood_Bite' }, -- merit
  { 'battle 4 6',  'ja', 'Liement',            'me',    'Liement',   'ffxiv/sge/physis' },
  -- Party-Wide Defense
  { 'battle 4 7',  'ja', 'Valiance',           'me',    'Valia',     'ffxiv/sge/panhaima' },
  { 'battle 4 8',  'ja', 'One for All',        'me',    '1FAll',     'ffxiv/sge/kerachole' },
  { 'battle 4 11', 'ja', 'Odyllic Subterfuge', 't',     'Odyllic',   'ffxiv/sge/eukrasian_dosis' },
  { 'battle 4 12', 'ja', 'Elemental Sforzo',   'me',    'Sforzo',    'ffxiv/sge/taurochole' },

  -- Hotbar #5
  -- Tanking spells
  { 'battle 5 1',  'ma', 'Flash',              'stnpc', 'Flash',     'ffxiv/pld/flash' },
  { 'battle 5 2',  'ma', 'Crusade',            'me',    'Crusade' },
  { 'battle 5 3',  'ma', 'Foil',               'me',    'Foil' },
  { 'battle 5 4',  'ma', 'Aquaveil',           'me',    'Aqua' },
  -- Spikes
  { 'battle 5 7',  'ma', 'Blaze Spikes',       'me',    'BlzSpikes' },
  { 'battle 5 8',  'ma', 'Ice Spikes',         'me',    'IceSpikes' },
  { 'battle 5 9',  'ma', 'Shock Spikes',       'me',    'ShkSpikes' },

  -- Hotbar #6
  -- Bar-element Spells
  { 'battle 6 1',  'ma', 'Barstone',           'me',    'BStone',    'Barstonra' },
  { 'battle 6 2',  'ma', 'Barwater',           'me',    'BWater',    'Barwatera' },
  { 'battle 6 3',  'ma', 'Baraero',            'me',    'BAero',     'Baraera' },
  { 'battle 6 4',  'ma', 'Barfire',            'me',    'BFire',     'Barfira' },
  { 'battle 6 5',  'ma', 'Barblizzard',        'me',    'BBlizzard', 'Barblizzara' },
  { 'battle 6 6',  'ma', 'Barthunder',         'me',    'BThunder',  'Barthundra' },
  -- Bar-enfeeble Spells
  { 'battle 6 7',  'ma', 'Barsleep',           'me',    'BSleep',    '' },
  -- { 'battle 6 6',  'ma', 'Barpoison',          'me',    'BPoison',   '' },
  { 'battle 6 8',  'ma', 'Barparalyze',        'me',    'BPara',     '' },
  { 'battle 6 9',  'ma', 'Barblind',           'me',    'BBlind',    '' },
  { 'battle 6 10', 'ma', 'Barsilence',         'me',    'BSilence',  '' },
  -- { 'battle 6 10', 'ma', 'Barvirus',           'me',    'BVirus',    '' },
  { 'battle 6 11', 'ma', 'Barpetrify',         'me',    'BPetri',    '' },
  { 'battle 6 12', 'ma', 'Baramnesia',         'me',    'Bamnesia',  '' },
}

-- SUBJOBS
-- Hotbar #3
-- note: add blu mage
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

xivhotbar_keybinds_job['SAM'] = {
  { 'battle 3 1', 'ja', 'Hasso',          'me', 'Hasso',   'ffxiv/sam/ikishoten' },
  { 'battle 3 2', 'ja', 'Meditate',       'me', 'Mdtate',  'ffxiv/sam/meditate' },
  { 'battle 3 3', 'ja', 'Sekkanoki',      'me', 'Sekka',   'ffxiv/sam/higanbana' },
  { 'battle 3 4', 'ja', 'Seigan',         'me', 'Seigan',  'ffxiv/sam/tengentsu' },
  { 'battle 3 5', 'ja', 'Third Eye',      'me', '3rd Eye', 'ffxiv/sam/third_eye' },
  { 'battle 3 6', 'ja', 'Warding Circle', 'me', 'Warding', 'ffxiv/gnb/demon_slaughter' },
}

xivhotbar_keybinds_job['COR'] = {
  { 'battle 3 1',  'ja', "Double-Up",      'me', 'Dbl Up', 'ffxiv/ast/play' },
  { 'battle 3 2',  'ja', "Corsair's Roll", 'me', 'COR',    'classes/ast' }, -- exp
  { 'battle 3 3',  'ja', "Ninja Roll",     'me', 'NIN',    'classes/nin' }, -- eva
  { 'battle 3 4',  'ja', "Hunter's Roll",  'me', 'HUN',    'classes/acr' }, -- acc & ra acc
  { 'battle 3 5',  'ja', "Chaos Roll",     'me', 'CHS',    'classes/rpr' }, -- phys atk
  { 'battle 3 6',  'ja', "Magus's Roll",   'me', 'MGS',    'classes/whm' }, -- mag def
  -- { 'battle 3 7',  'ja', "Healer's Roll",  'me', 'HLR',    'classes/hlr' }, -- cure potency
  -- { 'battle 3 8',  'ja', "Drachen Roll",   'me', 'DRC',    'classes/lnc' }, -- pet & ra acc
  -- { 'battle 3 9',  'ja', "Choral Roll",    'me', 'CRL',    'classes/brd' }, -- spell interrupt
  -- { 'battle 3 10', 'ja', "Monk's Roll",    'me', 'MNK',    'classes/mnk' }, -- subtle blow
  -- { 'battle 3 11', 'ja', "Beast Roll",     'me', 'BST',    'classes/war' }, -- pet atk
  { 'battle 3 7',  'ja', "Samurai Roll",   'me', 'SAM',    'classes/sam' }, -- store TP
  -- { 'battle 3 1',  'ja', "Quick Draw",     'me', 'QkDraw', 'classes/mch' },
  { 'battle 3 8',  'ja', "Evoker's Roll",  'me', 'EVO',    'classes/smn' }, -- MP regen
  -- { 'battle 3 3',  'ja', "Rogue's Roll",   'me', 'RGE',    'classes/rge' }, -- crit
  -- { 'battle 3 4',  'ja', "Warlock's Roll", 'me', 'WLK',    'classes/thm' }, -- magic acc
  -- { 'battle 3 5',  'ja', "Fighter's Roll", 'me', 'FTR',    'classes/mar' }, -- double atk
  -- Mastery only
  -- { 'battle 3 6',  'ja', "Puppet Roll",    'me', 'PUP',    'classes/pug' }, -- pet matk & pet macc
  { 'battle 3 9',  'ja', "Gallant's Roll", 'me', 'GAL',    'classes/pld' }, -- def
  { 'battle 3 10', 'ja', "Wizard's Roll",  'me', 'WIZ',    'classes/blm' }, -- matk
  { 'battle 3 12', 'ja', "Random Deal",    'me', 'Randm',  'ffxiv/ast/draw' },
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

xivhotbar_keybinds_job['WAR'] = {
  { 'battle 3 1', 'ja', 'Provoke',   'stnpc', 'Voke',   'ffxiv/war/defiance' },
  { 'battle 3 2', 'ja', 'Berserk',   'me',    'Brsrk',  'ffxiv/war/berserk' },
  { 'battle 3 3', 'ja', 'Defender',  'me',    'Dfnd',   'ffxiv/war/shake_it_off' },
  { 'battle 3 4', 'ja', 'Warcry',    'me',    'Wrcry',  'ffxiv/war/inner_beast' },
  { 'battle 3 5', 'ja', 'Aggressor', 'me',    'Aggrsr', 'ffxiv/war/onslaught' },
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

-- WEAPONSKILL SETS
xivhotbar_keybinds_job['Sword'] = {
  -- Heavy Hit
  { 'battle 1 9',  'ws', 'Fast Blade',     't', 'Fast' },
  { 'battle 1 9',  'ws', 'Spirits Within', 't', 'Spirits' },
  -- Multi-Hit
  { 'battle 1 9',  'ws', 'Vorpal Blade',   't', 'Vorpal' }, -- war rdm pld drk blu run
  { 'battle 1 9',  'ws', 'Swift Blade',    't', 'Swift' },  -- pld run
  { 'battle 1 9',  'ws', 'Savage Blade',   't', 'Savage' }, -- war rdm pld drk blu cor run sub
  -- Fire
  -- { 'battle 1 5',  'ws', 'Burning Blade',    't', 'Burning' },
  -- { 'battle 1 5',  'ws', 'Red Lotus Blade',  't', 'RLotus' }, -- war rdm pld drk blu
  -- Light
  -- { 'battle 1 6',  'ws', 'Shining Blade',    't', 'Shining' },
  -- { 'battle 1 6',  'ws', 'Seraph Blade',     't', 'Seraph' },   -- war rdm pld drk blu run sub
  -- Specials
  -- { 'battle 1 5',  'ws', 'Sanguine Blade',   't', 'Sanguine' }, -- war rdm pld drk blu run
  -- Class Specific
  -- { 'battle 1 7',  'ws', 'Death Blossom',    't', 'D Blsm' },   -- rdm
  -- { 'battle 1 3',  'ws', 'Atonement',        't', 'Atone' }, -- pld
  -- { 'battle 1 7',  'ws', 'Expiacion',        't', 'Expiacn' },  -- blu
  -- Merit Point
  { 'battle 1 10', 'ws', 'Requiescat',     't', 'Requisct' }, -- war rdm pld drk sam blu cor run
  -- Empyrean (Abyssea only)  #9
  { 'battle 1 10', 'ws', 'Chant du Cygne', 't', 'duCygne' },
  -- Relic & Prime (only usable with specific weapon equips) #10
  -- { 'battle 1 10', 'ws', 'Knights of Round', 't', 'KotR' }, -- rdm pld blu relic
  -- { 'battle 1 10', 'ws', 'Imperator',        't', 'Imperator' },
  -- AoE Ws #11
  { 'battle 1 11', 'ws', 'Circle Blade',   't', 'Circle' },
  -- Stun WS #12
  { 'battle 1 12', 'ws', 'Flat Blade',     't', 'Flat' },
}

xivhotbar_keybinds_job['Great Sword'] = {
  -- Heavy Hit
  { 'battle 1 9',  'ws', 'Hard Slash',      't', 'Hard' },
  { 'battle 1 9',  'ws', 'Power Slash',     't', 'Power' },
  { 'battle 1 9',  'ws', 'Crescent Moon',   't', 'Crescent' },
  { 'battle 1 9',  'ws', 'Spinning Slash',  't', 'Spinning' }, -- run drk pld war
  { 'battle 1 9',  'ws', 'Ground Strike',   't', 'Ground' },
  -- Multi-Hit
  { 'battle 1 10', 'ws', 'Sickle Moon',     't', 'Sickle' },
  -- Ice
  { 'battle 1 11', 'ws', 'Frostbite',       't', 'Frostbite' },
  { 'battle 1 11', 'ws', 'Freezebite',      't', 'Freezebite' },
  -- Specials
  { 'battle 1 11', 'ws', 'Herculean Slash', 't', 'Herculean' },
  -- Class Specific
  { 'battle 1 11', 'ws', 'Dimidiation',     't', 'Dimidiation' }, -- run
  -- Merit Point
  { 'battle 1 10', 'ws', 'Resolution',      't', 'Resolutn' },    -- merit
  -- Empyrean (Abyssea only) #9
  { 'battle 1 10', 'ws', 'Torcleaver',      't', 'Torclvr' },     -- pld drk
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
  { 'battle 1 9',  'ws', 'Avalanche Axe', 't', 'Avlnche' },
  { 'battle 1 9',  'ws', 'Spinning Axe',  't', 'Spinning' }, -- war drk run bst
  -- { 'battle 1 1',  'ws', 'Calamity',      't', 'Calamity' }, -- war bst
  -- Multi-Hit
  { 'battle 1 10', 'ws', 'Raging Axe',    't', 'Raging' },
  { 'battle 1 10', 'ws', 'Rampage',       't', 'Rampage' },
  { 'battle 1 10', 'ws', 'Decimation',    't', 'Decimate' }, -- war drk bst rng run
  -- Wind
  -- { 'battle 1 11',  'ws', 'Gale Axe',      't', 'Gale' },
  -- Specials
  -- { 'battle 1 4',  'ws', 'Mistral Axe',   't', 'Mistral' },   -- war bst
  -- Class Specific
  -- { 'battle 1 5',  'ws', 'Primal Rend',   't', 'Primal' },    -- bst
  -- Merit Point
  { 'battle 1 10', 'ws', 'Ruinator',      't', 'Ruinator' }, -- war drk bst rng run
  -- Empyrean (Abyssea only)  #9
  -- { 'battle 1 9',  'ws', 'Cloudsplitter', 't', 'Cloudsplt' }, -- war bst
  -- Relic & Prime (only usable with specific weapon equips) #10
  -- { 'battle 1 10', 'ws', 'Onslaught',     't', 'Onslaught' }, -- bst relic
  -- { 'battle 1 10', 'ws', 'Blitz',         't', 'Blitz' },     -- bst
  -- Bind WS #11
  { 'battle 1 11', 'ws', 'Bora Axe',      't', 'Bora' }, -- war drk run bst
  -- Bind WS #12
  { 'battle 1 12', 'ws', 'Smash Axe',     't', 'Smash' },
}

xivhotbar_keybinds_job['Great Axe'] = {
  -- Heavy Hit
  { 'battle 1 9',  'ws', 'Iron Tempest',  't', 'Iron' },
  { 'battle 1 9',  'ws', 'Keen Edge',     't', 'Keen' },
  { 'battle 1 9',  'ws', 'Steel Cyclone', 't', 'Steel' }, -- war drk run
  -- Multi-Hit
  { 'battle 1 10', 'ws', 'Sturmwind',     't', 'Sturm' },
  { 'battle 1 10', 'ws', 'Raging Rush',   't', 'Raging' }, -- war
  -- Elements
  -- none
  -- Specials
  { 'battle 1 11', 'ws', 'Shield Break',  't', 'Shld' },
  { 'battle 1 11', 'ws', 'Armor Break',   't', 'Armr' },
  -- { 'battle 1 11',  'ws', 'Weapon Break',     't', 'Wpn' },
  -- { 'battle 1 5',  'ws', 'Full Break',       't', 'Full' },        -- war
  -- Class Specific
  -- { 'battle 1 6',  'ws', "King's Justice",   't', "King" },        -- war
  -- Merit Point
  { 'battle 1 11', 'ws', 'Upheaval',      't', 'Upheaval' }, -- war drk run
  -- Empyrean (Abyssea only)  #9
  -- { 'battle 1 11',  'ws', "Ukko's Fury",      't', "Ukko's Fury" }, -- war
  -- Relic & Prime (only usable with specific weapon equips) #10
  -- { 'battle 1 11', 'ws', 'Metatron Torment', 't', 'Meta' },        -- war
  -- { 'battle 1 11', 'ws', 'Disaster',         't', 'Distr' },       -- war
  -- AoE Ws #11
  { 'battle 1 12', 'ws', 'Fell Cleave',   't', 'FellClv' }, -- war drk run
  -- Stun WS #12
  -- none
}

return xivhotbar_keybinds_job
