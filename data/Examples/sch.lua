-- Add
-- Kaustra
-- Embrava

-- Load and initialize the include file.
xivhotbar_keybinds_job['Base'] = {

  -- Hotbar #1
  -- Reserved for Arts

  -- Hotbar #2
  -- Reserved for Arts

  -- Hotbar #3
  -- Subjob

  -- Hotbar #4
  { 'battle 4 1',  'ma', 'Blink',            'me',    'Blink' },
  { 'battle 4 2',  'ma', 'Stoneskin',        'me',    'Stoneskin' },
  { 'battle 4 3',  'ja', 'Sublimation',      'me',    'Sublim' },
  { 'battle 4 4',  'ja', 'Modus Veritas',    'stnpc', 'Veritas' },
  { 'battle 4 5',  'ja', 'Enlightenment',    'me',    'Enlghmt' },
  { 'battle 4 6',  'ja', 'Libra',            't',     'Libra' },
  --{'battle 4 7', '', '', '', ''}, -- reserved for sub
  --------------------------------------------------------------------------------------
  { 'battle 4 8',  'ma', 'Raise',            'stpc',  'Raise' },
  { 'battle 4 8',  'ma', 'Raise II',         'stpc',  'Raise2' },
  { 'battle 4 8',  'ma', 'Raise III',        'stpc',  'Raise3' },
  --------------------------------------------------------------------------------------
  -- { 'battle 4 10', 'ma', 'Protect',          'stpc', 'Prot' },
  -- { 'battle 4 10', 'ma', 'Protect II',       'stpc', 'Prot2' },
  -- { 'battle 4 10', 'ma', 'Protect III',      'stpc', 'Prot3' },
  -- { 'battle 4 10', 'ma', 'Protect IV',       'stpc', 'Prot4' },
  -- { 'battle 4 10', 'ma', 'Protect V',        'stpc', 'Prot5' },
  --------------------------------------------------------------------------------------
  -- { 'battle 4 11', 'ma', 'Shell',            'stpc', 'Shell' },
  -- { 'battle 4 11', 'ma', 'Shell II',         'stpc', 'Shell2' },
  -- { 'battle 4 11', 'ma', 'Shell III',        'stpc', 'Shell3' },
  -- { 'battle 4 11', 'ma', 'Shell IV',         'stpc', 'Shell4' },
  -- { 'battle 4 11', 'ma', 'Shell V',          'stpc', 'Shell5' },

  { 'battle 4 11', 'ja', 'Caper Emissarius', 'stpc',  'Caper' },
  { 'battle 4 12', 'ja', 'Tabula Rasa',      'me',    'TabulaR',  '2hr' },

  -- Hotbar #5
  { 'battle 5 1',  'ma', 'Sandstorm',        'stpc',  'Sand' },
  { 'battle 5 1',  'ma', 'Sandstorm II',     'stpc',  'Sand2' },
  { 'battle 5 2',  'ma', 'Rainstorm',        'stpc',  'Rain' },
  { 'battle 5 2',  'ma', 'Rainstorm II',     'stpc',  'Rain2' },
  { 'battle 5 3',  'ma', 'Windstorm',        'stpc',  'Wind' },
  { 'battle 5 3',  'ma', 'Windstorm II',     'stpc',  'Wind2' },
  { 'battle 5 4',  'ma', 'Firestorm',        'stpc',  'Fire' },
  { 'battle 5 4',  'ma', 'Firestorm II',     'stpc',  'Fire2' },
  { 'battle 5 5',  'ma', 'Hailstorm',        'stpc',  'Hail' },
  { 'battle 5 5',  'ma', 'Hailstorm II',     'stpc',  'Hail2' },
  { 'battle 5 6',  'ma', 'Thunderstorm',     'stpc',  'Thdr' },
  { 'battle 5 6',  'ma', 'Thunderstorm II',  'stpc',  'Thdr2' },
  { 'battle 5 7',  'ma', 'Voidstorm',        'stpc',  'Void' },
  { 'battle 5 7',  'ma', 'Voidstorm II',     'stpc',  'Void2' },
  { 'battle 5 8',  'ma', 'Aurorastorm',      'stpc',  'Aurora' },
  { 'battle 5 8',  'ma', 'Aurorastorm II',   'stpc',  'Aurora2' },

  -- Hotbar #6
  { 'battle 6 1',  'ja', 'Dark Arts',        'me',    'Dark' },
  { 'battle 6 7',  'ja', 'Light Arts',       'me',    'Light' },
  { 'battle 6 8',  'ja', 'Addendum: White',  'me',    'Add.Wht' },
  { 'battle 6 2',  'ja', 'Addendum: Black',  'me',    'Add.Blk' },

  { 'battle 6 4',  'ja', 'Penury',           'me',    'Penury' },
  { 'battle 6 4',  'ja', 'Parsimony',        'me',    'Parsmy' },
  { 'battle 6 5',  'ja', 'Celerity',         'me',    'Celrty' },
  { 'battle 6 5',  'ja', 'Alacrity',         'me',    'Alacty' },
  { 'battle 6 6',  'ja', 'Accession',        'me',    'Accssn' },
  { 'battle 6 6',  'ja', 'Manifestation',    'me',    'Manifst' },
  { 'battle 6 9',  'ja', 'Rapture',          'me',    'Raptur' },
  { 'battle 6 9',  'ja', 'Ebullience',       'me',    'Ebull' },
  { 'battle 6 10', 'ja', 'Altruism',         'me',    'Altru' },
  { 'battle 6 10', 'ja', 'Focalization',     'me',    'Focal' },
  { 'battle 6 11', 'ja', 'Tranquility',      'me',    'Tranq' },
  { 'battle 6 11', 'ja', 'Equanimity',       'me',    'Equan' },
  { 'battle 6 12', 'ja', 'Perpetuance',      'me',    'Perp' },
  { 'battle 6 12', 'ja', 'Immanence',        'me',    'Imma' },
}

xivhotbar_keybinds_job['Light Arts'] = {
  -- Hotbar #1 (1-12)
  { 'battle 1 1',  'ma', 'Cure',         'stpc', 'Cure1' },
  { 'battle 1 2',  'ma', 'Cure II',      'stpc', 'Cure2' },
  { 'battle 1 3',  'ma', 'Cure III',     'stpc', 'Cure3' },
  { 'battle 1 4',  'ma', 'Cure IV',      'stpc', 'Cure4' },
  { 'battle 1 7',  'ma', 'Haste',        'stpc', 'Haste' },
  --------------------------------------------------------------------------------------
  { 'battle 1 8',  'ma', 'Regen',        'stpc', 'Regen' },
  { 'battle 1 8',  'ma', 'Regen II',     'stpc', 'Regen2' },
  { 'battle 1 8',  'ma', 'Regen III',    'stpc', 'Regen3' },
  { 'battle 1 8',  'ma', 'Regen IV',     'stpc', 'Regen4' },
  { 'battle 1 8',  'ma', 'Regen V',      'stpc', 'Regen5' },
  --------------------------------------------------------------------------------------
  { 'battle 1 9',  'ma', 'Animus Augeo', 'stpc', '',        'Augeo' },
  { 'battle 1 10', 'ma', 'Animus Minuo', 'stpc', '',        'Minuo' },
  { 'battle 1 11', 'ma', 'Adloquium',    'stpc', '',        'Adloq' },
  -- {'battle 2 9', '', '', '', ''},  -- reserved for sub

  -- Hotbar #2 (ALT 1-12)
  { 'battle 2 1',  'ma', 'Poisona',      'stpc', 'Poisona' },
  { 'battle 2 2',  'ma', 'Paralyna',     'stpc', 'Paralyna' },
  { 'battle 2 3',  'ma', 'Blindna',      'stpc', 'Blindna' },
  { 'battle 2 4',  'ma', 'Silena',       'stpc', 'Silena' },
  { 'battle 2 5',  'ma', 'Cursna',       'stpc', 'Cursna' },
  { 'battle 2 6',  'ma', 'Viruna',       'stpc', 'Viruna' },
  { 'battle 2 7',  'ma', 'Stona',        'stpc', 'Stona' },
  { 'battle 2 8',  'ma', 'Erase',        'stpc', 'Erase' },
  --------------------------------------------------------------------------------------
  -- {'battle 2 9', '', '', '', ''},  -- reserved for sub
  --------------------------------------------------------------------------------------
  { 'battle 2 10', 'ma', 'Reraise',      'me',   'Reraise' },
  { 'battle 2 10', 'ma', 'Reraise II',   'me',   'Reraise2' },
  { 'battle 2 10', 'ma', 'Reraise III',  'me',   'Reraise3' },
  --{'battle 2 11', '', '', '', ''}, -- reserved for sub
  --{'battle 2 12', '', '', '', ''}, -- reserved for sub


  -- Hotbar #3 (CTRL 1-12)
  -- Mostly reserved for sub job
  { 'battle 3 12', 'ma', 'Embrava',      'stpc', 'Embrava' },

  -- Hotbar #4 (SHIFT 1-12)
  --{'battle 4 7', '', '', '', ''}, -- reserved for sub
  --------------------------------------------------------------------------------------
  { 'battle 4 8',  'ma', 'Raise',        'stpc', 'Raise' },
  { 'battle 4 8',  'ma', 'Raise II',     'stpc', 'Raise2' },
  { 'battle 4 8',  'ma', 'Raise III',    'stpc', 'Raise3' },
  --------------------------------------------------------------------------------------
}

xivhotbar_keybinds_job['Dark Arts'] = {
  -- Hotbar #1 (1-12)
  -- Black Elemental
  { 'battle 1 1',  'ma', 'Stone',        't',     'Stone' },
  { 'battle 1 1',  'ma', 'Stone II',     't',     'Stone2' },
  { 'battle 1 1',  'ma', 'Stone IV',     't',     'Stone4' },
  { 'battle 1 1',  'ma', 'Stone V',      't',     'Stone5' },
  { 'battle 1 2',  'ma', 'Water',        't',     'Water' },
  { 'battle 1 2',  'ma', 'Water II',     't',     'Water2' },
  { 'battle 1 2',  'ma', 'Water III',    't',     'Water3' },
  { 'battle 1 2',  'ma', 'Water IV',     't',     'Water4' },
  { 'battle 1 2',  'ma', 'Water V',      't',     'Water5' },
  { 'battle 1 3',  'ma', 'Aero',         't',     'Aero' },
  { 'battle 1 3',  'ma', 'Aero II',      't',     'Aero2' },
  { 'battle 1 3',  'ma', 'Aero III',     't',     'Aero3' },
  { 'battle 1 3',  'ma', 'Aero IV',      't',     'Aero4' },
  { 'battle 1 3',  'ma', 'Aero V',       't',     'Aero5' },
  { 'battle 1 4',  'ma', 'Fire',         't',     'Fire' },
  { 'battle 1 4',  'ma', 'Fire II',      't',     'Fire2' },
  { 'battle 1 4',  'ma', 'Fire III',     't',     'Fire3' },
  { 'battle 1 4',  'ma', 'Fire IV',      't',     'Fire4' },
  { 'battle 1 4',  'ma', 'Fire V',       't',     'Fire5' },
  { 'battle 1 5',  'ma', 'Blizzard',     't',     'Blizz' },
  { 'battle 1 5',  'ma', 'Blizzard II',  't',     'Blizz2' },
  { 'battle 1 5',  'ma', 'Blizzard III', 't',     'Blizz3' },
  { 'battle 1 5',  'ma', 'Blizzard IV',  't',     'Blizz4' },
  { 'battle 1 5',  'ma', 'Blizzard V',   't',     'Blizz5' },
  { 'battle 1 6',  'ma', 'Thunder',      't',     'Thund' },
  { 'battle 1 6',  'ma', 'Thunder II',   't',     'Thund2' },
  { 'battle 1 6',  'ma', 'Thunder III',  't',     'Thund3' },
  { 'battle 1 6',  'ma', 'Thunder IV',   't',     'Thund4' },
  { 'battle 1 6',  'ma', 'Thunder V',    't',     'Thund5' },
  -- Black Enfeeblement
  { 'battle 1 7',  'ma', 'Sleep',        'stnpc', 'Sleep' },
  { 'battle 1 8',  'ma', 'Sleep II',     'stnpc', 'Sleep2' },
  { 'battle 1 9',  'ma', 'Break',        'stnpc', 'Break' },
  { 'battle 1 10', 'ma', 'Dispel',       'stnpc', 'Dispel' },
  { 'battle 1 11', 'ma', 'Klimaform',    'me',    'Klima' },
  --{'battle 1 12', '', '', '', ''}, -- reserved for sub

  -- Hotbar #2 (ALT 1-12)
  -- Helix
  { 'battle 2 1',  'ma', 'Geohelix',     't',     'Geo' },
  { 'battle 2 2',  'ma', 'Hydrohelix',   't',     'Hydro' },
  { 'battle 2 3',  'ma', 'Anemohelix',   't',     'Anemo' },
  { 'battle 2 4',  'ma', 'Pyrohelix',    't',     'Pyro' },
  { 'battle 2 5',  'ma', 'Cryohelix',    't',     'Cryo' },
  { 'battle 2 6',  'ma', 'Ionohelix',    't',     'Iono' },
  { 'battle 2 7',  'ma', 'Noctohelix',   't',     'Nocto' },
  { 'battle 2 8',  'ma', 'Luminohelix',  't',     'Lumino' },
  --------------------------------------------------------------------------------------
  -- {'battle 2 9', '', '', '', ''},  -- reserved for sub
  --------------------------------------------------------------------------------------
  --- Spikes
  { 'battle 2 10', 'ma', 'Blaze Spikes', 'me',    'B. Spikes' },
  { 'battle 2 10', 'ma', 'Ice Spikes',   'me',    'I. Spikes' },
  { 'battle 2 10', 'ma', 'Shock Spikes', 'me',    'S. Spikes' },
  --{'battle 2 11', '', '', '', ''}, -- reserved for sub
  --{'battle 2 12', '', '', '', ''}, -- reserved for sub


  -- Hotbar #3 (CTRL 1-12)
  -- Mostly reserved for sub job
  { 'battle 3 12', 'ma', 'Kaustra',      'stnpc', 'Kaustra' },

  -- Hotbar #4 (SHIFT 1-12)

  --{'battle 4 7', '', '', '', ''}, -- reserved for sub
  --------------------------------------------------------------------------------------
  { 'battle 4 9',  'ma', 'Drain',        't',     'Drain' },
  { 'battle 4 10', 'ma', 'Aspir',        't',     'Aspir' },
  { 'battle 4 10', 'ma', 'Aspir II',     't',     'Aspir2' },
}

-- SUBJOBS
-- Uses...
---- Hotbar 1 12
---- Hotbar 2 9 -- job ability
---- Hotbar 2 11
---- Hotbar 2 12
---- Hotbar 3 1-11
---- Hotbar 4 7
xivhotbar_keybinds_job['WHM'] = {
  -- Abilities
  { 'battle 2 9',  'ja', 'Divine Seal',  'me',    'Divine',    'ffxiv/whm/divine_benison' },
  -- Enfeeblement
  { 'battle 3 2',  'ma', 'Paralyze',     't',     'Para' },
  { 'battle 3 3',  'ma', 'Slow',         't',     'Slow' },
  { 'battle 3 4',  'ma', 'Silence',      'stnpc', 'Silence' },
  { 'battle 3 1',  'ma', 'Dia',          't',     'Dia' },
  { 'battle 3 1',  'ma', 'Dia II',       't',     'Dia II' },
  { 'battle 4 7',  'ma', 'Repose',       'stnpc', 'Repose' },
  -- { 'battle 3 9',  'ma', 'Flash',        'stnpc', 'Flash',     'ffxiv/pld/flash' },
  -- { 'battle 3 1',  'ma', 'Aquaveil',     'me',    'Aquaveil' },
  -- Barspells
  { 'battle 3 7',  'ma', 'Barsleepra',   'me',    'Sleepra',   '' },
  -- { 'battle 3 7',  'ma', 'Barpoisonra',  'me',    'Poisonra',  '' },
  { 'battle 3 8',  'ma', 'Barparalyzra', 'me',    'Paralyzra', '' },
  -- { 'battle 3 7',  'ma', 'Barstonra',    'me',    'Stonra',    'Barstonra' },
  -- { 'battle 3 8',  'ma', 'Barwatera',    'me',    'Watera',    'Barwatera' },
  -- { 'battle 3 8',  'ma', 'Baraera',      'me',    'Aera',      'Baraera' },
  -- { 'battle 3 4',  'ma', 'Barfira',      'me',    'Fira',      'Barfira' },
  -- { 'battle 3 4',  'ma', 'Barblindra',   'me',    'Blindra',   '' },
  -- { 'battle 3 5',  'ma', 'Barblizzara',  'me',    'Blizzara',  'Barblizzara' },
  -- { 'battle 3 5',  'ma', 'Barsilencera', 'me',    'Silencera' },
  { 'battle 3 10', 'ma', 'Barthundra',   'me',    'Thundra',   'Barthundra' },
  -- { 'battle 3 6',  'ma', 'Barvira',      'me',    'Vira' },
  { 'battle 3 9',  'ma', 'Barpetra',     'me',    'Petra' },
  -- Atk
  { 'battle 3 5',  'ma', 'Banish',       't',     'Banish' },
  { 'battle 3 5',  'ma', 'Banish II',    't',     'Banish2' },
  { 'battle 3 6',  'ma', 'Holy',         't',     'Holy' }, -- mastery
  -- Regen
  -- { 'battle 3 11', 'ma', 'Regen',        'stpc',  'Regen' },
  -- { 'battle 3 11', 'ma', 'Regen II',     'stpc',  'Regen2' },
  -- Cure
  -- { 'battle 3 10', 'ma', 'Cure',         'stpc',  'Cure' },
  -- { 'battle 3 10', 'ma', 'Cure II',      'stpc',  'Cure2' },
  -- { 'battle 3 10', 'ma', 'Cure III',     'stpc',  'Cure3' },
  -- { 'battle 3 10', 'ma', 'Cure IV',      'stpc',  'Cure4' },
  -- Cura
  { 'battle 1 12', 'ma', 'Cura',         'me',    'Cura' },
  -- Curaga
  -- { 'battle 3 12', 'ma', 'Curaga',       'stpc',  'Curaga' },
  -- { 'battle 3 12', 'ma', 'Curaga II',    'stpc',  'Curaga2' },
  -- { 'battle 3 12', 'ma', 'Curaga III',   'stpc',  'Curaga3' }, -- mastery
  -- Supportive
  -- { 'battle 3 1',  'ma', 'Poisona',      'stpc',  'Poisona' },
  -- { 'battle 3 2',  'ma', 'Paralyna',     'stpc',  'Paralyna' },
  -- { 'battle 3 3',  'ma', 'Blindna',      'stpc',  'Blindna' },
  -- { 'battle 3 4',  'ma', 'Silena',       'stpc',  'Silena' },
  -- { 'battle 3 6',  'ma', 'Blink',        'me',    'Blink' },
  -- { 'battle 3 7',  'ma', 'Stoneskin',    'me',    'StnSkin' },
  -- { 'battle 3 5',  'ma', 'Cursna',       'stpc',  'Cursna' },
  -- { 'battle 3 7',  'ma', 'Erase',        'stpc',  'Erase' },
  -- { 'battle 3 6',  'ma', 'Viruna',       'stpc',  'Viruna' },
  -- { 'battle 3 4',  'ma', 'Stona',        'stpc',  'Stona' },
  { 'battle 2 12', 'ma', 'Haste',        'stpc',  'Haste' },
  { 'battle 3 11', 'ma', 'Auspice',      'me',    'Ausp' }, -- mastery
}

xivhotbar_keybinds_job['BLM'] = {
  -- Abilities
  { 'battle 2 9',  'ja', 'Elemental Seal', 'me',    'E Seal',  'ffxiv/blm/foul' },
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
  { 'battle 3 2',  'ma', 'Poison',         't',     'Poison' },
  { 'battle 3 2',  'ma', 'Poison II',      't',     'Poison2' },
  -- { 'battle 3 2',  'ma', 'Poisonga',       'stpc',  'Psnga' },
  { 'battle 3 3',  'ma', 'Blind',          't',     'Blind' },
  { 'battle 3 4',  'ma', 'Bind',           'stnpc', 'Bind' },
  { 'battle 3 1',  'ma', 'Bio',            't',     'Bio' },
  { 'battle 3 1',  'ma', 'Bio II',         't',     'Bio2' },
  -- { 'battle 3 2',  'ma', 'Sleep',          'stnpc', 'Sleep' },
  -- { 'battle 3 2',  'ma', 'Sleep II',       'stnpc', 'Sleep2' }, -- mastery
  { 'battle 1 12', 'ma', 'Stun',           't',     'Stun' },
  { 'battle 3 5',  'ma', 'Sleepga',        'stnpc', 'Sleepga' },
  { 'battle 3 6',  'ma', 'Sleepga II',     'stnpc', 'Sleepga2' }, -- mastery
  -- Spikes
  -- { 'battle 3 2',  'ma', 'Blaze Spikes',   'me',    'BlzSpk' },
  -- { 'battle 3 2',  'ma', 'Ice Spikes',     'me',    'IceSpk' },
  -- { 'battle 3 2',  'ma', 'Shock Spikes',   'me',    'ShkSpk' },
  -- Utility
  -- { 'battle 3 11', 'ma', 'Tractor',        'stpc',  'Tractor' },
  -- { 'battle 3 2',  'ma', 'Escape',         'me',    'Escape' },
  -- { 'battle 3 2',  'ma', 'Warp',           'me',    'Warp' },
  -- { 'battle 3 2',  'ma', 'Warp II',        'stnc',  'Warp2' },
  -- { 'battle 3 2',  'ma', 'Retrace',        'stnc',  'Retrace' }, -- mastery
}

xivhotbar_keybinds_job['RDM'] = {
  -- Abilities
  { 'battle 2 9',  'ja', 'Convert',  'me',    'Convert', 'ffxiv/rdm/magic_barrier' },
  -- Enspells
  -- { 'battle 6 7',  'ma', 'Enstone',       'me',    'Enstone' },
  -- { 'battle 6 7',  'ma', 'Enstone II',    'me',    'Enstone2' }, -- mastery
  -- { 'battle 6 8',  'ma', 'Enwater',       'me',    'Enwater' },
  -- { 'battle 6 8',  'ma', 'Enwater II',    'me',    'Enwater2' }, -- mastery
  -- { 'battle 6 9',  'ma', 'Enaero',        'me',    'Enaero' },
  -- { 'battle 6 9',  'ma', 'Enaero II',     'me',    'Enaero2' },  -- mastery
  -- { 'battle 6 10', 'ma', 'Enfire',        'me',    'Enfire' },
  -- { 'battle 6 10', 'ma', 'Enfire II',     'me',    'Enfire2' },  -- mastery
  -- { 'battle 6 11', 'ma', 'Enblizzard',    'me',    'Enblizz' },
  -- { 'battle 6 11', 'ma', 'Enblizzard II', 'me',    'Enblizz2' }, -- mastery
  -- { 'battle 6 12', 'ma', 'Enthunder',     'me',    'Enthun' },
  -- { 'battle 6 12', 'ma', 'Enthunder II',  'me',    'Enthun2' },  -- mastery
  --Enfeeblement
  { 'battle 3 1',  'ma', 'Dia',      't',     'Dia' },
  { 'battle 3 1',  'ma', 'Dia II',   't',     'Dia2' },
  -- { 'battle 3 4',  'ma', 'Diaga',         'stnpc', 'Diaga' },
  -- { 'battle 3 3',  'ma', 'Poison',        'stnpc', 'Poison' },
  -- { 'battle 3 3',  'ma', 'Poison II',     'stnpc', 'Poison2' },
  { 'battle 3 3',  'ma', 'Paralyze', 't',     'Paralyze' },
  { 'battle 3 4',  'ma', 'Blind',    't',     'Blind' },
  { 'battle 3 2',  'ma', 'Bio',      't',     'Bio' },
  { 'battle 3 2',  'ma', 'Bio II',   't',     'Bio2' },
  { 'battle 3 5',  'ma', 'Bind',     'stnpc', 'Bind' },
  { 'battle 3 6',  'ma', 'Slow',     't',     'Slow' },
  { 'battle 3 7',  'ma', 'Silence',  'stnpc', 'Silence' },
  { 'battle 3 8',  'ma', 'Gravity',  'stnpc', 'Gravity' },
  -- { 'battle 3 7',  'ma', 'Sleep',         'stnpc', 'Sleep' },
  -- { 'battle 3 7',  'ma', 'Sleep II',      'stnpc', 'Sleep2' },
  -- { 'battle 3 ',  'ma', 'Dispel',        'stnpc', 'Dispel' },
  { 'battle 3 10', 'ma', 'Distract', 't',     'Distract' },
  { 'battle 3 9',  'ma', 'Frazzle',  't',     'Frazzle' },
  -- White Magic
  -- { 'battle 1 1',  'ma', 'Cure',          'stpc',  'Cure' },
  -- { 'battle 1 1',  'ma', 'Cure II',       'stpc',  'Cure2' },
  -- { 'battle 1 1',  'ma', 'Cure III',      'stpc',  'Cure3' },
  -- { 'battle 1 1',  'ma', 'Cure IV',       'stpc',  'Cure 4' },
  -- { 'battle 2 1',  'ma', 'Regen',         'stpc',  'Regen' },
  -- Black Magic
  -- { 'battle 5 1',  'ma', 'Stone',         'stnpc', 'Stone' },
  -- { 'battle 5 1',  'ma', 'Stone II',      'stnpc', 'Stone2' },
  -- { 'battle 5 1',  'ma', 'Water',         'stnpc', 'Water' },
  -- { 'battle 5 1',  'ma', 'Water II',      'stnpc', 'Water2' },
  -- { 'battle 5 1',  'ma', 'Aero',          'stnpc', 'Aero' },
  -- { 'battle 5 1',  'ma', 'Aero II',       'stnpc', 'Aero2' }, -- mastery
  -- { 'battle 5 1',  'ma', 'Fire',          'stnpc', 'Fire' },
  -- { 'battle 5 1',  'ma', 'Fire II',       'stnpc', 'Fire2' }, -- mastery
  -- { 'battle 5 1',  'ma', 'Blizzard',      'stnpc', 'Blizzard' },
  -- { 'battle 5 1',  'ma', 'Thunder',       'stnpc', 'Thunder' },
  -- Buffs
  { 'battle 2 11', 'ma', 'Refresh',  'stpc',  'Refresh' },
  { 'battle 2 12', 'ma', 'Haste',    'stpc',  'Haste' },
  { 'battle 4 7',  'ma', 'Flurry',   'stpc',  'Flurry' },
  -- { 'battle 1 1',  'ma', 'Aquaveil',      'me',    'Aquaveil' },
  -- { 'battle 3 6',  'ma', 'Blink',         'me',    'Blink' },
  { 'battle 3 11', 'ma', 'Phalanx',  'me',    'Phalanx' },
  -- { 'battle 3 7',  'ma', 'Stoneskin',     'me',    'StnSkin' },
  -- { 'battle 5 7',  'ma', 'Blaze Spikes',  'me',    'BlzSpikes' },
  -- { 'battle 5 8',  'ma', 'Ice Spikes',    'me',    'IceSpikes' },
  -- Barspells
  -- { 'battle 5 7',  'ma', 'Barstone',      'me',    'BStone',    'Barstonra' },
  -- { 'battle 5 8',  'ma', 'Barwater',      'me',    'BWater',    'Barwatera' },
  -- { 'battle 5 9',  'ma', 'Baraero',       'me',    'BAero',     'Baraera' },
  -- { 'battle 5 10', 'ma', 'Barfire',       'me',    'BFire',     'Barfira' },
  -- { 'battle 5 11', 'ma', 'Barblizzard',   'me',    'BBlizzard', 'Barblizzara' },
  -- { 'battle 5 12', 'ma', 'Barthunder',    'me',    'BThunder',  'Barthundra' },
  -- { 'battle 6 5',  'ma', 'Barsleep',      'me',    'BSleep',    '' },
  -- { 'battle 6 6',  'ma', 'Barpoison',     'me',    'BPoison',   '' },
  -- { 'battle 6 7',  'ma', 'Barparalyze',   'me',    'BPara',     '' },
  -- { 'battle 6 8',  'ma', 'Barblind',      'me',    'BBlind',    '' },
  -- { 'battle 6 9',  'ma', 'Barsilence',    'me',    'BSilence',  '' },
  -- { 'battle 6 10', 'ma', 'Barvirus',      'me',    'BVirus',    '' },
  -- { 'battle 6 11', 'ma', 'Barpetrify',    'me',    'BPetri',    '' },
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

-- WEAPONSKILL SETS
xivhotbar_keybinds_job['Club'] = {
  { 'battle 5 12', 'ws', 'Shining Strike', 't',  'Shining' },
  { 'battle 5 12', 'ws', 'Starlight',      'me', 'Star' },
  { 'battle 5 12', 'ws', 'True Strike',    't',  'True' },
  { 'battle 5 12', 'ws', 'Black Halo',     't',  'Halo' },
  { 'battle 5 12', 'ws', 'Realmrazer',     't',  'Razer' },
  { 'battle 5 12', 'ws', 'Randgrith',      't',  'RGrith' },
}

xivhotbar_keybinds_job['Staff'] = {
  { 'battle 5 12', 'ws', 'Heavy Swing',     't', 'Heavy' },
  { 'battle 5 12', 'ws', 'Rock Crusher',    't', 'Rock' },
  { 'battle 5 12', 'ws', 'Starburst',       't', 'Star' },
  { 'battle 5 12', 'ws', 'Full Swing',      't', 'Full' },
  { 'battle 5 12', 'ws', 'Spirit Taker',    't', 'Spirit' },
  { 'battle 5 12', 'ws', 'Retribution',     't', 'Retr' },
  { 'battle 5 12', 'ws', 'Shattersoul',     't', 'S.Soul' },
  { 'battle 5 12', 'ws', 'Omniscience',     't', 'Omni' },
  { 'battle 5 12', 'ws', 'Myrkr',           't', 'Myrkr' },
  { 'battle 5 12', 'ws', 'Oshala',          't', 'Oshala' },
  { 'battle 5 12', 'ws', 'Tartarus Torpor', 't', 'Torpor' },
}

return xivhotbar_keybinds_job
