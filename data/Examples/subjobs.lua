-- This file has no effect on addon functions
-- This is a repository of subjob setups others might find useful
-- Every ability/spell is included in each setup
-- Comment out skills not needed by your class

-- Remember to modify bar-action locations to fit your needs!

-- ================================================================================
--                                 SOLO  JOBS
--            Almost every job has these listed because of their popularity
-- ================================================================================

xivhotbar_keybinds_job['THF'] = {
  { 'battle 3 1', 'ja', 'Steal',        't',  'Steal', 'ffxiv/nin/dream_within_a_dream' },
  { 'battle 3 2', 'ja', 'Sneak Attack', 'me', 'SAtk',  'ffxiv/nin/spinning_edge' },
  { 'battle 3 3', 'ja', 'Flee',         'me', 'Flee',  'ffxiv/nin/forked_raiju' },
  { 'battle 3 4', 'ja', 'Trick Attack', 'me', 'TAtk',  'ffxiv/nin/trick_attack' },
  { 'battle 3 5', 'ja', 'Mug',          't',  'Mug',   'ffxiv/nin/mug' },
  { 'battle 3 6', 'ja', 'Hide',         'me', 'Hide',  'ffxiv/nin/hide' },
}

xivhotbar_keybinds_job['COR'] = {
  -- Rolls
  { 'battle 3 1',  'ja',    "Double-Up",            'me', 'Dbl Up',  'ffxiv/ast/play' },
  { 'battle 3 2',  'ja',    "Corsair's Roll",       'me', 'COR',     'classes/ast' }, -- exp
  { 'battle 3 3',  'ja',    "Ninja Roll",           'me', 'NIN',     'classes/nin' }, -- eva
  { 'battle 3 4',  'ja',    "Hunter's Roll",        'me', 'HUN',     'classes/acr' }, -- acc & ra acc
  { 'battle 3 5',  'ja',    "Chaos Roll",           'me', 'CHS',     'classes/rpr' }, -- phys atk
  { 'battle 3 6',  'ja',    "Magus's Roll",         'me', 'MGS',     'classes/whm' }, -- mag def
  { 'battle 3 7',  'ja',    "Healer's Roll",        'me', 'HLR',     'classes/hlr' }, -- cure potency
  { 'battle 3 8',  'ja',    "Drachen Roll",         'me', 'DRC',     'classes/lnc' }, -- pet & ra acc
  { 'battle 3 9',  'ja',    "Choral Roll",          'me', 'CRL',     'classes/brd' }, -- spell interrupt
  { 'battle 3 10', 'ja',    "Monk's Roll",          'me', 'MNK',     'classes/mnk' }, -- subtle blow
  { 'battle 3 11', 'ja',    "Beast Roll",           'me', 'BST',     'classes/war' }, -- pet atk
  { 'battle 3 12', 'ja',    "Samurai Roll",         'me', 'SAM',     'classes/sam' }, -- store TP
  { 'battle 3 2',  'ja',    "Evoker's Roll",        'me', 'EVO',     'classes/smn' }, -- MP regen
  { 'battle 3 3',  'ja',    "Rogue's Roll",         'me', 'RGE',     'classes/rge' }, -- crit
  { 'battle 3 4',  'ja',    "Warlock's Roll",       'me', 'WLK',     'classes/thm' }, -- magic acc
  { 'battle 3 5',  'ja',    "Fighter's Roll",       'me', 'FTR',     'classes/mar' }, -- double atk
  -- Mastery only
  { 'battle 3 6',  'ja',    "Puppet Roll",          'me', 'PUP',     'classes/pug' }, -- pet matk & pet macc
  { 'battle 3 7',  'ja',    "Gallant's Roll",       'me', 'GAL',     'classes/pld' }, -- def
  { 'battle 3 8',  'ja',    "Wizard's Roll",        'me', 'WIZ',     'classes/blm' }, -- matk
  { 'battle 3 9',  'ja',    "Random Deal",          'me', 'Randm',   'ffxiv/ast/draw' },
  -- Quick Draw
  { 'battle 5 3',  'ja',    "Light Shot",           't',  'Light',   'ffxiv/ast/003146' },
  { 'battle 5 4',  'ja',    "Earth Shot",           't',  'Earth',   'ffxiv/ast/003115' },
  { 'battle 5 5',  'ja',    "Water Shot",           't',  'Water',   'ffxiv/ast/003114' },
  { 'battle 5 6',  'ja',    "Wind Shot",            't',  'Wind',    'ffxiv/ast/003111' },
  { 'battle 5 9',  'ja',    "Dark Shot",            't',  'Dark',    'ffxiv/ast/003147' },
  { 'battle 5 10', 'ja',    "Fire Shot",            't',  'Fire',    'ffxiv/ast/003110' },
  { 'battle 5 11', 'ja',    "Ice Shot",             't',  'Ice',     'ffxiv/ast/003113' },
  { 'battle 5 12', 'ja',    "Thunder Shot",         't',  'Thunder', 'ffxiv/ast/003112' },
  -- Ranged Attack
  { 'battle 5 1',  'input', '/ra <t>',              '',   'RA',      'ffxiv/mch/gauss_round' },
  { 'battle 5 7',  'input', '/equip ammo "Bullet"', '',   'Ammo',    'ffxiv/mch/slug_shot' },
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

-- NIN dual wield or SAM 2h
xivhotbar_keybinds_job['NIN'] = {
  -- Shadows
  { 'battle 3 1',  'ma', 'Utsusemi: Ichi', 'me',    'Utsu:Ichi', 'ffxiv/nin/dream_within_a_dream' },
  { 'battle 3 2',  'ma', 'Utsusemi: Ni',   'me',    'Utsu:Ni',   'ffxiv/nin/phantom_kamaitachi' },
  -- Elements
  { 'battle 3 7',  'ma', 'Katon: Ni',      'stnpc', 'Katon2',    'ffxiv/nin/katon' },  -- fire
  { 'battle 3 7',  'ma', 'Katon: Ichi',    'stnpc', 'Katon',     'ffxiv/nin/katon' },  -- fire
  { 'battle 3 8',  'ma', 'Suiton: Ni',     'stnpc', 'Suiton2',   'ffxiv/nin/suiton' }, -- water
  { 'battle 3 8',  'ma', 'Suiton: Ichi',   'stnpc', 'Suiton',    'ffxiv/nin/suiton' }, -- water
  { 'battle 3 9',  'ma', 'Doton: Ni',      'stnpc', 'Doton2',    'ffxiv/nin/doton' },  -- earth
  { 'battle 3 9',  'ma', 'Doton: Ichi',    'stnpc', 'Doton',     'ffxiv/nin/doton' },  -- earth
  { 'battle 3 10', 'ma', 'Hyoton: Ni',     'stnpc', 'Hyoton2',   'ffxiv/nin/hyoton' }, -- ice
  { 'battle 3 10', 'ma', 'Hyoton: Ichi',   'stnpc', 'Hyoton',    'ffxiv/nin/hyoton' }, -- ice
  { 'battle 3 11', 'ma', 'Huton: Ni',      'stnpc', 'Huton2',    'ffxiv/nin/huton' },  -- wind
  { 'battle 3 11', 'ma', 'Huton: Ichi',    'stnpc', 'Huton',     'ffxiv/nin/huton' },  -- wind
  { 'battle 3 12', 'ma', 'Raiton: Ni',     'stnpc', 'Raiton2',   'ffxiv/nin/raiton' }, -- thunder
  { 'battle 3 12', 'ma', 'Raiton: Ichi',   'stnpc', 'Raiton',    'ffxiv/nin/raiton' }, -- thunder

  -- Enfeeblement
  { 'battle 3 3',  'ma', 'Kurayami: Ichi', 'stnpc', 'Kura',      'ffxiv/blu/glower' },      -- blind
  { 'battle 3 4',  'ma', 'Hojo: Ni',       'stnpc', 'Hojo',      'ffxiv/ast/redraw' },      -- slow
  { 'battle 3 4',  'ma', 'Hojo: Ichi',     'stnpc', 'Hojo',      'ffxiv/ast/redraw' },      -- slow
  { 'battle 3 5',  'ma', 'Dokumori: Ichi', 'stnpc', 'Doku',      'ffxiv/blu/exuviation' },  -- poison
  { 'battle 3 6',  'ma', 'Jubaku: Ichi',   'stnpc', 'Jubaku',    'ffxiv/blu/faze' },        -- paralyze
  -- Stances
  { 'battle 3 11', 'ja', 'Yonin',          'me',    'Yonin',     'ffxiv/nin/shade_shift' }, -- tanky
  { 'battle 3 12', 'ja', 'Innin',          'me',    'Innin',     'ffxiv/nin/assassinate' }, -- dps
}

xivhotbar_keybinds_job['SAM'] = {
  { 'battle 3 6', 'ja', 'Warding Circle', 'me', 'Warding', 'ffxiv/gnb/demon_slaughter' },
  { 'battle 3 5', 'ja', 'Third Eye',      'me', '3rd Eye', 'ffxiv/sam/third_eye' },
  { 'battle 3 1', 'ja', 'Hasso',          'me', 'Hasso',   'ffxiv/sam/ikishoten' }, --2h
  { 'battle 3 2', 'ja', 'Meditate',       'me', 'Mdtate',  'ffxiv/sam/meditate' },
  { 'battle 3 4', 'ja', 'Seigan',         'me', 'Seigan',  'ffxiv/sam/tengentsu' }, --2h
  { 'battle 3 3', 'ja', 'Sekkanoki',      'me', 'Sekka',   'ffxiv/sam/higanbana' },
}

-- ================================================================================
--                                 MARTIAL JOBS
--                          Popular on physical classes
-- ================================================================================

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

xivhotbar_keybinds_job['DRG'] = {
  { 'battle 3 3', 'ja', 'Ancient Circle', 'me', 'Ancient', 'ffxiv/rpr/arcane_crest' },
  { 'battle 3 1', 'ja', 'Jump',           't',  'Jump',    'ffxiv/drg/jump' },
  { 'battle 3 2', 'ja', 'High Jump',      't',  'HiJump',  'ffxiv/drg/high_jump' },
  { 'battle 3 4', 'ja', 'Super Jump',     't',  'SuJump',  'ffxiv/drg/elusive_jump' }, -- mastery
}

xivhotbar_keybinds_job['DRK'] = {
  -- Abilities
  { 'battle 3 5', 'ja', 'Arcane Circle', 'me',    'Arcane',  'ffxiv/drk/salted_earth' },
  { 'battle 3 1', 'ja', 'Last Resort',   'me',    'LResort', 'ffxiv/drk/grit' },
  { 'battle 3 4', 'ja', 'Weapon Bash',   't',     'Bash',    'ffxiv/drk/shadow_wall' },
  { 'battle 3 2', 'ja', 'Souleater',     'me',    'SEater',  'ffxiv/drk/souleater' },
  { 'battle 3 3', 'ja', 'Consume Mana',  'me',    'Consume', 'ffxiv/drk/syphon_strike' }, -- mastery
  -- Enfeeblment
  { 'battle 3 8', 'ma', 'Poison II',     'stnpc', 'Poison2' },
  { 'battle 3 8', 'ma', 'Poison',        'stnpc', 'Poison' },
  { 'battle 3 8', 'ma', 'Poisonga',      'stnpc', 'Psnaga' },
  { 'battle 3 6', 'ma', 'Bio II',        'stnpc', 'Bio2' },
  { 'battle 3 6', 'ma', 'Bio',           'stnpc', 'Bio' },
  { 'battle 3 8', 'ma', 'Bind',          'stnpc', 'Bind' },
  { 'battle 3 7', 'ma', 'Sleep II',      'stnpc', 'Sleep2' }, -- mastery
  { 'battle 3 7', 'ma', 'Sleep',         'stnpc', 'Sleep' },
  { 'battle 3 8', 'ma', 'Stun',          't',     'Stun' },
  -- Absorbs
  { 'battle 3 7', 'ma', 'Drain',         'stnpc', 'Drain' },
  { 'battle 3 7', 'ma', 'Aspir',         'stnpc', 'Aspir' },
  { 'battle 3 7', 'ma', 'Absorb-MND',    'stnpc', 'Abs-MND' },
  { 'battle 3 7', 'ma', 'Absorb-CHR',    'stnpc', 'Abs-CHR' },
  { 'battle 3 7', 'ma', 'Absorb-VIT',    'stnpc', 'Abs-VIT' },
  { 'battle 3 7', 'ma', 'Absorb-AGI',    'stnpc', 'Abs-AGI' },
  { 'battle 3 7', 'ma', 'Absorb-INT',    'stnpc', 'Abs-INT' },
  { 'battle 3 7', 'ma', 'Absorb-DEX',    'stnpc', 'Abs-DEX' },
  { 'battle 3 7', 'ma', 'Absorb-STR',    'stnpc', 'Abs-STR' },
  { 'battle 3 7', 'ma', 'Absorb-TP',     'stnpc', 'Abs-TP' },
  -- Black Magic
  { 'battle 5 1', 'ma', 'Stone II',      'stnpc', 'Stone2' },
  { 'battle 5 1', 'ma', 'Stone',         'stnpc', 'Stone' },
  { 'battle 5 1', 'ma', 'Water II',      'stnpc', 'Water2' },
  { 'battle 5 1', 'ma', 'Water',         'stnpc', 'Water' },
  { 'battle 5 1', 'ma', 'Aero II',       'stnpc', 'Aero2' }, -- mastery
  { 'battle 5 1', 'ma', 'Aero',          'stnpc', 'Aero' },
  { 'battle 5 1', 'ma', 'Fire',          'stnpc', 'Fire' },
  { 'battle 5 1', 'ma', 'Blizzard',      'stnpc', 'Blizzard' },
  { 'battle 5 1', 'ma', 'Thunder',       'stnpc', 'Thunder' },
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

-- ================================================================================
--                                 CASTER JOBS
--                          Popular on magical classes
-- ================================================================================

xivhotbar_keybinds_job['RDM'] = {
  -- Abilities
  { 'battle 1 1',  'ja', 'Convert',       'me',    'Convert',   'ffxiv/rdm/magic_barrier' },
  -- Enspells
  { 'battle 6 7',  'ma', 'Enstone II',    'me',    'Enstone2' }, -- mastery
  { 'battle 6 7',  'ma', 'Enstone',       'me',    'Enstone' },
  { 'battle 6 8',  'ma', 'Enwater II',    'me',    'Enwater2' }, -- mastery
  { 'battle 6 8',  'ma', 'Enwater',       'me',    'Enwater' },
  { 'battle 6 9',  'ma', 'Enaero II',     'me',    'Enaero2' },  -- mastery
  { 'battle 6 9',  'ma', 'Enaero',        'me',    'Enaero' },
  { 'battle 6 10', 'ma', 'Enfire II',     'me',    'Enfire2' },  -- mastery
  { 'battle 6 10', 'ma', 'Enfire',        'me',    'Enfire' },
  { 'battle 6 11', 'ma', 'Enblizzard II', 'me',    'Enblizz2' }, -- mastery
  { 'battle 6 11', 'ma', 'Enblizzard',    'me',    'Enblizz' },
  { 'battle 6 12', 'ma', 'Enthunder II',  'me',    'Enthun2' },  -- mastery
  { 'battle 6 12', 'ma', 'Enthunder',     'me',    'Enthun' },
  --Enfeeblement
  { 'battle 2 4',  'ma', 'Dia II',        'stnpc', 'Dia2' },
  { 'battle 2 4',  'ma', 'Dia',           'stnpc', 'Dia' },
  { 'battle 2 4',  'ma', 'Diaga',         'stnpc', 'Diaga' },
  { 'battle 3 8',  'ma', 'Poison II',     'stnpc', 'Poison2' },
  { 'battle 3 8',  'ma', 'Poison',        'stnpc', 'Poison' },
  { 'battle 2 5',  'ma', 'Paralyze',      'stnpc', 'Paralyze' },
  { 'battle 2 9',  'ma', 'Blind',         'stnpc', 'Blind' },
  { 'battle 3 6',  'ma', 'Bio II',        'stnpc', 'Bio2' },
  { 'battle 3 6',  'ma', 'Bio',           'stnpc', 'Bio' },
  { 'battle 2 10', 'ma', 'Bind',          'stnpc', 'Bind' },
  { 'battle 2 6',  'ma', 'Slow',          'stnpc', 'Slow' },
  { 'battle 2 7',  'ma', 'Silence',       'stnpc', 'Silence' },
  { 'battle 2 7',  'ma', 'Gravity',       'stnpc', 'Gravity' },
  { 'battle 3 7',  'ma', 'Sleep II',      'stnpc', 'Sleep2' },
  { 'battle 3 7',  'ma', 'Sleep',         'stnpc', 'Sleep' },
  { 'battle 3 7',  'ma', 'Dispel',        'stnpc', 'Dispel' },
  { 'battle 3 7',  'ma', 'Distract',      'stnpc', 'Distract' },
  { 'battle 3 7',  'ma', 'Frazzle',       'stnpc', 'Frazzle' },
  -- White Magic
  { 'battle 1 1',  'ma', 'Cure IV',       'stpc',  'Cure 4' },
  { 'battle 1 1',  'ma', 'Cure III',      'stpc',  'Cure3' },
  { 'battle 1 1',  'ma', 'Cure II',       'stpc',  'Cure2' },
  { 'battle 1 1',  'ma', 'Cure',          'stpc',  'Cure' },
  { 'battle 2 1',  'ma', 'Regen',         'stpc',  'Regen' },
  -- Black Magic
  { 'battle 5 1',  'ma', 'Stone II',      'stnpc', 'Stone2' },
  { 'battle 5 1',  'ma', 'Stone',         'stnpc', 'Stone' },
  { 'battle 5 1',  'ma', 'Water II',      'stnpc', 'Water2' },
  { 'battle 5 1',  'ma', 'Water',         'stnpc', 'Water' },
  { 'battle 5 1',  'ma', 'Aero II',       'stnpc', 'Aero2' }, -- mastery
  { 'battle 5 1',  'ma', 'Aero',          'stnpc', 'Aero' },
  { 'battle 5 1',  'ma', 'Fire II',       'stnpc', 'Fire2' }, -- mastery
  { 'battle 5 1',  'ma', 'Fire',          'stnpc', 'Fire' },
  { 'battle 5 1',  'ma', 'Blizzard',      'stnpc', 'Blizzard' },
  { 'battle 5 1',  'ma', 'Thunder',       'stnpc', 'Thunder' },
  -- Buffs
  { 'battle 2 1',  'ma', 'Refresh',       'stpc',  'Refresh' },
  { 'battle 2 1',  'ma', 'Haste',         'stpc',  'Haste' },
  { 'battle 2 1',  'ma', 'Flurry',        'stpc',  'Flurry' },
  { 'battle 1 1',  'ma', 'Aquaveil',      'me',    'Aquaveil' },
  { 'battle 3 6',  'ma', 'Blink',         'me',    'Blink' },
  { 'battle 2 12', 'ma', 'Phalanx',       'me',    'Phalanx' },
  { 'battle 3 7',  'ma', 'Stoneskin',     'me',    'StnSkin' },
  { 'battle 5 7',  'ma', 'Blaze Spikes',  'me',    'BlzSpikes' },
  { 'battle 5 8',  'ma', 'Ice Spikes',    'me',    'IceSpikes' },
  -- Barspells
  { 'battle 5 7',  'ma', 'Barstone',      'me',    'BStone',    'Barstonra' },
  { 'battle 5 8',  'ma', 'Barwater',      'me',    'BWater',    'Barwatera' },
  { 'battle 5 9',  'ma', 'Baraero',       'me',    'BAero',     'Baraera' },
  { 'battle 5 10', 'ma', 'Barfire',       'me',    'BFire',     'Barfira' },
  { 'battle 5 11', 'ma', 'Barblizzard',   'me',    'BBlizzard', 'Barblizzara' },
  { 'battle 5 12', 'ma', 'Barthunder',    'me',    'BThunder',  'Barthundra' },
  { 'battle 6 5',  'ma', 'Barsleep',      'me',    'BSleep',    '' },
  { 'battle 6 6',  'ma', 'Barpoison',     'me',    'BPoison',   '' },
  { 'battle 6 7',  'ma', 'Barparalyze',   'me',    'BPara',     '' },
  { 'battle 6 8',  'ma', 'Barblind',      'me',    'BBlind',    '' },
  { 'battle 6 9',  'ma', 'Barsilence',    'me',    'BSilence',  '' },
  { 'battle 6 10', 'ma', 'Barvirus',      'me',    'BVirus',    '' },
  { 'battle 6 11', 'ma', 'Barpetrify',    'me',    'BPetri',    '' },
}

xivhotbar_keybinds_job['WHM'] = {
  -- Abilities
  { 'battle 3 9',  'ja', 'Divine Seal',  'me',    'Divine',    'ffxiv/whm/divine_benison' },
  -- Enfeeblement
  { 'battle 3 2',  'ma', 'Paralyze',     'stnpc', 'Para' },
  { 'battle 3 3',  'ma', 'Slow',         'stnpc', 'Slow' },
  { 'battle 3 4',  'ma', 'Silence',      'stnpc', 'Silence' },
  { 'battle 3 1',  'ma', 'Dia II',       'stnpc', 'Dia II' },
  { 'battle 3 1',  'ma', 'Dia',          'stnpc', 'Dia' },
  { 'battle 3 9',  'ma', 'Repose',       'stnpc', 'Repose' },
  { 'battle 3 9',  'ma', 'Flash',        'stnpc', 'Flash',     'ffxiv/pld/flash' },
  { 'battle 3 1',  'ma', 'Aquaveil',     'me',    'Aquaveil' },
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
  { 'battle 3 9',  'ma', 'Holy',         'stnpc', 'Holy' }, -- mastery
  -- Regen
  { 'battle 3 11', 'ma', 'Regen II',     'stpc',  'Regen2' },
  { 'battle 3 11', 'ma', 'Regen',        'stpc',  'Regen' },
  -- Cure
  { 'battle 3 10', 'ma', 'Cure IV',      'stpc',  'Cure4' },
  { 'battle 3 10', 'ma', 'Cure III',     'stpc',  'Cure3' },
  { 'battle 3 10', 'ma', 'Cure II',      'stpc',  'Cure2' },
  { 'battle 3 10', 'ma', 'Cure',         'stpc',  'Cure' },
  -- Cura
  { 'battle 1 10', 'ma', 'Cura',         'me',    'Cura' },
  -- Curaga
  { 'battle 3 12', 'ma', 'Curaga III',   'stpc',  'Curaga3' }, -- mastery
  { 'battle 3 12', 'ma', 'Curaga II',    'stpc',  'Curaga2' },
  { 'battle 3 12', 'ma', 'Curaga',       'stpc',  'Curaga' },
  -- Supportive
  { 'battle 3 1',  'ma', 'Poisona',      'stpc',  'Poisona' },
  { 'battle 3 2',  'ma', 'Paralyna',     'stpc',  'Paralyna' },
  { 'battle 3 3',  'ma', 'Blindna',      'stpc',  'Blindna' },
  { 'battle 3 4',  'ma', 'Silena',       'stpc',  'Silena' },
  { 'battle 3 6',  'ma', 'Blink',        'me',    'Blink' },
  { 'battle 3 7',  'ma', 'Stoneskin',    'me',    'StnSkin' },
  { 'battle 3 5',  'ma', 'Cursna',       'stpc',  'Cursna' },
  { 'battle 3 7',  'ma', 'Erase',        'stpc',  'Erase' },
  { 'battle 3 6',  'ma', 'Viruna',       'stpc',  'Viruna' },
  { 'battle 3 4',  'ma', 'Stona',        'stpc',  'Stona' },
  { 'battle 3 5',  'ma', 'Haste',        'stpc',  'Haste' },
  { 'battle 3 9',  'ma', 'Auspice',      'me',    'Ausp' }, -- mastery
}

-- ================================================================================
--                                  Scholar
--                            Must copy all three files
-- ================================================================================

xivhotbar_keybinds_job['SCH'] = {
  -- Abilities
  { 'battle 6 1', 'ja', 'Dark Arts',       'me',   'Dark',     'ffxiv/sch/ruin' },
  { 'battle 6 7', 'ja', 'Light Arts',      'me',   'Light',    'ffxiv/sch/ruin_II' },
  { 'battle 4 3', 'ja', 'Sublimation',     'me',   'Sublim',   'ffxiv/sch/aetherflow' },
  { 'battle 6 4', 'ja', 'Penury',          'me',   'Penury',   'ffxiv/sch/dissipation' },        -- shares A - reduce MP
  { 'battle 6 4', 'ja', 'Parsimony',       'me',   'Parsmy',   'ffxiv/sch/broil_IV' },           -- shares A - reduce MP
  { 'battle 6 5', 'ja', 'Celerity',        'me',   'Celrty',   'ffxiv/sch/expedient' },          -- shares B - reduce cast
  { 'battle 6 5', 'ja', 'Alacrity',        'me',   'Alacty',   'ffxiv/sch/deployment_tactics' }, -- shares B - reduce cast
  { 'battle 6 8', 'ja', 'Addendum: White', 'me',   'Add.Wht',  'ffxiv/sch/excogitation' },
  { 'battle 6 2', 'ja', 'Addendum: Black', 'me',   'Add.Blk',  'ffxiv/sch/recitation' },
  { 'battle 6 6', 'ja', 'Accession',       'me',   'Accssn',   'ffxiv/sch/protraction' },   -- shares C - extend
  { 'battle 6 6', 'ja', 'Manifestation',   'me',   'Manifst',  'ffxiv/sch/biolysis' },      -- shares C - extend
  { 'battle 6 9', 'ja', 'Rapture',         'me',   'Raptur',   'ffxiv/sch/art_of_war_II' }, -- shares D - mastery - potency
  { 'battle 6 9', 'ja', 'Ebullience',      'me',   'Ebull',    'ffxiv/sch/art_of_war' },    -- Shares D - mastery - potency
  -- Storms
  { 'battle 5 1', 'me', 'Sandstorm',       'stpc', 'Sand',     'ffxiv/whm/stone_II' },
  { 'battle 5 2', 'me', 'Rainstorm',       'stpc', 'Rain',     'ffxiv/whm/fluid_aura' },
  { 'battle 5 3', 'me', 'Windstorm',       'stpc', 'Wind',     'ffxiv/whm/aero_II' },
  { 'battle 5 4', 'me', 'Firestorm',       'stpc', 'Fire',     'ffxiv/blm/fire_IV' },
  { 'battle 5 5', 'me', 'Hailstorm',       'stpc', 'Hail',     'ffxiv/blm/blizzard_II' },
  { 'battle 5 6', 'me', 'Thunderstorm',    'stpc', 'Thdr',     'ffxiv/blm/thunder_IV' },
  { 'battle 5 7', 'me', 'Voidstorm',       'stpc', 'Void',     'ffxiv/ast/malefic_III' },
  { 'battle 5 8', 'me', 'Aurorastorm',     'stpc', 'Aurora',   'ffxiv/whm/glare' },
  -- Buffs (good in either art)
  { 'battle 4 1', 'ma', 'Blink',           'me',   'Blink' },
  { 'battle 4 2', 'ma', 'Stoneskin',       'me',   'Stoneskin' },
  { 'battle 4 1', 'ma', 'Aquaveil',        'me',   'Aquaveil' },
}

xivhotbar_keybinds_job['Light Arts'] = {
  -- White Magic
  { 'battle 1 4', 'ma', 'Cure IV',   'stpc', 'Cure4' }, -- mastery
  { 'battle 1 3', 'ma', 'Cure III',  'stpc', 'Cure3' },
  { 'battle 1 2', 'ma', 'Cure II',   'stpc', 'Cure2' },
  { 'battle 1 1', 'ma', 'Cure',      'stpc', 'Cure1' },
  { 'battle 1 8', 'ma', 'Regen III', 'stpc', 'Regen3' }, -- mastery
  { 'battle 1 8', 'ma', 'Regen II',  'stpc', 'Regen2' },
  { 'battle 1 8', 'ma', 'Regen',     'stpc', 'Regen' },
  -- Status Removal
  { 'battle 2 1', 'ma', 'Poisona',   'stpc', 'Poisona' },
  { 'battle 2 2', 'ma', 'Paralyna',  'stpc', 'Paralyna' },
  { 'battle 2 3', 'ma', 'Blindna',   'stpc', 'Blindna' },
  { 'battle 2 4', 'ma', 'Silena',    'stpc', 'Silena' },
  { 'battle 2 5', 'ma', 'Cursna',    'stpc', 'Cursna' },
  { 'battle 2 6', 'ma', 'Viruna',    'stpc', 'Viruna' },
  { 'battle 2 7', 'ma', 'Stona',     'stpc', 'Stona' }, -- mastery
  { 'battle 2 8', 'ma', 'Erase',     'stpc', 'Erase' },
}

xivhotbar_keybinds_job['Dark Arts'] = {
  -- Black Magic
  { 'battle 1 1',  'ma', 'Stone III',    'stnpc', 'Stone3' }, -- mastery
  { 'battle 1 1',  'ma', 'Stone II',     'stnpc', 'Stone2' },
  { 'battle 1 1',  'ma', 'Stone',        'stnpc', 'Stone' },
  { 'battle 1 2',  'ma', 'Water III',    'stnpc', 'Water3' }, -- mastery
  { 'battle 1 2',  'ma', 'Water II',     'stnpc', 'Water2' },
  { 'battle 1 2',  'ma', 'Water',        'stnpc', 'Water' },
  { 'battle 1 3',  'ma', 'Aero II',      'stnpc', 'Aero2' },
  { 'battle 1 3',  'ma', 'Aero',         'stnpc', 'Aero' },
  { 'battle 1 4',  'ma', 'Fire II',      'stnpc', 'Fire2' },
  { 'battle 1 4',  'ma', 'Fire',         'stnpc', 'Fire' },
  { 'battle 1 5',  'ma', 'Blizzard II',  'stnpc', 'Blizz2' },
  { 'battle 1 5',  'ma', 'Blizzard',     'stnpc', 'Blizz' },
  { 'battle 1 6',  'ma', 'Thunder II',   'stnpc', 'Thund2' }, -- mastery
  { 'battle 1 6',  'ma', 'Thunder',      'stnpc', 'Thund' },
  -- Enfeeblement
  { 'battle 1 7',  'ma', 'Sleep',        'stnpc', 'Sleep' },
  { 'battle 1 10', 'ma', 'Dispel',       'stnpc', 'Dispel' },
  -- Buffs
  { 'battle 1 11', 'ma', 'Klimaform',    'me',    'Klima' },
  { 'battle 2 10', 'ma', 'Blaze Spikes', 'me',    'B. Spikes' },
  { 'battle 2 10', 'ma', 'Ice Spikes',   'me',    'I. Spikes' }, -- mastery
  -- Helix
  { 'battle 2 1',  'ma', 'Geohelix',     'stnpc', 'Geo' },
  { 'battle 2 2',  'ma', 'Hydrohelix',   'stnpc', 'Hydro' },
  { 'battle 2 3',  'ma', 'Anemohelix',   'stnpc', 'Anemo' },
  { 'battle 2 4',  'ma', 'Pyrohelix',    'stnpc', 'Pyro' },
  { 'battle 2 5',  'ma', 'Cryohelix',    'stnpc', 'Cryo' },
  { 'battle 2 6',  'ma', 'Ionohelix',    'stnpc', 'Iono' },
  { 'battle 2 7',  'ma', 'Noctohelix',   'stnpc', 'Nocto' },
  { 'battle 2 8',  'ma', 'Luminohelix',  'stnpc', 'Lumino' },
  -- Absorb
  { 'battle 4 9',  'ma', 'Drain',        'stnpc', 'Drain' },
  { 'battle 4 10', 'ma', 'Aspir',        'stnpc', 'Aspir' },
}

-- ================================================================================
--                                 Summoner
--                  Must copy all files for summons you want
-- ================================================================================

xivhotbar_keybinds_job['SMN'] = {
  -- Pet Control
  { 'battle 1 1',  'ja', 'Assault',          't',  'Attack',   'ffxiv/pet/guard' },
  { 'battle 1 2',  'ja', 'Retreat',          'me', 'Retreat',  'ffxiv/pet/stay' },
  { 'battle 4 11', 'ja', 'Release',          'me', 'Release',  'ffxiv/pet/steady' },
  -- Abilities
  { 'battle 1 8',  'ja', "Avatar's Favor",   'me', 'Favor',    'ffxiv/smn/outburst' },          -- mastery
  { 'battle 1 9',  'ja', 'Elemental Siphon', 'me', 'Siphon',   'ffxiv/smn/slipstream' },        -- mastery
  { 'battle 1 10', 'ja', 'Apogee',           'me', 'Apogee',   'ffxiv/sch/emergency_tactics' }, -- recast
  { 'battle 1 11', 'ja', 'Mana Cede',        'me', 'Cede',     'ffxiv/sch/energy_drain' },      -- mp to pet tp
  { 'battle 1 11', 'ja', 'Astral Conduit',   'me', 'Conduit',  'ffxiv/sch/adloquium' },         -- bloodpact recast
  -- Summons
  { 'b 5 1',       'ma', 'Titan',            'me', 'Titan',    'summons/titan_GUI' },
  { 'b 5 2',       'ma', 'Leviathan',        'me', 'Levi',     'summons/leviathan_GUI' },
  { 'b 5 3',       'ma', 'Garuda',           'me', 'Garuda',   'summons/garuda_GUI' },
  { 'b 5 4',       'ma', 'Ifrit',            'me', 'Ifrit',    'summons/ifrit_GUI' },
  { 'b 5 5',       'ma', 'Shiva',            'me', 'Shiva',    'summons/shiva_GUI' },
  { 'b 5 6',       'ma', 'Ramuh',            'me', 'Ramuh',    'summons/ramuh_GUI' },
  { 'b 5 7',       'ma', 'Carbuncle',        'me', 'Carby',    'summons/carbuncle_GUI' },
  { 'b 5 8',       'ma', 'Fenrir',           'me', 'Fenrir',   'summons/fenrir_GUI' },
  { 'b 5 9',       'ma', 'Diabolos',         'me', 'Diabolos', 'summons/diabolos_GUI' },
  { 'b 5 10',      'ma', 'Cait Sith',        'me', 'CaitSith', 'summons/cait_sith_GUI' },
  { 'b 5 11',      'ma', 'Siren',            'me', 'Siren',    'summons/siren_GUI' },
  -- Spirits
  { 'b 6 1',       'ma', 'Earth Spirit',     'me', 'Earth',    'summons/earthspirit' },
  { 'b 6 2',       'ma', 'Water Spirit',     'me', 'Water',    'summons/waterspirit' },
  { 'b 6 3',       'ma', 'Air Spirit',       'me', 'Wind',     'summons/windspirit' },
  { 'b 6 4',       'ma', 'Fire Spirit',      'me', 'Fire',     'summons/firespirit' },
  { 'b 6 5',       'ma', 'Ice Spirit',       'me', 'Ice',      'summons/icespirit' },
  { 'b 6 6',       'ma', 'Thunder Spirit',   'me', 'Thunder',  'summons/thunderspirit' },
  { 'b 6 7',       'ma', 'Light Spirit',     'me', 'Light',    'summons/lightspirit' },
  { 'b 6 8',       'ma', 'Dark Spirit',      'me', 'Dark',     'summons/darkspirit' },
  { 'b 6 12',      'ja', 'Release',          'me', 'Release',  'ffxiv/pet/steady' },
}

xivhotbar_keybinds_job['Carbuncle'] = {
  { 'battle 1 3', 'ja', 'Poison Nails',    't',    'Nails',     'summons/carbuncle_GUI' },
  { 'battle 1 4', 'ja', 'Meteorite',       't',    'Meteorite', 'summons/carbuncle_GUI' }, -- mastery
  { 'battle 2 1', 'ja', 'Healing Ruby',    'stpc', 'Heal',      'summons/carbuncle_GUI' },
  { 'battle 2 2', 'ja', 'Shining Ruby',    'stpc', 'Shining',   'summons/carbuncle_GUI' },
  { 'battle 2 3', 'ja', 'Glittering Ruby', 'stpc', 'Glitter',   'summons/carbuncle_GUI' },
}

xivhotbar_keybinds_job['Cait Sith'] = {
  { 'battle 1 3', 'ja', 'Regal Scratch',  't',    'Scratch',  'summons/cait_sith_GUI' },
  { 'battle 2 1', 'ja', 'Raise II',       'stpc', 'Raise2',   'summons/cait_sith_GUI' },
  { 'battle 2 2', 'ja', 'Mewing Lullaby', 'stpc', 'Lullaby',  'summons/cait_sith_GUI' },
  { 'battle 2 3', 'ja', 'Reraise II',     'stpc', 'Reraise2', 'summons/cait_sith_GUI' },
  { 'battle 2 4', 'ja', 'Eerie Eye',      't',    'E.Eye',    'summons/cait_sith_GUI' }, -- mastery
}

xivhotbar_keybinds_job['Titan'] = {
  { 'battle 1 3', 'ja', 'Rock Throw',     't',  'Slow',     'summons/titan_GUI' },
  { 'battle 1 4', 'ja', 'Stone II',       't',  'Stone2',   'summons/titan_GUI' },
  { 'battle 1 5', 'ja', 'Rock Buster',    't',  'Bind',     'summons/titan_GUI' },
  { 'battle 1 6', 'ja', 'Megalith Throw', 't',  'Slow2',    'summons/titan_GUI' },
  { 'battle 2 1', 'ja', 'Earthen Ward',   'me', 'Stoneskn', 'summons/titan_GUI' },
}

xivhotbar_keybinds_job['Leviathan'] = {
  { 'battle 1 3', 'ja', 'Barracuda Dive', 't',  'BarDive', 'summons/leviathan_GUI' },
  { 'battle 1 4', 'ja', 'Water II',       't',  'Water2',  'summons/leviathan_GUI' },
  { 'battle 1 5', 'ja', 'Tail Whip',      't',  'Grav',    'summons/leviathan_GUI' },
  { 'battle 2 1', 'ja', 'Slowga',         't',  'Slowga',  'summons/leviathan_GUI' },
  { 'battle 2 2', 'ja', 'Spring Water',   'me', 'Spring',  'summons/leviathan_GUI' },
}

xivhotbar_keybinds_job['Garuda'] = {
  { 'battle 1 3', 'ja', 'Claw',            't',  'Claw',    'summons/garuda_GUI' },
  { 'battle 1 4', 'ja', 'Aero II',         't',  'Aero2',   'summons/garuda_GUI' },
  { 'battle 2 1', 'ja', 'Aerial Armor',    'me', 'Blinkga', 'summons/garuda_GUI' },
  { 'battle 2 2', 'ja', 'Whispering Wind', 'me', 'Healga',  'summons/garuda_GUI' },
  { 'battle 2 3', 'ja', 'Hastega',         'me', 'Hastega', 'summons/garuda_GUI' },
}

xivhotbar_keybinds_job['Ifrit'] = {
  { 'battle 1 3', 'ja', 'Punch',          't',  'Punch',    'summons/ifrit_GUI' },
  { 'battle 1 4', 'ja', 'Fire II',        't',  'Fire2',    'summons/ifrit_GUI' },
  { 'battle 1 5', 'ja', 'Burning Strike', 't',  'Strike',   'summons/ifrit_GUI' },
  { 'battle 1 6', 'ja', 'Double Punch',   't',  'Dbl.Pnch', 'summons/ifrit_GUI' },

  { 'battle 2 1', 'ja', 'Crimson Howl',   'me', 'C.Howl',   'summons/ifrit_GUI' },
}

xivhotbar_keybinds_job['Shiva'] = {
  { 'battle 1 3', 'ja', 'Axe Kick',    't',  'AxeKick',  'summons/shiva_GUI' },
  { 'battle 1 4', 'ja', 'Blizzard II', 't',  'Blizz2',   'summons/shiva_GUI' },
  { 'battle 1 5', 'ja', 'Double Slap', 't',  'Dbl.Slap', 'summons/shiva_GUI' }, -- mastery
  { 'battle 2 1', 'ja', 'Frost Armor', 'me', 'IceSpks',  'summons/shiva_GUI' },
  { 'battle 2 2', 'ja', 'Sleepga',     't',  'Sleepga',  'summons/shiva_GUI' },
}

xivhotbar_keybinds_job['Ramuh'] = {
  { 'battle 1 3', 'ja', 'Shock Strike',    't',  'ShockStrk', 'summons/ramuh_GUI' },
  { 'battle 1 4', 'ja', 'Thunder II',      't',  'Thund2',    'summons/ramuh_GUI' },
  { 'battle 1 5', 'ja', 'Thunderspark',    't',  'ThudSpk',   'summons/ramuh_GUI' },
  { 'battle 2 1', 'ja', 'Rolling Thunder', 'me', 'Enthund',   'summons/ramuh_GUI' },
  { 'battle 2 2', 'ja', 'Lightning Armor', 'me', 'ShkSpke',   'summons/ramuh_GUI' },
}

xivhotbar_keybinds_job['Fenrir'] = {
  { 'battle 1 3', 'ja', 'Moonlit Charge', 't',  'Blind',    'summons/fenrir_GUI' },
  { 'battle 1 4', 'ja', 'Crescent Fang',  't',  'Paralyze', 'summons/fenrir_GUI' },
  { 'battle 2 1', 'ja', 'Lunar Cry',      't',  'LunCry',   'summons/fenrir_GUI' },
  { 'battle 2 2', 'ja', 'Lunar Roar',     't',  'LunRoar',  'summons/fenrir_GUI' },
  { 'battle 2 3', 'ja', 'Ecliptic Growl', 'me', 'EclGrowl', 'summons/fenrir_GUI' },
  { 'battle 2 4', 'ja', 'Ecliptic Howl',  'me', 'EclHowl',  'summons/fenrir_GUI' }, -- mastery
}

xivhotbar_keybinds_job['Diabolos'] = {
  { 'battle 1 3', 'ja', 'Camisado',        't',  'Camisad',  'summons/diabolos_GUI' },
  { 'battle 2 1', 'ja', 'Somnolence',      't',  'Somno',    'summons/diabolos_GUI' },
  { 'battle 2 2', 'ja', 'Nightmare',       't',  'Nightmr',  'summons/diabolos_GUI' },
  { 'battle 2 3', 'ja', 'Ultimate Terror', 't',  'U.Terror', 'summons/diabolos_GUI' },
  { 'battle 2 4', 'ja', 'Noctoshield',     'me', 'Nocto',    'summons/diabolos_GUI' },
  { 'battle 2 5', 'ja', 'Dream Shroud',    'me', 'DrmShrd',  'summons/diabolos_GUI' }, -- mastery
}

xivhotbar_keybinds_job['Siren'] = {
  { 'battle 1 3', 'ja', 'Welt',             't',  'Welt',    'summons/siren_GUI' },
  { 'battle 1 4', 'ja', 'Roundhouse',       't',  'RHouse',  'summons/siren_GUI' },
  { 'battle 2 1', 'ja', 'Lunatic Voice',    't',  'Lunatic', 'summons/siren_GUI' },
  { 'battle 2 2', 'ja', 'Katabatic Blades', 'me', 'Kata',    'summons/siren_GUI' },
  { 'battle 2 3', 'ja', 'Chinook',          'me', 'Chinook', 'summons/siren_GUI' },
  { 'battle 2 4', 'ja', 'Bitter Elegy',     't',  'Elegy',   'summons/siren_GUI' }, -- mastery
}

-- ================================================================================
--                               UNLISTED JOBS
--              No job has these listed but feel free to use anyway
-- ================================================================================

xivhotbar_keybinds_job['PLD'] = {
  -- Abilities
  { 'battle 3 1',  'ja', 'Holy Circle', 'me',    'HolyCir',  'ffxiv/pld/holy_circle' },
  { 'battle 3 2',  'ja', 'Shield Bash', 't',     'Sh. Bash', 'ffxiv/pld/shield_bash' },
  { 'battle 3 3',  'ja', 'Sentinel',    'me',    'Sentnl',   'ffxiv/pld/sentinel' },
  { 'battle 3 4',  'ja', 'Cover',       'stpc',  'Cover',    'ffxiv/pld/cover' },
  -- Spells
  { 'battle 3 9',  'ma', 'Cure IV',     'stpc',  'Cure4' }, -- Mastery
  { 'battle 3 8',  'ma', 'Cure III',    'stpc',  'Cure3' },
  { 'battle 3 7',  'ma', 'Cure II',     'stpc',  'Cure2' },
  { 'battle 3 6',  'ma', 'Cure',        'stpc',  'Cure1' },
  { 'battle 2 9',  'ma', 'Banish II',   'stnpc', 'Banish2' },
  { 'battle 2 9',  'ma', 'Banish',      'stnpc', 'Banish' },
  { 'battle 3 5',  'ma', 'Flash',       'stnpc', 'Flash',    'ffxiv/pld/flash' },

  { 'battle 3 10', 'ma', 'Holy',        'stnpc', 'Holy' }, -- Mastery
}

xivhotbar_keybinds_job['PUP'] = {
  -- Pet Control
  { 'battle 3 1',  'ja', 'Deploy',           't',  'Fight',    'ffxiv/mch/rook_overload' },
  { 'battle 3 2',  'ja', 'Retrieve',         't',  'Retrieve', 'ffxiv/mch/pile_bunker' },
  -- Maneuvers
  { 'battle 3 3',  'ja', 'Fire Maneuver',    'me', 'FireMan',  'ffxiv/pic/fire_in_red' },
  { 'battle 3 4',  'ja', 'Ice Maneuver',     'me', 'IceMan',   'ffxiv/pic/blizzard_in_cyan' },
  { 'battle 3 5',  'ja', 'Wind Maneuver',    'me', 'WndMan',   'ffxiv/pic/aero_in_green' },
  { 'battle 3 6',  'ja', 'Earth Maneuver',   'me', 'EthMan',   'ffxiv/pic/stone_in_yellow' },
  { 'battle 3 7',  'ja', 'Thunder Maneuver', 'me', 'ThrMan',   'ffxiv/pic/thunder_in_magenta' },
  { 'battle 3 8',  'ja', 'Water Maneuver',   'me', 'WtrMan',   'ffxiv/pic/water_in_blue' },
  { 'battle 3 9',  'ja', 'Light Maneuver',   'me', 'LghMan',   'ffxiv/pic/holy_in_white' },
  { 'battle 3 10', 'ja', 'Dark Maneuver',    'me', 'DrkMan',   'ffxiv/pic/comet_in_black' },
  -- Pet Abilities
  { 'battle 3 12', 'ja', 'Activate',         'me', 'Activate', 'ffxiv/mch/roller_dash' },
  { 'battle 3 12', 'ja', 'Deactivate',       'me', 'Deactvte', 'ffxiv/mch/hot_shot' },
  { 'battle 3 11', 'ja', 'Repair',           'me', 'Repair',   'ffxiv/mch/barrel_stabilizer' }, --needs oil
}

xivhotbar_keybinds_job['RUN'] = {
  -- Runes
  { 'battle 3 1',  'ja', 'Ignis',        'me',    'Ignis',     'ffxiv/pic/fire_in_red' },
  { 'battle 3 2',  'ja', 'Gelus',        'me',    'Gelus',     'ffxiv/pic/blizzard_in_cyan' },
  { 'battle 3 3',  'ja', 'Flabra',       'me',    'Flabra',    'ffxiv/pic/aero_in_green' },
  { 'battle 3 4',  'ja', 'Tellus',       'me',    'Tellus',    'ffxiv/pic/stone_in_yellow' },
  { 'battle 3 5',  'ja', 'Sulpor',       'me',    'Sulpor',    'ffxiv/pic/thunder_in_magenta' },
  { 'battle 3 6',  'ja', 'Unda',         'me',    'Unda',      'ffxiv/pic/water_in_blue' },
  { 'battle 3 7',  'ja', 'Lux',          'me',    'Lux',       'ffxiv/pic/holy_in_white' },
  { 'battle 3 8',  'ja', 'Tenebrae',     'me',    'Ignis',     'ffxiv/pic/comet_in_black' },
  -- Offensive
  { 'battle 3 9',  'ja', 'Swipe',        't',     'Swipe',     'ffxiv/vpr/First_Generation' },
  { 'battle 3 10', 'ja', 'Lunge',        't',     'Lunge',     'ffxiv/vpr/Hindsbane_Fang' },
  -- Defensive Spells
  { 'battle 2 5',  'ma', 'Blink',        'me',    'Blink' },
  -- Curative Spells
  { 'battle 2 9',  'ma', 'Regen III',    'stpc',  'Regen3' },
  { 'battle 2 9',  'ma', 'Regen II',     'stpc',  'Regen2' },
  { 'battle 2 9',  'ma', 'Regen',        'stpc',  'Regen' },
  -- Tanking / Self-Targeted Defense
  { 'battle 3 11', 'ja', 'Vallation',    'me',    'Valltn',    'ffxiv/sge/haima' },
  { 'battle 3 12', 'ja', 'Swordplay',    'me',    'Swordply',  'ffxiv/vpr/Flanksbane_Fang' },
  { 'battle 4 3',  'ja', 'Pflug',        'me',    'Pflug',     'ffxiv/sge/eukrasia' },
  -- Party-Wide Defense
  { 'battle 3 11', 'ja', 'Valiance',     'me',    'Valia',     'ffxiv/sge/panhaima' }, -- mastery
  -- Tanking spells
  { 'battle 5 1',  'ma', 'Flash',        'stnpc', 'Flash',     'ffxiv/pld/flash' },
  { 'battle 5 4',  'ma', 'Aquaveil',     'me',    'Aqua' },
  -- Bar-element Spells
  { 'battle 5 7',  'ma', 'Barstone',     'me',    'BStone',    'Barstonra' },
  { 'battle 5 8',  'ma', 'Barwater',     'me',    'BWater',    'Barwatera' },
  { 'battle 5 9',  'ma', 'Baraero',      'me',    'BAero',     'Baraera' },
  { 'battle 5 10', 'ma', 'Barfire',      'me',    'BFire',     'Barfira' },
  { 'battle 5 11', 'ma', 'Barblizzard',  'me',    'BBlizzard', 'Barblizzara' },
  { 'battle 5 12', 'ma', 'Barthunder',   'me',    'BThunder',  'Barthundra' },
  -- Spikes
  { 'battle 6 1',  'ma', 'Blaze Spikes', 'me',    'BlzSpikes' },
  -- Bar-enfeeble Spells
  { 'battle 6 5',  'ma', 'Barsleep',     'me',    'BSleep',    '' },
  { 'battle 6 6',  'ma', 'Barpoison',    'me',    'BPoison',   '' },
  { 'battle 6 7',  'ma', 'Barparalyze',  'me',    'BPara',     '' },
  { 'battle 6 8',  'ma', 'Barblind',     'me',    'BBlind',    '' },
  { 'battle 6 9',  'ma', 'Barsilence',   'me',    'BSilence',  '' },
  { 'battle 6 10', 'ma', 'Barvirus',     'me',    'BVirus',    '' },
  { 'battle 6 11', 'ma', 'Barpetrify',   'me',    'BPetri',    '' },
}
