-- Load and initialize the include file.
xivhotbar_keybinds_job['Base'] = {
  -- Hotbar #1 Primary JAs
  { 'battle 1 1',  'ja', 'Deploy',           't',  'Fight',    'ffxiv/mch/rook_overload' },
  { 'battle 1 2',  'ja', 'Retrieve',         't',  'Retrieve', 'ffxiv/mch/pile_bunker' },

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
  { 'battle 4 12', 'ja', 'Overdrive',        'me', 'O.Drive',  '2HR',                          'ffxiv/pic/polishing_hammer' },

  -- Hotbar #5

  -- Hotbar #6

}

-- SUBJOBS
xivhotbar_keybinds_job['WHM'] = {
  -- Some spells moved to General example instead:
  -- Teleports / Recalls / Raises / Re-Raises
  -- Protect(ra) / Shell(ra)
  -- Aquaveil
  -- Sneak / Invisible / Deodorize
  -- Job Abilities
  { 'battle 4 9',  'ja', 'Divine Seal', 'me',    'Divine',   'ffxiv/whm/divine_benison' },
  -- Enfeeblement
  -- {'battle 3 2', 'ma', 'Paralyze', 'stnpc', 'Para','ffxiv/other/paralyze'},
  -- {'battle 3 3', 'ma', 'Slow', 'stnpc', 'Slow','ffxiv/other/slow'},
  -- {'battle 3 4', 'ma', 'Silence', 'stnpc', 'Silence','ffxiv/role/interject'},
  -- {'battle 3 1', 'ma', 'Dia II', 'stnpc', 'Dia II', 'Dia','ffxiv/whm/dia'},
  -- {'battle 3 1', 'ma', 'Dia', 'stnpc', 'Dia','ffxiv/whm/dia'},
  -- {'battle 3 9', 'ma', 'Repose', 'stnpc', 'Repose','ffxiv/role/repose'},
  { 'battle 4 2',  'ma', 'Flash',       'stnpc', 'Flash',    'ffxiv/pld/flash' },
  -- Barspells
  -- {'battle 3 1', 'ma', 'Barsleepra', 'me', 'Sleepra', ''},
  -- {'battle 3 2', 'ma', 'Barpoisonra', 'me', 'Poisonra', ''},
  -- {'battle 3 3', 'ma', 'Barparalyzra', 'me', 'Paralyzra', ''},
  -- {'battle 3 1', 'ma', 'Barstonra', 'me', 'Stonra', 'Barstonra'},
  -- {'battle 3 2', 'ma', 'Barwatera', 'me', 'Watera', 'Barwatera'},
  -- {'battle 3 3', 'ma', 'Baraera', 'me', 'Aera', 'Baraera'},
  -- {'battle 3 4', 'ma', 'Barfira', 'me', 'Fira', 'Barfira'},
  -- {'battle 3 4', 'ma', 'Barblindra', 'me', 'Blindra', ''},
  -- {'battle 3 5', 'ma', 'Barblizzara', 'me', 'Blizzara', 'Barblizzara'},
  -- {'battle 3 5', 'ma', 'Barsilencera', 'me', 'Silencera'},
  -- {'battle 3 6', 'ma', 'Barthundra', 'me', 'Thundra', 'Barthundra'},
  -- {'battle 3 6', 'ma', 'Barvira', 'me', 'Vira'},
  -- {'battle 3 9', 'ma', 'Barpetra', 'me', 'Petra'},
  -- Atk
  -- {'battle 3 9', 'ma', 'Holy', 'stnpc', 'Holy','ffxiv/whm/holy'}, -- mastery
  -- Regen
  { 'battle 4 11', 'ma', 'Regen II',    'stpc',  'Regen2',   'ffxiv/whm/regen' },
  { 'battle 4 11', 'ma', 'Regen',       'stpc',  'Regen',    'ffxiv/whm/regen' },
  -- Cure
  { 'battle 4 1',  'ma', 'Cure IV',     'stpc',  'Cure4',    'ffxiv/sch/physick' },
  { 'battle 4 1',  'ma', 'Cure III',    'stpc',  'Cure3',    'ffxiv/whm/cure_III' },
  { 'battle 4 1',  'ma', 'Cure II',     'stpc',  'Cure2',    'ffxiv/whm/cure_II' },
  { 'battle 4 1',  'ma', 'Cure',        'stpc',  'Cure',     'ffxiv/whm/cure' },
  -- Cura
  -- {'battle 1 10', 'ma', 'Cura', 'me', 'Cura','ffxiv/whm/assize'},
  -- Curaga
  { 'battle 4 10', 'ma', 'Curaga III',  'stpc',  'Curaga3',  'ffxiv/whm/dia',           'ffxiv/whm/medica_III' }, -- mastery
  { 'battle 4 10', 'ma', 'Curaga II',   'stpc',  'Curaga2',  'ffxiv/whm/medica_II' },
  { 'battle 4 10', 'ma', 'Curaga',      'stpc',  'Curaga',   'ffxiv/whm/medica' },
  -- Supportive
  { 'battle 4 3',  'ma', 'Poisona',     'stpc',  'Poisona',  'ffxiv/ast/003114' },
  { 'battle 4 4',  'ma', 'Paralyna',    'stpc',  'Paralyna', 'ffxiv/ast/003113' },
  { 'battle 4 5',  'ma', 'Blindna',     'stpc',  'Blindna',  'ffxiv/ast/003147' },
  -- {'battle 3 4', 'ma', 'Silena', 'stpc', 'Silena','ffxiv/ast/003111'},
  -- {'battle 3 6', 'ma', 'Blink', 'me', 'Blink','ffxiv/whm/blink'},
  -- {'battle 3 7', 'ma', 'Stoneskin', 'me', 'StnSkin','ffxiv/whm/stoneskin'},
  { 'battle 4 6',  'ma', 'Cursna',      'stpc',  'Cursna',   'ffxiv/ast/003146' },
  { 'battle 4 7',  'ma', 'Erase',       'stpc',  'Erase',    'ffxiv/role/erase' },
  -- {'battle 3 6', 'ma', 'Viruna', 'stpc', 'Viruna','ffxiv/ast/003112'},
  -- {'battle 3 4', 'ma', 'Stona', 'stpc', 'Stona','ffxiv/ast/003115'},
  { 'battle 4 12', 'ma', 'Haste',       'stpc',  'Haste',    'ffxiv/sge/krasis' },
  -- {'battle 3 9', 'ma', 'Auspice', 'me', 'Ausp','ffxiv/whm/temperance'},  -- mastery
}

xivhotbar_keybinds_job['NIN'] = {
  -- Shadows
  { 'battle 4 1',  'ma', 'Utsusemi: Ichi', 'me',    'Utsu:Ichi', 'ffxiv/nin/dream_within_a_dream' },
  { 'battle 4 2',  'ma', 'Utsusemi: Ni',   'me',    'Utsu:Ni',   'ffxiv/nin/phantom_kamaitachi' },
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
  { 'battle 4 3',  'ma', 'Kurayami: Ichi', 'stnpc', 'Kura',      'ffxiv/blu/glower' },      -- blind
  { 'battle 4 4',  'ma', 'Hojo: Ni',       't',     'Hojo',      'ffxiv/ast/redraw' },      -- slow
  { 'battle 4 4',  'ma', 'Hojo: Ichi',     't',     'Hojo',      'ffxiv/ast/redraw' },      -- slow
  { 'battle 4 5',  'ma', 'Dokumori: Ichi', 'stnpc', 'Doku',      'ffxiv/blu/exuviation' },  -- poison
  { 'battle 4 6',  'ma', 'Jubaku: Ichi',   'stnpc', 'Jubaku',    'ffxiv/blu/faze' },        -- paralyze
  -- Stances
  { 'battle 4 11', 'ja', 'Yonin',          'me',    'Yonin',     'ffxiv/nin/shade_shift' }, -- tanky
  { 'battle 4 12', 'ja', 'Innin',          'me',    'Innin',     'ffxiv/nin/assassinate' }, -- dps
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
  { 'battle 4 10', 'ja', 'Haste Samba',       'me',    'Haste',    'ffxiv/dnc/pirouette' },
  { 'battle 4 11', 'ja', 'Drain Samba',       'me',    'Drain',    'ffxiv/dnc/emboite' },
  { 'battle 4 11', 'ja', 'Drain Samba II',    'me',    'Drain2',   'ffxiv/dnc/emboite' },
  -- {'battle 3 3', 'ja', 'Aspir Samba', 'me', 'Aspir','ffxiv/dnc/jete'},
  -- Waltzes
  { 'battle 4 1',  'ja', 'Curing Waltz',      'stpc',  'CurW',     'ffxiv/dnc/curing_waltz' },
  { 'battle 4 1',  'ja', 'Curing Waltz II',   'stpc',  'CurW2',    'ffxiv/dnc/curing_waltz' },
  { 'battle 4 1',  'ja', 'Curing Waltz III',  'stpc',  'CurW3',    'ffxiv/dnc/curing_waltz' },
  { 'battle 4 2',  'ja', 'Divine Waltz',      'stpc',  'Divine',   'ffxiv/dnc/improvised_finish' },
  { 'battle 4 3',  'ja', 'Healing Waltz',     'stpc',  'Healing',  'ffxiv/dnc/shield_samba' },
  { 'battle 4 12', 'ja', 'Contradance',       'me',    'Contra',   'ffxiv/dnc/tillana' }, -- mastery
  -- Steps
  { 'battle 4 4',  'ja', 'Quickstep',         'stnpc', 'Quick',    'ffxiv/dnc/en_avant' },
  { 'battle 4 5',  'ja', 'Box Step',          'stnpc', 'Box',      'ffxiv/dnc/bladeshower' },
  -- {'battle 3 9', 'ja', 'Stutter Step', 'stnpc', 'Stutter','ffxiv/dnc/fountainfall'},
  -- Flourishes
  { 'battle 4 6',  'ja', 'Animated Flourish', 'stnpc', 'Voke',     'ffxiv/dnc/closed_position' },
  { 'battle 4 7',  'ja', 'Violent Flourish',  'stnpc', 'Stun',     'ffxiv/dnc/starfall_dance' },
  { 'battle 4 8',  'ja', 'Reverse Flourish',  'me',    'Reverse',  'ffxiv/dnc/reverse_cascade' },
  { 'battle 4 9',  'ja', 'Building Flourish', 'me',    'Building', 'ffxiv/dnc/flourish' },
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

xivhotbar_keybinds_job['RUN'] = {
  { 'battle 4 1',  'ja', 'Vallation', 'me', 'Vall.' },
  { 'battle 4 2',  'ja', 'Pflug',     'me', 'Pflug' },
  { 'battle 4 3',  'ja', 'Ignis',     'me', 'Fire' },
  { 'battle 4 4',  'ja', 'Gelus',     'me', 'Ice' },
  { 'battle 4 5',  'ja', 'Flabra',    'me', 'Wind' },
  { 'battle 4 6',  'ja', 'Tellus',    'me', 'Earth' },
  { 'battle 4 7',  'ja', 'Sulpor',    'me', 'Thundr' },
  { 'battle 4 8',  'ja', 'Unda',      'me', 'Water' },
  { 'battle 4 9',  'ja', 'Lux',       'me', 'Light' },
  { 'battle 4 10', 'ja', 'Tenebrae',  'me', 'Dark' },
}

xivhotbar_keybinds_job['COR'] = {
  { 'battle 4 1',  'ja', "Double-Up",      'me', 'Dbl Up', 'ffxiv/ast/play' },
  { 'battle 4 2',  'ja', "Corsair's Roll", 'me', 'COR',    'classes/ast' }, -- exp
  { 'battle 4 3',  'ja', "Ninja Roll",     'me', 'NIN',    'classes/nin' }, -- eva
  { 'battle 4 4',  'ja', "Hunter's Roll",  'me', 'HUN',    'classes/acr' }, -- acc & ra acc
  { 'battle 4 5',  'ja', "Chaos Roll",     'me', 'CHS',    'classes/rpr' }, -- phys atk
  { 'battle 4 7',  'ja', "Magus's Roll",   'me', 'MGS',    'classes/whm' }, -- mag def
  -- {'battle 3 7', 'ja', "Healer's Roll", 'me', 'HLR','classes/hlr'}, -- cure potency
  { 'battle 4 11', 'ja', "Drachen Roll",   'me', 'DRC',    'classes/lnc' }, -- pet & ra acc
  -- {'battle 3 9', 'ja', "Choral Roll", 'me', 'CRL','classes/brd'}, -- spell interrupt
  -- {'battle 3 10', 'ja', "Monk's Roll", 'me', 'MNK','classes/mnk'}, -- subtle blow
  { 'battle 4 10', 'ja', "Beast Roll",     'me', 'BST',    'classes/war' }, -- pet atk
  { 'battle 4 3',  'ja', "Samurai Roll",   'me', 'SAM',    'classes/sam' }, -- store TP
  -- {'battle 3 3', 'ja', "Quick Draw", 'me', 'QkDraw','classes/mch'},
  -- {'battle 4 9', 'ja', "Evoker's Roll", 'me', 'EVO','classes/smn'}, -- MP regen
  { 'battle 4 6',  'ja', "Rogue's Roll",   'me', 'RGE',    'classes/rge' }, -- crit
  -- {'battle 3 4', 'ja', "Warlock's Roll", 'me', 'WLK','classes/thm'}, -- magic acc
  { 'battle 4 2',  'ja', "Fighter's Roll", 'me', 'FTR',    'classes/mar' }, -- double atk
  -- Mastery only
  { 'battle 3 9',  'ja', "Puppet Roll",    'me', 'PUP',    'classes/pug' }, -- pet matk & pet macc
  { 'battle 4 8',  'ja', "Gallant's Roll", 'me', 'GAL',    'classes/pld' }, -- def
  -- {'battle 3 8', 'ja', "Wizard's Roll", 'me', 'WIZ','classes/blm'}, -- matk
  { 'battle 4 12', 'ja', "Random Deal",    'me', 'Randm',  'ffxiv/ast/draw' },
}

xivhotbar_keybinds_job['THF'] = {
  { 'battle 4 3', 'ja', 'Steal',        't',  'Steal', 'ffxiv/nin/dream_within_a_dream' },
  { 'battle 4 1', 'ja', 'Sneak Attack', 'me', 'SAtk',  'ffxiv/nin/spinning_edge' },
  { 'battle 4 6', 'ja', 'Flee',         'me', 'Flee',  'ffxiv/nin/role/peloton' },
  { 'battle 4 2', 'ja', 'Trick Attack', 'me', 'TAtk',  'ffxiv/nin/trick_attack' },
  { 'battle 4 4', 'ja', 'Mug',          't',  'Mug',   'ffxiv/nin/mug' },
  { 'battle 4 5', 'ja', 'Hide',         'me', 'Hide',  'ffxiv/nin/hide' },
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
