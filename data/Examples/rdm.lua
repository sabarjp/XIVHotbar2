-- Example:    {'battle 1 1', 'ja', 'Steal', 't', 'name/title'},
-- Once you make changes type "//htb reload" in game
-- If hotbar resets/duplicates or freaks out when switching characters. When you get back to main character. Type //lua unload xivhotbar2 and then //lua reload xihotbar

--KEYS{1,2,3,4,5}


xivhotbar_keybinds_job['Base'] = {



  -- Hotbar #1 Cures, weapon skills
  { 'battle 1 1',  'ma', 'Cure',          'stpc',  'Cure' },
  { 'battle 1 1',  'ma', 'Cure II',       'stpc',  'Cure2' },
  { 'battle 1 2',  'ma', 'Cure III',      'stpc',  'Cure3' },
  { 'battle 1 2',  'ma', 'Cure IV',       'stpc',  'Cure4' },
  { 'battle 1 3',  'ma', 'Refresh',       'stpc',  'Refresh' },
  { 'battle 1 3',  'ma', 'Refresh II',    'stpc',  'Refresh2' },
  { 'battle 1 3',  'ma', 'Refresh III',   'stpc',  'Refresh3' },
  { 'battle 1 4',  'ma', 'Haste',         'stpc',  'Haste' },
  { 'battle 1 4',  'ma', 'Haste II',      'stpc',  'Haste2' },
  { 'battle 1 5',  'ma', 'Flurry',        'stpc',  'Flurry' },
  { 'battle 1 5',  'ma', 'Flurry II',     'stpc',  'Flurry2' },
  { 'battle 1 6',  'ma', 'Inundation',    'stpc',  'Inund' },
  --{'battle 1 8', '', '', '', '', ''}, WS - Weapon Switching
  --{'battle 1 9', '', '', '', '', ''}, WS - Weapon Switching
  --{'battle 1 10', '', '', '', '', ''}, WS - Weapon Switching
  --{'battle 1 11', '', '', '', '', ''}, WS - Weapon Switching
  { 'battle 1 12', 'ma', 'Gain-MND',      'me',    'GainMND' },


  -- Hotbar #2 Subjob reserved
  --{'battle 2 1', '', '', '', ''},
  --{'battle 2 2', '', '', '', ''},
  --{'battle 2 3', '', '', '', ''},
  --{'battle 2 4', '', '', '', ''},
  --{'battle 2 5', '', '', '', ''},
  --{'battle 2 6', '', '', '', ''},
  --{'battle 2 7', '', '', '', ''},
  --{'battle 2 8', '', '', '', ''},
  --{'battle 2 9', '', '', '', ''},
  --{'battle 2 10', '', '', '', ''},
  --{'battle 2 11', '', '', '', ''},
  --{'battle 2 12', '', '', '', ''},


  -- Hotbar #3 (CTRL 1-12)
  -- The Big 3 Debuffs first
  { 'battle 3 1',  'ma', 'Dia II',        'stnpc', 'Dia2' },
  { 'battle 3 1',  'ma', 'Dia III',       'stnpc', 'Dia3' },
  { 'battle 3 1',  'ma', 'Dia',           'stnpc', 'Dia' },
  { 'battle 3 2',  'ma', 'Frazzle',       'stnpc', 'Fzzle' },
  { 'battle 3 2',  'ma', 'Frazzle II',    'stnpc', 'Fzzle2' },
  { 'battle 3 2',  'ma', 'Frazzle III',   'stnpc', 'Fzzle3' },
  { 'battle 3 3',  'ma', 'Distract',      'stnpc', 'Dstrct' },
  { 'battle 3 3',  'ma', 'Distract II',   'stnpc', 'Dstrct2' },
  { 'battle 3 3',  'ma', 'Distract III',  'stnpc', 'Dstrct3' },

  -- The Minor 4 debuffs next
  { 'battle 3 4',  'ma', 'Slow',          'stnpc', 'Slow' },
  { 'battle 3 4',  'ma', 'Slow II',       'stnpc', 'Slow2' },
  { 'battle 3 5',  'ma', 'Paralyze',      'stnpc', 'Para' },
  { 'battle 3 5',  'ma', 'Paralyze II',   'stnpc', 'Para2' },
  { 'battle 3 6',  'ma', 'Blind',         'stnpc', 'Blind' },
  { 'battle 3 6',  'ma', 'Blind II',      'stnpc', 'Blind2' },
  { 'battle 3 7',  'ma', 'Addle',         'stnpc', 'Addle' },
  { 'battle 3 7',  'ma', 'Addle II',      'stnpc', 'Addle2' },
  -- The situation debuffs last
  { 'battle 3 8',  'ma', 'Silence',       'stnpc', 'Silence' },
  { 'battle 3 9',  'ma', 'Gravity',       'stnpc', 'Gravity' },
  { 'battle 3 9',  'ma', 'Gravity II',    'stnpc', 'Gravity2' },
  { 'battle 3 10', 'ma', 'Bind',          'stnpc', 'Bind' },
  { 'battle 3 11', 'ma', 'Dispel',        'stnpc', 'Dispel' },
  { 'battle 3 12', 'ja', 'Stymie',        'me',    'Stymie' },


  -- Hotbar #4 Various Buffs / other spells
  { 'battle 4 1',  'ma', 'Blink',         'me',    'Blink' },
  { 'battle 4 2',  'ma', 'Stoneskin',     'me',    'Stnskin' },
  { 'battle 4 3',  'ma', 'Phalanx',       'me',    'Phalanx' },
  { 'battle 4 4',  'ma', 'Temper',        'me',    'Temper' },
  { 'battle 4 4',  'ma', 'Temper II',     'me',    'Temper2' },
  { 'battle 4 5',  'ma', 'Blaze Spikes',  'me',    'B. Spikes' },
  { 'battle 4 5',  'ma', 'Ice Spikes',    'me',    'I. Spikes' },
  { 'battle 4 5',  'ma', 'Shock Spikes',  'me',    'S. Spikes' },
  { 'battle 4 6',  'ma', 'Bio',           't',     'Bio' },
  { 'battle 4 6',  'ma', 'Bio II',        't',     'Bio2' },
  { 'battle 4 6',  'ma', 'Bio III',       't',     'Bio3' },

  --------------------------------------------------------------------------------------
  { 'battle 4 7',  'ma', 'Poison',        't',     'Poison' },
  { 'battle 4 7',  'ma', 'Poison II',     't',     'Poison2' },
  { 'battle 4 8',  'ma', 'Sleep',         'stnpc', 'Sleep' },
  { 'battle 4 9',  'ma', 'Sleep II',      'stnpc', 'Sleep2' },
  --------------------------------------------------------------------------------------
  { 'battle 4 10', 'ja', 'Convert',       'me',    'Convert' },
  { 'battle 4 11', 'ma', 'Raise',         'stpc',  'Raise' },
  { 'battle 4 11', 'ma', 'Raise II',      'stpc',  'Raise2' },

  --------------------------------------------------------------------------------------
  { 'battle 4 12', 'ja', 'Chainspell',    'me',    'C.Spell',  '2Hr' },

  -- Hotbar #5 Nukes
  { 'battle 5 1',  'ma', 'Stone',         'stnpc', 'Stone' },
  { 'battle 5 1',  'ma', 'Stone II',      'stnpc', 'Stone2' },
  { 'battle 5 1',  'ma', 'Stone III',     'stnpc', 'Stone3' },
  { 'battle 5 1',  'ma', 'Stone IV',      'stnpc', 'Stone4' },
  { 'battle 5 1',  'ma', 'Stone V',       'stnpc', 'Stone5' },

  --------------------------------------------------------------------------------------
  { 'battle 5 2',  'ma', 'Water',         'stnpc', 'Water' },
  { 'battle 5 2',  'ma', 'Water II',      'stnpc', 'Water2' },
  { 'battle 5 2',  'ma', 'Water III',     'stnpc', 'Water3' },
  { 'battle 5 2',  'ma', 'Water IV',      'stnpc', 'Water4' },
  { 'battle 5 2',  'ma', 'Water V',       'stnpc', 'Water5' },
  --------------------------------------------------------------------------------------
  { 'battle 5 3',  'ma', 'Aero',          'stnpc', 'Aero' },
  { 'battle 5 3',  'ma', 'Aero II',       'stnpc', 'Aero2' },
  { 'battle 5 3',  'ma', 'Aero III',      'stnpc', 'Aero3' },
  { 'battle 5 3',  'ma', 'Aero IV',       'stnpc', 'Aero4' },
  { 'battle 5 3',  'ma', 'Aero V',        'stnpc', 'Aero5' },
  --------------------------------------------------------------------------------------
  { 'battle 5 4',  'ma', 'Fire',          'stnpc', 'Fire' },
  { 'battle 5 4',  'ma', 'Fire II',       'stnpc', 'Fire2' },
  { 'battle 5 4',  'ma', 'Fire III',      'stnpc', 'Fire3' },
  { 'battle 5 4',  'ma', 'Fire IV',       'stnpc', 'Fire4' },
  { 'battle 5 4',  'ma', 'Fire V',        'stnpc', 'Fire5' },
  --------------------------------------------------------------------------------------
  { 'battle 5 5',  'ma', 'Blizzard',      'stnpc', 'Blizz' },
  { 'battle 5 5',  'ma', 'Blizzard II',   'stnpc', 'Blizz2' },
  { 'battle 5 5',  'ma', 'Blizzard III',  'stnpc', 'Blizz3' },
  { 'battle 5 5',  'ma', 'Blizzard IV',   'stnpc', 'Blizz4' },
  { 'battle 5 5',  'ma', 'Blizzard V',    'stnpc', 'Blizz5' },
  --------------------------------------------------------------------------------------
  { 'battle 5 6',  'ma', 'Thunder',       'stnpc', 'Thund' },
  { 'battle 5 6',  'ma', 'Thunder II',    'stnpc', 'Thund2' },
  { 'battle 5 6',  'ma', 'Thunder III',   'stnpc', 'Thund3' },
  { 'battle 5 6',  'ma', 'Thunder IV',    'stnpc', 'Thund4' },
  { 'battle 5 6',  'ma', 'Thunder V',     'stnpc', 'Thund5' },
  --------------------------------------------------------------------------------------
  { 'battle 5 7',  'ma', 'Break',         'stnpc', 'Break' },
  -- {'battle 5 8', '', '', '', ''},
  --{'battle 5 9', '', '', '', ''},
  { 'battle 5 10', 'ja', 'Spontaneity',   'me',    'Spont' },
  { 'battle 5 11', 'ja', 'Saboteur',      'me',    'Sabo' },
  { 'battle 5 12', 'ja', 'Composure',     'me',    'Comp.' },


  -- Hotbar #6 Utility
  { 'battle 6 1',  'ma', 'Barstone',      'me',    'Barston' },
  { 'battle 6 1',  'ma', 'Barstonra',     'stpc',  'Barston' },
  { 'battle 6 2',  'ma', 'Barwater',      'me',    'Barwater' },
  { 'battle 6 2',  'ma', 'Barwatera',     'stpc',  'Barwater' },
  { 'battle 6 3',  'ma', 'Baraero',       'me',    'Baraero' },
  { 'battle 6 3',  'ma', 'Baraera',       'stpc',  'Baraera' },
  { 'battle 6 4',  'ma', 'Barfire',       'me',    'Barfire' },
  { 'battle 6 4',  'ma', 'Barfira',       'stpc',  'Barfira' },
  { 'battle 6 5',  'ma', 'Barblizzard',   'me',    'Barblizz' },
  { 'battle 6 5',  'ma', 'Barblizzara',   'stpc',  'Barbliza' },
  { 'battle 6 6',  'ma', 'Barthunder',    'me',    'Barthun' },
  { 'battle 6 6',  'ma', 'Barthundra',    'stpc',  'Barthna' },
  { 'battle 6 7',  'ma', 'Enstone',       'me',    'Enstone' },
  { 'battle 6 7',  'ma', 'Enstone II',    'me',    'Enstone2' },
  { 'battle 6 8',  'ma', 'Enwater',       'me',    'Enwater' },
  { 'battle 6 8',  'ma', 'Enwater II',    'me',    'Enwater2' },
  { 'battle 6 9',  'ma', 'Enaero',        'me',    'Enaero' },
  { 'battle 6 9',  'ma', 'Enaero II',     'me',    'Enaero2' },
  { 'battle 6 10', 'ma', 'Enfire',        'me',    'Enfire' },
  { 'battle 6 10', 'ma', 'Enfire II',     'me',    'Enfire2' },
  { 'battle 6 11', 'ma', 'Enblizzard',    'me',    'Enblizz' },
  { 'battle 6 11', 'ma', 'Enblizzard II', 'me',    'Enblizz2' },
  { 'battle 6 12', 'ma', 'Enthunder',     'me',    'Enthun' },
  { 'battle 6 12', 'ma', 'Enthunder II',  'me',    'Enthun2' },
}

xivhotbar_keybinds_job['BLM'] = {
  { 'battle 2 1', 'ma', 'Stun',           't',    'Stun' },
  { 'battle 2 2', 'ma', 'Sleepga',        'stpc', 'Sleepga' },
  { 'battle 2 3', 'ma', 'Drain',          'stpc', 'Drain' },
  { 'battle 2 4', 'ma', 'Aspir',          'stpc', 'Aspir' },
  { 'battle 2 9', 'ja', 'Elemental Seal', 'me',   'E.Seal' },
}

xivhotbar_keybinds_job['SCH'] = {
  -- BAR 2
  { 'battle 2 1',  'ma', 'Poisona',         'stpc', 'Poisona' },
  { 'battle 2 2',  'ma', 'Paralyna',        'stpc', 'Paralyna' },
  { 'battle 2 3',  'ma', 'Blindna',         'stpc', 'Blindna' },
  { 'battle 2 4',  'ma', 'Silena',          'stpc', 'Silena' },
  { 'battle 2 5',  'ma', 'Cursna',          'stpc', 'Cursna' },
  { 'battle 2 6',  'ma', 'Viruna',          'stpc', 'Viruna' },
  { 'battle 2 7',  'ma', 'Stona',           'stpc', 'Stona' },
  { 'battle 2 8',  'ma', 'Erase',           'stpc', 'Erase' },
  { 'battle 2 9',  'ma', 'Klimaform',       'me',   'Klima' },
  { 'battle 2 10', 'ja', 'Addendum: White', 'me',   'Add.Wht' },
  { 'battle 2 10', 'ja', 'Addendum: Black', 'me',   'Add.Blk' },
  { 'battle 2 11', 'ja', 'Light Arts',      'me',   'Light' },
  { 'battle 2 12', 'ja', 'Dark Arts',       'me',   'Dark' },

  -- OVERWRITE THE BAR SPELLS  IF SCH
  { 'battle 6 1',  'ja', 'Penury',          'me',   'Penury' },
  { 'battle 6 1',  'ja', 'Parsimony',       'me',   'Parsmy' },
  { 'battle 6 2',  'ja', 'Celerity',        'me',   'Celrty' },
  { 'battle 6 2',  'ja', 'Alacrity',        'me',   'Alacty' },
  { 'battle 6 3',  'ja', 'Accession',       'me',   'Accssn' },
  { 'battle 6 3',  'ja', 'Manifestation',   'me',   'Manifst' },
  { 'battle 6 4',  'ja', 'Rapture',         'me',   'Raptur' },
  { 'battle 6 4',  'ja', 'Ebullience',      'me',   'Ebull' },
  { 'battle 6 5',  'ja', 'Sublimation',     'me',   'Sublim' },

  -- OVERWRITE THE EN-SPELLS IF ON SCH
  { 'battle 6 7',  'me', 'Sandstorm',       'stpc', 'Sand' },
  { 'battle 6 8',  'me', 'Rainstorm',       'stpc', 'Rain' },
  { 'battle 6 9',  'me', 'Windstorm',       'stpc', 'Wind' },
  { 'battle 6 10', 'me', 'Firestorm',       'stpc', 'Fire' },
  { 'battle 6 11', 'me', 'Hailstorm',       'stpc', 'Hail' },
  { 'battle 6 12', 'me', 'Thunderstorm',    'stpc', 'Thdr' },
}


xivhotbar_keybinds_job['WHM'] = {
  { 'battle 2 1',  'ma', 'Poisona',     'stpc', 'Poisona' },
  { 'battle 2 2',  'ma', 'Paralyna',    'stpc', 'Paralyna' },
  { 'battle 2 3',  'ma', 'Blindna',     'stpc', 'Blindna' },
  { 'battle 2 4',  'ma', 'Silena',      'stpc', 'Silena' },
  { 'battle 2 5',  'ma', 'Cursna',      'stpc', 'Cursna' },
  { 'battle 2 6',  'ma', 'Viruna',      'stpc', 'Viruna' },
  { 'battle 2 7',  'ma', 'Stona',       'stpc', 'Stona' },
  { 'battle 2 8',  'ma', 'Erase',       'stpc', 'Erase' },
  { 'battle 2 9',  'ja', 'Divine Seal', 'me',   'Div.Seal' },
  --------------------------------------------------------------------------------------
  { 'battle 2 10', 'ma', 'Curaga',      'stpc', 'Curaga' },
  { 'battle 2 10', 'ma', 'Curaga II',   'stpc', 'Curaga2' },
  { 'battle 2 10', 'ma', 'Curaga III',  'stpc', 'Curaga3' },
  --------------------------------------------------------------------------------------
  { 'battle 2 11', 'ma', 'Reraise',     'me',   'Reraise' },
}

xivhotbar_keybinds_job['NIN'] = {
  { 'battle 2 1',  'ma', 'Utsusemi: Ni',     'me', 'Ni' },
  { 'battle 2 2',  'ma', 'Utsusemi: Ichi',   'me', 'Ichi' },

  --more sword WS because we have room
  { 'battle 2 3',  'ws', 'Fast Blade',       't',  'Fast' },
  { 'battle 2 4',  'ws', 'Spirits Within',   't',  'Spirits' },
  { 'battle 2 5',  'ws', 'Vorpal Blade',     't',  'Vorpal' },   -- war rdm pld drk blu run
  { 'battle 2 6',  'ws', 'Savage Blade',     't',  'Savage' },   -- war rdm pld drk blu cor run
  { 'battle 2 7',  'ws', 'Sanguine Blade',   't',  'Sanguine' }, -- war rdm pld drk blu run
  { 'battle 2 8',  'ws', 'Imperator',        't',  'Imperator' },
  { 'battle 2 9',  'ws', 'Death Blossom',    't',  'D Blsm' },   -- rdm
  { 'battle 2 10', 'ws', 'Requiescat',       't',  'Requisct' }, -- war rdm pld drk sam blu cor run
  { 'battle 2 11', 'ws', 'Chant du Cygne',   't',  'duCygne' },
  { 'battle 2 12', 'ws', 'Knights of Round', 't',  'KotR' },     -- rdm pld blu relic
}

xivhotbar_keybinds_job['THF'] = {
  { 'battle 2 1',  'ja', 'Sneak Attack',     'me', 'Sneak' },
  { 'battle 2 2',  'ja', 'Trick Attack',     'me', 'Trick' },
  { 'battle 2 3',  'ja', 'Flee',             'me', 'Flee' },

  --more sword WS because we have room
  { 'battle 2 4',  'ws', 'Spirits Within',   't',  'Spirits' },
  { 'battle 2 5',  'ws', 'Vorpal Blade',     't',  'Vorpal' },   -- war rdm pld drk blu run
  { 'battle 2 6',  'ws', 'Savage Blade',     't',  'Savage' },   -- war rdm pld drk blu cor run
  { 'battle 2 7',  'ws', 'Sanguine Blade',   't',  'Sanguine' }, -- war rdm pld drk blu run
  { 'battle 2 8',  'ws', 'Imperator',        't',  'Imperator' },
  { 'battle 2 9',  'ws', 'Death Blossom',    't',  'D Blsm' },   -- rdm
  { 'battle 2 10', 'ws', 'Requiescat',       't',  'Requisct' }, -- war rdm pld drk sam blu cor run
  { 'battle 2 11', 'ws', 'Chant du Cygne',   't',  'duCygne' },
  { 'battle 2 12', 'ws', 'Knights of Round', 't',  'KotR' },     -- rdm pld blu relic
}

xivhotbar_keybinds_job['PLD'] = {
  { 'battle 2 1',  'ja', 'Holy Circle',      'me',    'H.Circle' },
  { 'battle 2 2',  'ja', 'Shield Bash',      't',     'S.Bash' },
  { 'battle 2 3',  'ja', 'Sentinel',         'me',    'Sent.' },
  { 'battle 2 4',  'ja', 'Cover',            'stpc',  'Cover' },
  { 'battle 2 5',  'ma', 'Flash',            'stnpc', 'Flash' },

  --more sword WS because we have room
  { 'battle 2 6',  'ws', 'Spirits Within',   't',     'Spirits' },
  { 'battle 2 7',  'ws', 'Sanguine Blade',   't',     'Sanguine' }, -- war rdm pld drk blu run
  { 'battle 2 8',  'ws', 'Imperator',        't',     'Imperator' },
  { 'battle 2 9',  'ws', 'Death Blossom',    't',     'D Blsm' },   -- rdm
  { 'battle 2 10', 'ws', 'Requiescat',       't',     'Requisct' }, -- war rdm pld drk sam blu cor run
  { 'battle 2 11', 'ws', 'Chant du Cygne',   't',     'duCygne' },
  { 'battle 2 12', 'ws', 'Knights of Round', 't',     'KotR' },     -- rdm pld blu relic
}

xivhotbar_keybinds_job['DRK'] = {
  { 'battle 2 1',  'ma', 'Stun',             't',  'Stun' },
  { 'battle 2 2',  'ja', 'Arcane Circle',    'me', 'A.Circle' },
  { 'battle 2 3',  'ja', 'Last Resort',      'me', 'Lt.Resort' },
  { 'battle 2 4',  'ja', 'Souleater',        'me', 'SoulEat' },
  { 'battle 2 6',  'ja', 'Consume Mana',     'me', 'Consume' },

  --more sword WS because we have room
  { 'battle 2 7',  'ws', 'Spirits Within',   't',  'Spirits' },
  { 'battle 2 8',  'ws', 'Sanguine Blade',   't',  'Sanguine' }, -- war rdm pld drk blu run
  { 'battle 2 9',  'ws', 'Death Blossom',    't',  'D Blsm' },   -- rdm
  { 'battle 2 10', 'ws', 'Requiescat',       't',  'Requisct' }, -- war rdm pld drk sam blu cor run
  { 'battle 2 11', 'ws', 'Chant du Cygne',   't',  'duCygne' },
  { 'battle 2 12', 'ws', 'Knights of Round', 't',  'KotR' },     -- rdm pld blu relic
}

xivhotbar_keybinds_job['WAR'] = {
  { 'battle 2 1',  'ja', 'Provoke',          'stnpc', 'Voke',     'ffxiv/war/defiance' },
  { 'battle 2 2',  'ja', 'Berserk',          'me',    'Brsrk',    'ffxiv/war/berserk' },
  { 'battle 2 3',  'ja', 'Defender',         'me',    'Dfnd',     'ffxiv/war/shake_it_off' },
  { 'battle 2 4',  'ja', 'Warcry',           'me',    'Wrcry',    'ffxiv/war/inner_beast' },
  { 'battle 2 5',  'ja', 'Aggressor',        'me',    'Aggrsr',   'ffxiv/war/onslaught' },

  --more sword WS because we have room
  { 'battle 2 6',  'ws', 'Spirits Within',   't',     'Spirits' },
  { 'battle 2 7',  'ws', 'Sanguine Blade',   't',     'Sanguine' }, -- war rdm pld drk blu run
  { 'battle 2 8',  'ws', 'Imperator',        't',     'Imperator' },
  { 'battle 2 9',  'ws', 'Death Blossom',    't',     'D Blsm' },   -- rdm
  { 'battle 2 10', 'ws', 'Requiescat',       't',     'Requisct' }, -- war rdm pld drk sam blu cor run
  { 'battle 2 11', 'ws', 'Chant du Cygne',   't',     'duCygne' },
  { 'battle 2 12', 'ws', 'Knights of Round', 't',     'KotR' },     -- rdm pld blu relic
}

xivhotbar_keybinds_job['DNC'] = {
  -- Sambas
  { 'battle 2 1',  'ja', 'Haste Samba',       'me',    'Haste',    'ffxiv/dnc/pirouette' },
  { 'battle 2 2',  'ja', 'Drain Samba',       'me',    'Drain',    'ffxiv/dnc/emboite' },
  { 'battle 2 2',  'ja', 'Drain Samba II',    'me',    'Drain2',   'ffxiv/dnc/emboite' },
  -- {'battle 2 3', 'ja', 'Aspir Samba', 'me', 'Aspir','ffxiv/dnc/jete'},
  -- Waltzes
  { 'battle 2 3',  'ja', 'Curing Waltz',      'stpc',  'CurW',     'ffxiv/dnc/curing_waltz' },
  { 'battle 2 3',  'ja', 'Curing Waltz II',   'stpc',  'CurW2',    'ffxiv/dnc/curing_waltz' },
  { 'battle 2 3',  'ja', 'Curing Waltz III',  'stpc',  'CurW3',    'ffxiv/dnc/curing_waltz' },
  { 'battle 2 4',  'ja', 'Divine Waltz',      'stpc',  'Divine',   'ffxiv/dnc/improvised_finish' },
  { 'battle 2 5',  'ja', 'Healing Waltz',     'stpc',  'Healing',  'ffxiv/dnc/shield_samba' },
  { 'battle 2 8',  'ja', 'Contradance',       'me',    'Contra',   'ffxiv/dnc/tillana' }, -- mastery
  -- Steps
  { 'battle 2 6',  'ja', 'Quickstep',         'stnpc', 'Quick',    'ffxiv/dnc/en_avant' },
  { 'battle 2 7',  'ja', 'Box Step',          'stnpc', 'Box',      'ffxiv/dnc/bladeshower' },
  -- {'battle 3 9', 'ja', 'Stutter Step', 'stnpc', 'Stutter','ffxiv/dnc/fountainfall'},
  -- Flourishes
  { 'battle 2 12', 'ja', 'Animated Flourish', 'stnpc', 'Voke',     'ffxiv/dnc/closed_position' },
  { 'battle 2 9',  'ja', 'Violent Flourish',  'stnpc', 'Stun',     'ffxiv/dnc/starfall_dance' },
  { 'battle 2 10', 'ja', 'Reverse Flourish',  'me',    'Reverse',  'ffxiv/dnc/reverse_cascade' },
  { 'battle 2 11', 'ja', 'Building Flourish', 'me',    'Building', 'ffxiv/dnc/flourish' },
  -- Jigs
  -- {'battle 3 8', 'ja', 'Spectral Jig', 'me', 'Spectral','ffxiv/dnc/fan_dance_IV'},
  -- {'battle 3 8', 'ja', 'Chocobo Jig', 'me', 'Chocobo','ffxiv/dnc/entrechat'}, -- mastery
}

xivhotbar_keybinds_job['Sword'] = {
  -- Heavy Hit
  { 'battle 1 8',  'ws', 'Fast Blade',       't', 'Fast' },
  { 'battle 1 8',  'ws', 'Spirits Within',   't', 'Spirits' },
  -- Multi-Hit
  { 'battle 1 8',  'ws', 'Vorpal Blade',     't', 'Vorpal' }, -- war rdm pld drk blu run
  { 'battle 1 8',  'ws', 'Savage Blade',     't', 'Savage' }, -- war rdm pld drk blu cor run
  -- Fire
  { 'battle 1 9',  'ws', 'Burning Blade',    't', 'Burning' },
  { 'battle 1 9',  'ws', 'Red Lotus Blade',  't', 'RLotus' }, -- war rdm pld drk blu
  -- Light
  { 'battle 1 10', 'ws', 'Shining Blade',    't', 'Shining' },
  { 'battle 1 10', 'ws', 'Seraph Blade',     't', 'Seraph' },   -- war rdm pld drk blu run
  -- Specials
  { 'battle 1 11', 'ws', 'Sanguine Blade',   't', 'Sanguine' }, -- war rdm pld drk blu run
  -- Prime #6
  { 'battle 1 11', 'ws', 'Imperator',        't', 'Imperator' },
  -- Class Specific #7
  { 'battle 1 11', 'ws', 'Death Blossom',    't', 'D Blsm' },   -- rdm
  -- Merit Point #8
  { 'battle 1 11', 'ws', 'Requiescat',       't', 'Requisct' }, -- war rdm pld drk sam blu cor run
  -- Empyrean (Abyssea only)  #9
  { 'battle 1 11', 'ws', 'Chant du Cygne',   't', 'duCygne' },
  -- Relic (only usable with specific weapon equips) #10
  { 'battle 1 11', 'ws', 'Knights of Round', 't', 'KotR' }, -- rdm pld blu relic
  -- AoE Ws #11
  --{'battle 1 11', 'ws', 'Circle Blade', 't', 'Circle'},
  -- Stun WS #12
  --{'battle 1 11', 'ws', 'Flat Blade', 't', 'Flat'},
}







return xivhotbar_keybinds_job
