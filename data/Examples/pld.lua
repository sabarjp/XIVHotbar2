-- Load and initialize the include file.
xivhotbar_keybinds_job['Base'] = {
  --Hotbar #1
  -- Weaponskills; leave blank
  { 'battle 1 1',  'ja', 'Shield Bash',   't',     'Sh. Bash', 'ffxiv/pld/shield_bash' },
  { 'battle 1 2',  'ma', 'Flash',         'stnpc', 'Flash',    'ffxiv/pld/flash' },

  -- Hotbar #2
  --main job abilities
  { 'battle 2 1',  'ma', 'Cure',          'stpc',  'Cure1' },
  { 'battle 2 1',  'ma', 'Cure II',       'stpc',  'Cure2' },
  { 'battle 2 1',  'ma', 'Cure III',      'stpc',  'Cure3' },
  { 'battle 2 2',  'ma', 'Cure IV',       'stpc',  'Cure4' },
  { 'battle 2 3',  'ma', 'Cure V',        'stpc',  'Cure5' },
  { 'battle 2 4',  'ma', 'Reprisal',      'me',    'Reprise' },
  { 'battle 2 5',  'ma', 'Phalanx',       'me',    'Phalanx' },
  { 'battle 2 6',  'ma', 'Enlight',       'me',    'Enlight' },
  { 'battle 2 6',  'ma', 'Enlight II',    'me',    'Enlight2' },
  { 'battle 2 7',  'ma', 'Crusade',       'me',    'Crusade' },
  { 'battle 2 8',  'ma', 'Holy',          't',     'Holy' },
  { 'battle 2 8',  'ma', 'Holy II',       't',     'Holy2' },
  { 'battle 2 9',  'ma', 'Banish',        't',     'Banish' },
  { 'battle 2 9',  'ma', 'Banish II',     't',     'Banish2' },

  --Hotbar #3
  --sub job abilities; leave blank

  --Hotbar #4
  --utility or pet bar
  --12 is always 2-hour ability
  { 'battle 4 1',  'ja', 'Sentinel',      'me',    'Sentnl',   'ffxiv/pld/sentinel' },
  { 'battle 4 2',  'ja', 'Palisade',      'me',    'Palisade', 'ffxiv/pld/holy_shelltron' },
  { 'battle 4 3',  'ja', 'Cover',         'stpc',  'Cover',    'ffxiv/pld/cover' },
  { 'battle 4 4',  'ja', 'Rampart',       'me',    'Rampart',  'ffxiv/pld/rampart' },
  { 'battle 4 5',  'ja', 'Majesty',       'me',    'Majesty',  'ffxiv/pld/clemency' },
  { 'battle 4 6',  'ja', 'Divine Emblem', 'me',    'Divine',   'ffxiv/pld/divine_veil' },
  { 'battle 2 7',  'ja', 'Holy Circle',   'me',    'HolyCir',  'ffxiv/pld/holy_circle' },
  { 'battle 4 8',  'ja', 'Fealty',        'me',    'Fealty',   'ffxiv/pld/holy_spirit' }, -- merit
  { 'battle 4 9',  'ja', 'Chivalry',      'me',    'Chivalry', 'ffxiv/pld/expiacion' },   -- merit
  { 'battle 4 11', 'ja', 'Intervene',     't',     'Intervne', 'ffxiv/pld/intervene' },
  { 'battle 4 12', 'ja', 'Invincible',    'me',    'Invinc',   'ffxiv/pld/hallowed_ground' },

  -- Hotbar #5

  -- Hotbar #6
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
  { 'battle 3 7',  'ja', 'Quickstep',         't',     'Quick',    'ffxiv/dnc/en_avant' },
  { 'battle 3 8',  'ja', 'Box Step',          't',     'Box',      'ffxiv/dnc/bladeshower' },
  { 'battle 3 9',  'ja', 'Stutter Step',      't',     'Stutter',  'ffxiv/dnc/fountainfall' },
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
  { 'battle 3 1',  'ma', 'Cure',      'stpc',  'Cure 1' },
  { 'battle 3 1',  'ma', 'Cure II',   'stpc',  'Cure 2' },
  { 'battle 3 1',  'ma', 'Cure III',  'stpc',  'Cure 3' },
  { 'battle 3 1',  'ma', 'Cure IV',   'stpc',  'Cure 4' },

  { 'battle 3 1',  'ma', 'Refresh',   'stpc',  'Refresh' },
  { 'battle 3 2',  'ma', 'Haste',     'stpc',  'Haste' },
  { 'battle 3 3',  'ma', 'Dia',       'stnpc', 'Dia' },
  --{ 'battle 3 3',  'ma', 'Dia II',   'stnpc', 'Dia2' },

  { 'battle 3 4',  'ma', 'Paralyze',  't',     'Paralyze' },
  { 'battle 3 5',  'ma', 'Slow',      't',     'Slow' },
  { 'battle 3 6',  'ma', 'Silence',   'stnpc', 'Silence' },
  { 'battle 3 7',  'ma', 'Blind',     't',     'Slow' },
  { 'battle 3 8',  'ma', 'Bind',      'stnpc', 'Bind' },
  { 'battle 3 9',  'ma', 'Frazzle',   't',     'Frazzle' },
  { 'battle 3 10', 'ma', 'Stoneskin', 'me',    'StnSkin' },
  { 'battle 3 11', 'ma', 'Phalanx',   'me',    'Phalanx' },
}

-- WEAPONSKILL SETS (3-12)
xivhotbar_keybinds_job['Sword'] = {
  -- Heavy Hit
  { 'battle 1 3',  'ws', 'Fast Blade',       't', 'Fast' },
  { 'battle 1 3',  'ws', 'Spirits Within',   't', 'Spirits' },
  -- Multi-Hit
  { 'battle 1 4',  'ws', 'Vorpal Blade',     't', 'Vorpal' }, -- war rdm pld drk blu run
  { 'battle 1 4',  'ws', 'Swift Blade',      't', 'Swift' },  -- pld run
  { 'battle 1 4',  'ws', 'Savage Blade',     't', 'Savage' }, -- war rdm pld drk blu cor run sub
  -- Fire
  { 'battle 1 5',  'ws', 'Burning Blade',    't', 'Burning' },
  { 'battle 1 5',  'ws', 'Red Lotus Blade',  't', 'RLotus' }, -- war rdm pld drk blu
  -- Light
  { 'battle 1 6',  'ws', 'Shining Blade',    't', 'Shining' },
  { 'battle 1 6',  'ws', 'Seraph Blade',     't', 'Seraph' },   -- war rdm pld drk blu run sub
  -- Specials
  { 'battle 1 5',  'ws', 'Sanguine Blade',   't', 'Sanguine' }, -- war rdm pld drk blu run
  -- Class Specific
  -- { 'battle 1 7',  'ws', 'Death Blossom',    't', 'D Blsm' },   -- rdm
  { 'battle 1 3',  'ws', 'Atonement',        't', 'Atone' }, -- pld
  -- { 'battle 1 7',  'ws', 'Expiacion',        't', 'Expiacn' },  -- blu
  -- Merit Point
  { 'battle 1 4',  'ws', 'Requiescat',       't', 'Requisct' }, -- war rdm pld drk sam blu cor run
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
  { 'battle 1 3',  'ws', 'Hard Slash',      't', 'Hard' },
  { 'battle 1 3',  'ws', 'Power Slash',     't', 'Power' },
  { 'battle 1 3',  'ws', 'Crescent Moon',   't', 'Crescent' },
  { 'battle 1 3',  'ws', 'Spinning Slash',  't', 'Spinning' }, -- run drk pld war
  { 'battle 1 3',  'ws', 'Ground Strike',   't', 'Ground' },
  -- Multi-Hit
  { 'battle 1 4',  'ws', 'Sickle Moon',     't', 'Sickle' },
  -- Ice
  { 'battle 1 5',  'ws', 'Frostbite',       't', 'Frostbite' },
  { 'battle 1 5',  'ws', 'Freezebite',      't', 'Freezebite' },
  -- Specials
  { 'battle 1 6',  'ws', 'Herculean Slash', 't', 'Herculean' },
  -- Class Specific
  -- { 'battle 1 5',  'ws', 'Dimidiation',     't', 'Dimidiation' }, -- run
  -- Merit Point
  { 'battle 1 4',  'ws', 'Resolution',      't', 'Resolutn' }, -- merit
  -- Empyrean (Abyssea only) #9
  { 'battle 1 9',  'ws', 'Torcleaver',      't', 'Torclvr' },  -- pld drk
  -- Relic & Prime (only usable with specific weapon equips) #10
  { 'battle 1 10', 'ws', 'Scourge',         't', 'Scourge' },  -- war pld drk run relic
  { 'battle 1 10', 'ws', 'Fimbulvetr',      't', 'Fimbulvetr' },
  -- AoE Ws #11
  -- none
  -- Sleep WS #12
  { 'battle 1 12', 'ws', 'Shockwave',       't', 'Shockwave' },
}

xivhotbar_keybinds_job['Club'] = {
  -- Heavy Hit
  { 'battle 1 3',  'ws', 'True Strike',    't', 'True' },
  { 'battle 1 3',  'ws', 'Judgment',       't', 'Judgment' }, -- war whm pld drk sam blu geo
  -- Multi-Hit
  -- { 'battle 1 4',  'ws', 'Hexa Strike',    't', 'Hexa' },     -- whm geo
  { 'battle 1 4',  'ws', 'Black Halo',     't', 'Bl Halo' }, -- war mnk whm blm pld smn blu sch geo
  -- Light
  { 'battle 1 5',  'ws', 'Shining Strike', 't', 'Shining' },
  { 'battle 1 5',  'ws', 'Seraph Strike',  't', 'Seraph' },  -- war whm pld drk sam blu geo
  { 'battle 1 5',  'ws', 'Flash Nova',     't', 'Fl Nova' }, -- war whm pld drk sam blu geo
  -- Specials
  { 'battle 1 6',  'ws', 'Skullbreaker',   't', 'Skullbrk' },
  { 'battle 1 7',  'ws', 'Starlight',      't', 'Star' },
  { 'battle 1 7',  'ws', 'Moonlight',      't', 'Moon' }, -- war whm pld drk sam blu geo
  -- Class Specific
  -- { 'battle 1 6',  'ws', 'Mystic Boon',    't', 'Mystic' },   -- whm only
  -- { 'battle 1 6',  'ws', 'Exudation',      't', 'Exuda' },    -- geo
  -- Merit Point
  { 'battle 1 8',  'ws', 'Realmrazer',     't', 'Realmrzr' }, -- war mnk whm blm pld smn blu sch geo
  -- Empyrean (Abyssea only)  #9
  -- { 'battle 1 9',  'ws', 'Dagan',          't', 'Dagan' },    -- whm
  -- Relic & Prime (only usable with specific weapon equips) #10
  -- { 'battle 1 10', 'ws', 'Randgrith',      't', 'Randgrt' },  -- whm sch geo relic
  -- { 'battle 1 10', 'ws', 'Dagda',          't', 'Dagda' },    -- whm geo recc
  -- AoE Ws #11
  -- none
  -- Stun WS #12
  { 'battle 1 12', 'ws', 'Brainshaker',    't', 'Brainshkr' },
}

xivhotbar_keybinds_job['Staff'] = {
  -- Heavy Hit
  { 'battle 1 3',  'ws', 'Heavy Swing',   't', 'Heavy' },
  { 'battle 1 3',  'ws', 'Full Swing',    't', 'Full' },
  { 'battle 1 3',  'ws', 'Retribution',   't', 'Retrb' }, -- war mnk whm blm pld brd drg smn sch geo
  -- Multi-Hit
  -- shattersoul
  -- Elements
  { 'battle 1 5',  'ws', 'Rock Crusher',  't', 'Rock' },
  { 'battle 1 5',  'ws', 'Starburst',     't', 'Starbrst' },
  { 'battle 1 5',  'ws', 'Sunburst',      't', 'Sunbrst' }, -- war mnk whm pld geo
  -- Specials
  { 'battle 1 6',  'ws', 'Shell Crusher', 't', 'Shell' },
  { 'battle 1 7',  'ws', 'Spirit Taker',  't', 'Spirit' },
  -- Class Specific
  -- { 'battle 1 5',  'ws', 'Garland of Bliss', 't', 'Garland' }, -- smn
  -- { 'battle 1 5',  'ws', 'Omniscience',      't', 'Omnisc' },  -- sch
  -- { 'battle 1 5',  'ws', 'Vidohunir',        't', 'Vidoh' },   -- blm
  -- Merit Point
  { 'battle 1 4',  'ws', 'Shattersoul',   't', 'Shatter' },
  -- Empyrean (Abyssea only)  #9
  -- { 'battle 1 9',  'ws', 'Myrkr',            't', 'Myrkr' },    -- blm smn sch
  -- Relic & Prime (only usable with specific weapon equips) #10
  -- { 'battle 1 10', 'ws', 'Gate of Tartarus', 't', 'Gate' },     -- blm smn relic
  -- { 'battle 1 10', 'ws', 'Oshala',           't', 'Oshala' },   -- blm smn sch
  -- AoE Ws #11
  { 'battle 1 11', 'ws', 'Earth Crusher', 't', 'Crusher' },  -- war mnk whm pld geo
  { 'battle 1 11', 'ws', 'Cataclysm',     't', 'Catcylsm' }, -- war mnk whm pld geo
  -- Stun WS #12
  -- none
}

return xivhotbar_keybinds_job
