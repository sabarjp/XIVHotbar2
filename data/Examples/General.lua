xivhotbar_keybinds_general['Root'] = {
  -- Hotbar #1
  -- Mount
  { 'field 1 1',  'macro', 'input /dismount;wait 2;input /mount raptor',                                                                                                                                                                   '',     'Mount',        'Mount' },
  -- { 'field 1 1',  'macro', 'input /dismount;wait 2;input /mount ixion', '','Mount', 'Mount' },

  -- Flee
  { 'battle 1 3', 'ja',    "Flee",                                                                                                                                                                                                         'me',   'Flee' }, -- thf 25

  -- Movespeed obtainable as main job
  { 'battle 1 4', 'ja',    "Bolter's Roll",                                                                                                                                                                                                'me',   'Bolt R',       'classes/mag_rng' }, -- cor 76
  { 'battle 1 4', 'ma',    "Chocobo Mazurka",                                                                                                                                                                                              'me',   'Choco M' },                         -- brd 73
  { 'battle 1 4', 'ja',    "Chocobo Jig II",                                                                                                                                                                                               'me',   'Choco J2' },                        -- dnc 70
  { 'battle 1 4', 'ja',    "Fleet Wind",                                                                                                                                                                                                   'me',   'Fleet' },                           -- smn 86 (garuda)

  -- Movespeed obtainable as sub job
  { 'battle 1 5', 'ja',    "Raptor Mazurka",                                                                                                                                                                                               'me',   'Raptor' },  -- brd 37
  { 'battle 1 6', 'ja',    "Chocobo Jig",                                                                                                                                                                                                  'me',   'Choco J' }, -- dnc 55

  -- Warps
  { 'field 1 10', 'macro', 'input /equip ring1 "Warp Ring";wait 10;input /item "Warp Ring" <me>',                                                                                                                                          '',     'Warp R.' },
  { 'field 1 10', 'ma',    'Warp',                                                                                                                                                                                                         'me',   'Warp' },
  { 'field 1 9',  'ma',    'Warp II',                                                                                                                                                                                                      'stpt', 'Warp2' },
  { 'field 1 8',  'ma',    'Escape',                                                                                                                                                                                                       'me',   'Escape' },

  -- Maps
  { 'field 1 11', 'input', '/rmap',                                                                                                                                                                                                        '',     'R. Map',       'crafting_log' },
  { 'field 1 12', 'input', '/map',                                                                                                                                                                                                         '',     'Map',          'crafting_log' },

  -- Hotbar #2
  -- Sneak
  { 'field 2 1',  'ma',    'Monomi: Ichi',                                                                                                                                                                                                 'me',   'Monomi' },
  { 'field 2 1',  'ma',    'Sneak',                                                                                                                                                                                                        'stpc', 'Sneak' },

  -- Invisible
  { 'field 2 2',  'ma',    'Tonko: Ichi',                                                                                                                                                                                                  'me',   'Tonko' },
  { 'field 2 2',  'ma',    'Invisible',                                                                                                                                                                                                    'stpc', 'Invis' },

  -- Deodorize
  { 'field 2 3',  'ma',    'Deodorize',                                                                                                                                                                                                    'stpc', 'Deo' },

  -- Spectral Jig
  { 'field 2 4',  'ja',    'Spectral Jig',                                                                                                                                                                                                 'me',   'Spectral' },

  -- Hotbar #3
  -- Harvesting
  { 'field 3 1',  'macro', 'input /targetnpc;input /item Hatchet <t>',                                                                                                                                                                     '',     'Log',          'harvest' },
  { 'field 3 2',  'macro', 'input /targetnpc;input /item Pickaxe <t>',                                                                                                                                                                     '',     'Mine',         'mining' },
  { 'field 3 3',  'input', '/fish',                                                                                                                                                                                                        '',     'Fish',         'fish' },

  -- Crafting
  { 'field 3 4',  'input', '/lastsynth',                                                                                                                                                                                                   '',     'Craft',        'synth' },
  { 'field 3 5',  'macro', 'input /lastsynth;wait 25;input /lastsynth;wait 25;input /lastsynth;wait 25;input /lastsynth;wait 25;input /lastsynth;wait 25;input /echo ==CRAFTx5 DONE===;',                                                  '',     'Craft x5',     'synth' },

  -- Out of Combat Buffs
  { 'field 3 7',  'ma',    'Protect',                                                                                                                                                                                                      'stpc', 'Protect' },
  { 'field 3 7',  'ma',    'Protect II',                                                                                                                                                                                                   'stpc', 'Protect II' },
  { 'field 3 7',  'ma',    'Protect III',                                                                                                                                                                                                  'stpc', 'Protect III' },
  { 'field 3 7',  'ma',    'Protect IV',                                                                                                                                                                                                   'stpc', 'Protect IV' },
  { 'field 3 7',  'ma',    'Protect V',                                                                                                                                                                                                    'stpc', 'Protect V' },
  { 'field 3 8',  'ma',    'Shell',                                                                                                                                                                                                        'stpc', 'Shell' },
  { 'field 3 8',  'ma',    'Shell II',                                                                                                                                                                                                     'stpc', 'Shell II' },
  { 'field 3 8',  'ma',    'Shell III',                                                                                                                                                                                                    'stpc', 'Shell III' },
  { 'field 3 8',  'ma',    'Shell IV',                                                                                                                                                                                                     'stpc', 'Shell IV' },
  { 'field 3 8',  'ma',    'Shell V',                                                                                                                                                                                                      'stpc', 'Shell V' },
  { 'field 3 6',  'ma',    'Aquaveil',                                                                                                                                                                                                     'stpc', 'Aqua' },

  -- #4 Hotbar
  -- party setup
  { 'field 4 1',  'input', '/sea all friend',                                                                                                                                                                                              '',     'FList',        'check' },
  { 'field 4 2',  'input', '/join',                                                                                                                                                                                                        '',     'Join PT' },
  -- XP ring
  { 'field 4 3',  'macro', 'input /equip ring2 "Empress Band";wait 1;input /item "Empress Band" <me>',                                                                                                                                     '',     'XP Ring',      'scroll' }, -- change "Empress Band" to your chosen ring

  -- Reraises
  { 'field 4 4',  'ma',    'Reraise',                                                                                                                                                                                                      'me',   'RRraise' },
  { 'field 4 4',  'ma',    'Reraise II',                                                                                                                                                                                                   'me',   'RRraise II' },
  { 'field 4 4',  'ma',    'Reraise III',                                                                                                                                                                                                  'me',   'RRraise III' },
  { 'field 4 4',  'ma',    'Reraise IV',                                                                                                                                                                                                   'me',   'RRraise IV' },

  -- Raises
  { 'field 4 5',  'ma',    'Raise',                                                                                                                                                                                                        'stpc', 'Raise' },
  { 'field 4 5',  'ma',    'Raise II',                                                                                                                                                                                                     'stpc', 'Raise II' },
  { 'field 4 5',  'ma',    'Raise III',                                                                                                                                                                                                    'stpc', 'Raise III' },

  -- Tractor
  { 'field 4 6',  'ma',    'Tractor',                                                                                                                                                                                                      't',    'Tractor' },

  -- Protectra / Shellra
  { 'field 4 7',  'ma',    'Protectra',                                                                                                                                                                                                    'stpc', 'Protectra' },
  { 'field 4 7',  'ma',    'Protectra II',                                                                                                                                                                                                 'stpc', 'Protectra II' },
  { 'field 4 7',  'ma',    'Protectra III',                                                                                                                                                                                                'stpc', 'Protectra III' },
  { 'field 4 7',  'ma',    'Protectra IV',                                                                                                                                                                                                 'stpc', 'Protectra IV' },
  { 'field 4 7',  'ma',    'Protectra V',                                                                                                                                                                                                  'stpc', 'Protectra V' },
  { 'field 4 8',  'ma',    'Shellra',                                                                                                                                                                                                      'stpc', 'Shellra' },
  { 'field 4 8',  'ma',    'Shellra II',                                                                                                                                                                                                   'stpc', 'Shellra II' },
  { 'field 4 8',  'ma',    'Shellra III',                                                                                                                                                                                                  'stpc', 'Shellra III' },
  { 'field 4 8',  'ma',    'Shellra IV',                                                                                                                                                                                                   'stpc', 'Shellra IV' },
  { 'field 4 8',  'ma',    'Shellra V',                                                                                                                                                                                                    'stpc', 'Shellra V' },

  -- Trusts
  -- {'field 4 10', 'input', '//tru leveling', '', 'Lvling', '2hr'}, -- trust mod template
  -- {'field 4 11', 'input', '//tru 99', '', '99', '2hr'}, -- trust mod template
  { 'field 4 11', 'macro', 'input /echo Trust Summon;input /ma "Valaineral" <me>;wait 6;input /ma "Mihli Aliapoh" <me>;wait 6;input /ma "Shantotto II" <me>;wait 6;input /ma "Semih Lafihna" <me>;wait 6;input /ma "Mayakov" <me>;wait 6', '',     'Summon',       '2hr' }, -- replace names with your choices
  { 'field 4 12', 'input', '/refa all',                                                                                                                                                                                                    '',     'Rtn Trust',    'return-trust' },

  -- #5 Hotbar
  --Teleports
  { 'field 5 1',  'ma',    'Teleport-Holla',                                                                                                                                                                                               'me',   'Holla' },
  { 'field 5 2',  'ma',    'Teleport-Dem',                                                                                                                                                                                                 'me',   'Dem' },
  { 'field 5 3',  'ma',    'Teleport-Mea',                                                                                                                                                                                                 'me',   'Mea' },
  { 'field 5 4',  'ma',    'Teleport-Altep',                                                                                                                                                                                               'me',   'Altep' },
  { 'field 5 5',  'ma',    'Teleport-Yhoat',                                                                                                                                                                                               'me',   'Yhoat' },
  { 'field 5 6',  'ma',    'Teleport-Vahzl',                                                                                                                                                                                               'me',   'Vahzl' },
  { 'field 5 7',  'ma',    'Recall-Jugner',                                                                                                                                                                                                'me',   'Jugner' },
  { 'field 5 8',  'ma',    'Recall-Pashh',                                                                                                                                                                                                 'me',   'Pashh' },
  { 'field 5 9',  'ma',    'Recall-Meriph',                                                                                                                                                                                                'me',   'Meriph' },
  { 'field 5 12', 'ma',    'Retrace',                                                                                                                                                                                                      'stpc', 'Retrace' },

  -- #6 Hotbar
  { 'field 6 1',  'input', '/jump',                                                                                                                                                                                                        '',     'Jump',         'Jump' },
}

return xivhotbar_keybinds_general
