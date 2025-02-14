xivhotbar_keybinds_general['Root'] = {
  -- #1 Hotbar
  { 'field 1 1',  'macro',    'input /dismount;wait 2;input /mount ixion',                                                                                                                                                                    '',     'Mount',        'Mount' },
  -- Jig
  { 'field 1 2',  'ja',       'Flee',                                                                                                                                                                                                         'me',   'Flee',         'ffxiv/nin/forked_raiju' },
  { 'field 1 3',  'ja',       'Chocobo Jig',                                                                                                                                                                                                  'me',   'Chocobo',      'ffxiv/dnc/entrechat' },
  { 'battle 1 4', 'ja',       "Bolter's Roll",                                                                                                                                                                                                'me',   'BLT',          'classes/mag_rng' }, -- movespeed

  -- Warps
  { 'field 1 8',  'macro',    'input /equip ring1 "Warp Ring";wait 10;input /item "Warp Ring" <me>',                                                                                                                                          '',     'Warp R.' },
  { 'field 1 8',  'ma',       'Warp',                                                                                                                                                                                                         'me',   'Warp' },
  { 'field 1 9',  'ma',       'Warp II',                                                                                                                                                                                                      'stpt', 'Warp2' },
  { 'field 1 10', 'ma',       'Escape',                                                                                                                                                                                                       'me',   'Escape' },
  { 'field 1 11', 'input',    '/rmap',                                                                                                                                                                                                        '',     'R. Map',       'crafting_log' },
  { 'field 1 12', 'input',    '/map',                                                                                                                                                                                                         '',     'Map',          'crafting_log' },
  -- #2 Hotbar
  -- Sneak me
  { 'field 2 1',  'ma',       'Sneak',                                                                                                                                                                                                        'me',   'Sneak' },
  { 'field 2 1',  'ma',       'Monomi: Ichi',                                                                                                                                                                                                 'me',   'Monomi' },
  { 'field 2 1',  'ja',       'Spectral Jig',                                                                                                                                                                                                 'me',   'Spectral' },
  -- Invisible me
  { 'field 2 2',  'ma',       'Invisible',                                                                                                                                                                                                    'me',   'Invis' },
  { 'field 2 2',  'ma',       'Tonko: Ichi',                                                                                                                                                                                                  'me',   'Tonko' },
  { 'field 2 2',  'ja',       'Spectral Jig',                                                                                                                                                                                                 'me',   'Spectral' },
  -- Sneak/Invis others
  { 'field 2 3',  'ma',       'Sneak',                                                                                                                                                                                                        'stpc', 'Snk Otr' },
  { 'field 2 4',  'ma',       'Invisible',                                                                                                                                                                                                    'stpc', 'Inv Otr' },
  -- Deodorize me
  { 'field 2 5',  'ma',       'Deodorize',                                                                                                                                                                                                    'stpc', 'Deo' },

  -- #3 Hotbar
  { 'field 3 1',  'macro',    'input /targetnpc;input /item Hatchet <t>',                                                                                                                                                                     '',     'Log',          'harvest' },
  { 'field 3 2',  'macro',    'input /targetnpc;input /item Pickaxe <t>',                                                                                                                                                                     '',     'Mine',         'mining' },
  { 'field 3 3',  'input',    '/fish',                                                                                                                                                                                                        '',     'Fish',         'fish' },
  { 'field 3 4',  'input',    '/lastsynth',                                                                                                                                                                                                   '',     'Craft',        'synth' },
  { 'field 3 5',  'macro',    'input /lastsynth;wait 25;input /lastsynth;wait 25;input /lastsynth;wait 25;input /lastsynth;wait 25;input /lastsynth;wait 25;input /lastsynth;wait 25;',                                                       '',     'Craft x6',     'synth' },
  { 'field 3 6',  'ma',       'Protect',                                                                                                                                                                                                      'me',   'Protect' },
  { 'field 3 6',  'ma',       'Protect II',                                                                                                                                                                                                   'me',   'Protect II' },
  { 'field 3 6',  'ma',       'Protect III',                                                                                                                                                                                                  'me',   'Protect III' },
  { 'field 3 6',  'ma',       'Protect IV',                                                                                                                                                                                                   'me',   'Protect IV' },
  { 'field 3 6',  'ma',       'Protect V',                                                                                                                                                                                                    'me',   'Protect V' },
  { 'field 3 7',  'ma',       'Shell',                                                                                                                                                                                                        'me',   'Shell' },
  { 'field 3 7',  'ma',       'Shell II',                                                                                                                                                                                                     'me',   'Shell II' },
  { 'field 3 7',  'ma',       'Shell III',                                                                                                                                                                                                    'me',   'Shell III' },
  { 'field 3 7',  'ma',       'Shell IV',                                                                                                                                                                                                     'me',   'Shell IV' },
  { 'field 3 7',  'ma',       'Shell V',                                                                                                                                                                                                      'me',   'Shell V' },
  { 'field 3 8',  'ma',       'Aquaveil',                                                                                                                                                                                                     'me',   'Aqua' },

  -- #4 Hotbar
  -- party setup
  { 'field 4 1',  'input',    '/sea all friend',                                                                                                                                                                                              '',     'FList',        'check' },
  { 'field 4 2',  'input',    '/join',                                                                                                                                                                                                        '',     'Join PT' },
  -- XP ring
  { 'field 4 3',  'macro',    'input /equip ring2 "Empress Band";wait 1;input /item "Empress Band" <me>',                                                                                                                                     '',     'XP Ring',      'scroll' },
  -- Reraises
  { 'field 4 4',  'ma',       'Reraise',                                                                                                                                                                                                      'me',   'RRraise' },
  { 'field 4 4',  'ma',       'Reraise II',                                                                                                                                                                                                   'me',   'RRraise II' },
  { 'field 4 4',  'ma',       'Reraise III',                                                                                                                                                                                                  'me',   'RRraise III' },
  { 'field 4 4',  'ma',       'Reraise IV',                                                                                                                                                                                                   'me',   'RRraise IV' },
  -- Raises
  { 'field 4 5',  'ma',       'Raise',                                                                                                                                                                                                        'stpc', 'Raise' },
  { 'field 4 5',  'ma',       'Raise II',                                                                                                                                                                                                     'stpc', 'Raise II' },
  { 'field 4 5',  'ma',       'Raise III',                                                                                                                                                                                                    'stpc', 'Raise III' },
  -- Protectra / Shellra
  { 'field 4 6',  'ma',       'Protectra',                                                                                                                                                                                                    'me',   'Protectra' },
  { 'field 4 6',  'ma',       'Protectra II',                                                                                                                                                                                                 'me',   'Protectra II' },
  { 'field 4 6',  'ma',       'Protectra III',                                                                                                                                                                                                'me',   'Protectra III' },
  { 'field 4 6',  'ma',       'Protectra IV',                                                                                                                                                                                                 'me',   'Protectra IV' },
  { 'field 4 6',  'ma',       'Protectra V',                                                                                                                                                                                                  'me',   'Protectra V' },
  { 'field 4 7',  'ma',       'Shellra',                                                                                                                                                                                                      'me',   'Shellra' },
  { 'field 4 7',  'ma',       'Shellra II',                                                                                                                                                                                                   'me',   'Shellra II' },
  { 'field 4 7',  'ma',       'Shellra III',                                                                                                                                                                                                  'me',   'Shellra III' },
  { 'field 4 7',  'ma',       'Shellra IV',                                                                                                                                                                                                   'me',   'Shellra IV' },
  { 'field 4 7',  'ma',       'Shellra V',                                                                                                                                                                                                    'me',   'Shellra V' },
  -- trusts
  { 'field 4 11', 'macro',    'input /echo Trust Summon;input /ma "Valaineral" <me>;wait 6;input /ma "Mihli Aliapoh" <me>;wait 6;input /ma "Shantotto II" <me>;wait 6;input /ma "Semih Lafihna" <me>;wait 6;input /ma "Mayakov" <me>;wait 6', '',     'Summon',       '2hr' },
  -- {'field 4 9', 'input', '//tru martial', '', 'Martial', '2hr'},
  -- {'field 4 10', 'input', '//tru caster', '', 'Caster', '2hr'},
  -- {'field 4 11', 'input', '//tru op', '', 'Op', '2hr'}, -- trust mod template
  { 'field 4 12', 'input',    '/refa all',                                                                                                                                                                                                    '',     'Rtn Trust',    'return-trust' },

  -- #5 Hotbar
  --Teleports
  { 'field 5 1',  'ma',       'Teleport-Holla',                                                                                                                                                                                               'me',   'Holla' },
  { 'field 5 2',  'ma',       'Teleport-Dem',                                                                                                                                                                                                 'me',   'Dem' },
  { 'field 5 3',  'ma',       'Teleport-Mea',                                                                                                                                                                                                 'me',   'Mea' },
  { 'field 5 4',  'ma',       'Teleport-Altep',                                                                                                                                                                                               'me',   'Altep' },
  { 'field 5 5',  'ma',       'Teleport-Yhoat',                                                                                                                                                                                               'me',   'Yhoat' },
  { 'field 5 6',  'ma',       'Teleport-Vahzl',                                                                                                                                                                                               'me',   'Vahzl' },
  { 'field 5 7',  'ma',       'Recall-Jugner',                                                                                                                                                                                                'me',   'Jugner' },
  { 'field 5 8',  'ma',       'Recall-Pashh',                                                                                                                                                                                                 'me',   'Pashh' },
  { 'field 5 9',  'ma',       'Recall-Meriph',                                                                                                                                                                                                'me',   'Meriph' },

  -- #6 Hotbar
  { 'field 6 1',  'input',    '/jump',                                                                                                                                                                                                        '',     'Jump',         'Jump' },

  -- Auto item slots, these slots are automatically filled with usable items.
  -- First item matching word "Potion"
  { 'field 6 2',  'autoitem', 'Potion',                                                                                                                                                                                                       '',     '',             '' },
  -- First item matching word "Ether"
  { 'field 6 3',  'autoitem', 'Ether',                                                                                                                                                                                                        '',     '',             '' },
  -- First item matching word "Elixir"
  { 'field 6 4',  'autoitem', 'Elixir',                                                                                                                                                                                                       '',     '',             '' },
  -- Rest of the slots, just put whatever by item # in inventory
  { 'field 6 5',  'autoitem', '1',                                                                                                                                                                                                            '',     '',             '' },
  { 'field 6 6',  'autoitem', '2',                                                                                                                                                                                                            '',     '',             '' },
  { 'field 6 7',  'autoitem', '3',                                                                                                                                                                                                            '',     '',             '' },
  { 'field 6 8',  'autoitem', '4',                                                                                                                                                                                                            '',     '',             '' },
  { 'field 6 9',  'autoitem', '5',                                                                                                                                                                                                            '',     '',             '' },
  { 'field 6 10', 'autoitem', '6',                                                                                                                                                                                                            '',     '',             '' },
  { 'field 6 11', 'autoitem', '7',                                                                                                                                                                                                            '',     '',             '' },
  { 'field 6 12', 'autoitem', '8',                                                                                                                                                                                                            '',     '',             '' },
}

return xivhotbar_keybinds_general
