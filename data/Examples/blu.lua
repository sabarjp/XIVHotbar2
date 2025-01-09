-- Load and initialize the include file.

-- LEVELING SET lv.1-28
xivhotbar_keybinds_job['Base'] = {

  --Hotbar #1
  -- Weaponskills; leave blank

  -- Hotbar #2

  { 'battle 2 1',  'ma', 'Pollen',         'me', 'Pollen' },
  { 'battle 2 2',  'ma', 'Sandspin',       't',  'Sndspin' },
  { 'battle 2 3',  'ma', 'Foot Kick',      't',  'F.Kick' },
  { 'battle 2 4',  'ma', 'Sprout Smack',   't',  'Spt.Smk' },
  { 'battle 2 5',  'ma', 'Wild Oats',      't',  'W.Oats' },
  { 'battle 2 6',  'ma', 'Power Attack',   't',  'Pwr.Atk.' },
  { 'battle 2 7',  'ma', 'Cocoon',         'me', 'Cocoon' },
  { 'battle 2 8',  'ma', 'Metallic Body',  'me', 'MtllcB' },
  { 'battle 2 9',  'ma', 'Queasyshroom',   't',  'Queasy' },
  { 'battle 2 10', 'ma', 'Battle Dance',   't',  'B.Dance' },
  { 'battle 2 11', 'ma', 'Feather Storm',  't',  'F.Storm' },
  { 'battle 2 12', 'ma', 'Head Butt',      't',  'H.Butt' },

  --Hotbar #3

  { 'battle 3 1',  'ma', 'Healing Breeze', 'me', 'H.Breeze' },
  { 'battle 3 2',  'ma', 'Sheep Song',     'me', 'ShpSong' },
  { 'battle 3 3',  'ma', 'Helldive',       't',  'HellDv' },
  { 'battle 3 4',  'ma', 'Cursed Sphere',  't',  'CursedS' },
  { 'battle 3 5',  'ma', 'Blastbomb',      't',  'BlastB' },
  { 'battle 3 6',  'ma', 'Bludgeon',       't',  'Bldgn' },
  { 'battle 3 7',  'ma', 'Blood Drain',    't',  'Bl.Drain' },
  { 'battle 3 8',  'ma', 'Claw Cyclone',   't',  'C.Cylone' },
  { 'battle 3 9',  'ma', 'Poison Breath',  't',  'P.Breath' },
  { 'battle 3 10', 'ma', 'Soporific',      'me', 'Sopor' },
  { 'battle 3 11', 'ma', 'Screwdriver',    't',  'ScrewD' },
  { 'battle 3 12', 'ma', 'Bomb Toss',      't',  'BmbToss' },

  -- Hotbar #4
  --sub job abilities; leave blank
  { 'battle 4 12', 'ja', 'Azure Lore',     'me', 'A.Lore',  '2Hr' },
}

xivhotbar_keybinds_job['WHM'] = {
  --{ 'battle 4 1',  'ma', 'Cure IV',     'stpc', 'Cure 4' },
  --{ 'battle 4 1',  'ma', 'Cure III',    'stpc', 'Cure 3' },
  --{ 'battle 4 1',  'ma', 'Cure II',     'stpc', 'Cure 2' },
  --{ 'battle 4 1',  'ma', 'Cure',        'stpc', 'Cure 1' },

  { 'battle 4 1',  'ma', 'Dia',         't',    'Dia' }, -- spam to learn blu spells

  { 'battle 4 2',  'ma', 'Poisona',     'stpc', 'Poisona' },
  { 'battle 4 3',  'ma', 'Paralyna',    'stpc', 'Paralyna' },
  { 'battle 4 4',  'ma', 'Blindna',     'stpc', 'Blindna' },
  { 'battle 4 5',  'ma', 'Silena',      'stpc', 'Silena' },
  { 'battle 4 6',  'ma', 'Cursna',      'stpc', 'Cursna' },
  { 'battle 4 7',  'ma', 'Viruna',      'stpc', 'Viruna' },
  { 'battle 4 8',  'ma', 'Stona',       'stpc', 'Stona' },
  { 'battle 4 9',  'ma', 'Erase',       'stpc', 'Erase' },
  { 'battle 4 10', 'ja', 'Divine Seal', 'me',   'Div.Seal' },
  --------------------------------------------------------------------------------------
  { 'battle 4 11', 'ma', 'Curaga III',  'stpc', 'Curaga3' },
  { 'battle 4 11', 'ma', 'Curaga II',   'stpc', 'Curaga2' },
  { 'battle 4 11', 'ma', 'Curaga',      'stpc', 'Curaga' },
}

xivhotbar_keybinds_job['WAR'] = {
  { 'battle 4 1', 'ja', 'Provoke',  't',  'Provoke' },
  { 'battle 4 2', 'ja', 'Provoke',  'st', 'VokeST' },
  { 'battle 4 3', 'ja', 'Defender', 't',  'Defender' },
}

xivhotbar_keybinds_job['NIN'] = {
  { 'battle 4 1', 'ma', 'Utsusemi: Ni',   'me', 'Ni' },
  { 'battle 4 2', 'ma', 'Utsusemi: Ichi', 'me', 'Ichi' },
}

xivhotbar_keybinds_job['THF'] = {
  { 'battle 4 1', 'ja', 'Sneak Attack', 'me', 'Sneak' },
  { 'battle 4 2', 'ja', 'Trick Attack', 'me', 'Trick' },
}


xivhotbar_keybinds_job['Sword'] = {
  -- Heavy Hit
  { 'battle 1 1',  'ws', 'Fast Blade',       't', 'Fast' },
  { 'battle 1 1',  'ws', 'Spirits Within',   't', 'Spirits' },
  -- Multi-Hit
  { 'battle 1 2',  'ws', 'Vorpal Blade',     't', 'Vorpal' }, -- war rdm pld drk blu run
  -- {'battle 1 2', 'ws', 'Swift Blade', 't', 'Swift'}, -- pld run
  { 'battle 1 2',  'ws', 'Savage Blade',     't', 'Savage' }, -- war rdm pld drk blu cor run
  -- Fire
  { 'battle 1 3',  'ws', 'Burning Blade',    't', 'Burning' },
  { 'battle 1 3',  'ws', 'Red Lotus Blade',  't', 'RLotus' }, -- war rdm pld drk blu
  -- Light
  { 'battle 1 4',  'ws', 'Shining Blade',    't', 'Shining' },
  { 'battle 1 4',  'ws', 'Seraph Blade',     't', 'Seraph' },   -- war rdm pld drk blu run
  -- Specials
  { 'battle 1 5',  'ws', 'Sanguine Blade',   't', 'Sanguine' }, -- war rdm pld drk blu run
  -- Prime #6
  { 'battle 1 6',  'ws', 'Imperator',        't', 'Imperator' },
  -- Class Specific #7
  -- {'battle 1 7', 'ws', 'Death Blossom', 't', 'D Blsm'}, -- rdm
  -- {'battle 1 7', 'ws', 'Atonement', 't', 'Atone'}, -- pld
  { 'battle 1 7',  'ws', 'Expiacion',        't', 'Expiacn' },  -- blu
  -- Merit Point #8
  { 'battle 1 8',  'ws', 'Requiescat',       't', 'Requisct' }, -- war rdm pld drk sam blu cor run
  -- Empyrean (Abyssea only)  #9
  { 'battle 1 9',  'ws', 'Chant du Cygne',   't', 'duCygne' },
  -- Relic (only usable with specific weapon equips) #10
  { 'battle 1 10', 'ws', 'Knights of Round', 't', 'KotR' }, -- rdm pld blu relic
  -- AoE Ws #11
  { 'battle 1 11', 'ws', 'Circle Blade',     't', 'Circle' },
  -- Stun WS #12
  { 'battle 1 12', 'ws', 'Flat Blade',       't', 'Flat' },
}

xivhotbar_keybinds_job['Club'] = {
  -- Heavy Hit
  { 'battle 1 1',  'ws', 'True Strike',    't', 'True' },
  { 'battle 1 2',  'ws', 'Judgment',       't', 'Judgment' }, -- war whm pld drk sam blu geo
  -- Multi-Hit
  { 'battle 1 3',  'ws', 'Black Halo',     't', 'Bl Halo' },  -- war mnk whm blm pld smn blu sch geo
  -- Light
  { 'battle 1 4',  'ws', 'Shining Strike', 't', 'Shining' },
  { 'battle 1 5',  'ws', 'Seraph Strike',  't', 'Seraph' },  -- war whm pld drk sam blu geo
  { 'battle 1 6',  'ws', 'Flash Nova',     't', 'Fl Nova' }, -- war whm pld drk sam blu geo
  -- Specials
  { 'battle 1 7',  'ws', 'Skullbreaker',   't', 'Skullbrk' },
  { 'battle 1 8',  'ws', 'Starlight',      't', 'Star' },
  { 'battle 1 9',  'ws', 'Moonlight',      't', 'Moon' },     -- war whm pld drk sam blu geo
  -- Merit Point #8
  { 'battle 1 10', 'ws', 'Realmrazer',     't', 'Realmrzr' }, -- war mnk whm blm pld smn blu sch geo
  -- AoE Ws #11
  -- none
  -- Stun WS #12
  { 'battle 1 12', 'ws', 'Brainshaker',    't', 'Brainshkr' },
}

return xivhotbar_keybinds_job
