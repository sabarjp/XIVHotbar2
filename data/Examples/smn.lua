
-- Load and initialize the include file.
 xivhotbar_keybinds_job['Base'] = {
     
  -- Hotbar #1  Mostly Pet
  	{'battle 1 1', 'ja', 'Assault','t', 'Attack'},
  	{'battle 1 2', 'ja', 'Retreat','me', 'Retreat'},

	{'battle 1 8', 'ja', "Avatar's Favor", 'me', 'Favor'},
	{'battle 1 9', 'ja', 'Elemental Siphon', 'me', 'Siphon'},
	{'battle 1 10', 'ja', 'Apogee', 'me', 'Apogee'},
	{'battle 1 11', 'ja', 'Mana Cede', 'me', 'Cede'},
	{'battle 1 12', 'ws', 'Earth Crusher', 't', 'Crusher'},

  -- Hotbar #2 Mostly Pet
  	{'battle 2 12', 'ja', 'Astral Conduit', 'me', 'Conduit'},
	
	
  -- Hotbar #3 Mostly Subs
  {'battle 3 12', 'ja', 'Astral Flow','me', 'Astral','2hr'},
  
  -- Hotbar #4  Mostly Subs
  {'battle 4 11', 'ja', 'Release','me', 'Release'},

  -- Hotbar #5 Summons
  {'b 5 1', 'ma', 'Titan','me', 'Titan','summons/titan'},
  {'b 5 2','ma', 'Leviathan','me', 'Levi','summons/leviathan'},
  {'b 5 3', 'ma', 'Garuda','me', 'Garuda','summons/garuda'},
  {'b 5 4', 'ma', 'Ifrit','me', 'Ifrit', 'summons/ifrit'},
  {'b 5 5', 'ma', 'Shiva','me', 'Shiva','summons/shiva'},
  {'b 5 6', 'ma', 'Ramuh','me', 'Ramuh', 'summons/ramuh'},
  {'b 5 7', 'ma', 'Carbuncle','me', 'Carby','summons/carbuncle'},
  {'b 5 8', 'ma', 'Fenrir','me', 'Fenrir', 'summons/fenrir'},
  {'b 5 9', 'ma', 'Diabolos','me', 'Diabolos','summons/diabolos'},
  {'b 5 10', 'ma', 'Cait Sith','me', 'CaitSith'},
  {'b 5 11', 'ma', 'Siren','me', 'Siren'},
  {'b 5 12', 'ma', 'Atomos','me', 'Atomos'},

  -- Hotbar #6 Summons
  {'b 6 1', 'ma', 'Earth Spirit','me', 'Earth', 'summons/earthspirit'},
  {'b 6 2','ma', 'Water Spirit','me', 'Water','summons/waterspirit'},
  {'b 6 3', 'ma', 'Air Spirit','me', 'Wind','summons/windspirit'},
  {'b 6 4', 'ma', 'Fire Spirit','me', 'Fire', 'summons/firespirit'},
  {'b 6 5', 'ma', 'Ice Spirit','me', 'Ice','summons/icespirit'},
  {'b 6 6', 'ma', 'Thunder Spirit','me', 'Thunder', 'summons/thunderspirit'},
  {'b 6 7', 'ma', 'Light Spirit','me', 'Light','summons/lightspirit'},
  {'b 6 8', 'ma', 'Dark Spirit','me', 'Dark', 'summons/darkspirit'},

  {'b 6 11', 'ma', 'Alexander','me', 'Alex'},
  {'b 6 12', 'ma', 'Odin','me', 'Odin'},
}


xivhotbar_keybinds_job['Carbuncle'] = {
	-- 1, 3-7   2 , 1-11 available

	-- Hotbar #1
	{'battle 1 3', 'ja',  'Poison Nails', 't', 'Nails','summons/carbuncle'},
	{'battle 1 4', 'ja',  'Meteorite', 't', 'Meteorite', 'summons/carbuncle'},
	{'battle 1 5', 'ja',  'Holy Mist', 't', 'H.Mist', 'summons/carbuncle'},

	-- Hotbar #2
	{'battle 2 1', 'ja',  'Healing Ruby', 'stpc', 'Heal', 'summons/carbuncle',},
	{'battle 2 2', 'ja',  'Shining Ruby', 'stpc', 'Shining', 'summons/carbuncle'},
	{'battle 2 3', 'ja',  'Glittering Ruby', 'stpc', 'Glitter', 'summons/carbuncle'},
	{'battle 2 4', 'ja',  'Soothing Ruby', 'me', 'Soothe', 'summons/carbuncle'},
	{'battle 2 5', 'ja',  'Pacifying Ruby', 'stpc', 'Heal', 'summons/carbuncle',},

	-- Ultimate
	{'battle 2 11', 'ja',  'Searing Light', 't', 'Searing'},
}

xivhotbar_keybinds_job['Cait Sith'] = {
	-- 1, 3-7   2 , 1-11 available

	-- Hotbar #1
	{'battle 1 3', 'ja',  'Regal Scratch', 't', 'Scratch'},
	{'battle 1 4', 'ja',  'Level ? Holy', 't', 'Holy'},
	{'battle 1 5', 'ja',  'Regal Gash', 't', 'Gash'},

	-- Hotbar #2
	{'battle 2 1', 'ja',  'Raise II', 'stpc', 'Raise2'},
	{'battle 2 2', 'ja',  'Mewing Lullaby', 'stpc', 'Lullaby'},
	{'battle 2 3', 'ja',  'Reraise II', 'stpc', 'Reraise2'},
	{'battle 2 4', 'ja',  'Eerie Eye', 't', 'E.Eye'},

	-- Ultimate
	{'battle 2 11', 'ja',  "Altana's Favor", 'me', 'A.Favor'},
}

xivhotbar_keybinds_job['Titan'] = {
	-- 1, 3-7   2 , 1-11 available

	-- Hotbar #1
	{'battle 1 3', 'ja', 'Rock Throw', 't', 'Slow','summons/titan'},
	{'battle 1 4', 'ja', 'Stone II', 't', 'Stone2','summons/titan'},
	{'battle 1 5', 'ja', 'Rock Buster', 't', 'Bind','summons/titan'},
	{'battle 1 6', 'ja', 'Megalith Throw', 't', 'Slow2','summons/titan'},
	{'battle 1 7', 'ja', 'Stone IV', 't', 'Stone4','summons/titan'},

	-- Hotbar #2
	{'battle 2 1', 'ja', 'Earthen Ward', 'me', 'Stoneskn', 'summons/titan'},
	{'battle 2 2', 'ja', 'Mountain Buster', 't', 'Bind2','summons/titan'},
	{'battle 2 3', 'ja', 'Geocrush', 't', 'GeoCrsh','summons/titan'},
	{'battle 2 4', 'ja', 'Crag Throw', 't', 'CrgThw','summons/titan'},

	-- Ultimate
	{'battle 2 11', 'ja',  "Earthen Fury", 't', 'E.Fury'},
}
xivhotbar_keybinds_job['Leviathan'] = {
	-- 1, 3-7   2 , 1-11 available

	-- Hotbar #1
	{'battle 1 3', 'ja', 'Barracuda Dive', 't', 'BarDive','summons/leviathan'},
	{'battle 1 4', 'ja', 'Water II', 't', 'Water2','summons/leviathan'},
	{'battle 1 5', 'ja', 'Tail Whip', 't', 'Grav','summons/leviathan'},
	{'battle 1 6', 'ja', 'Water IV', 't', 'Water4','summons/leviathan'},
	{'battle 1 7', 'ja', 'Spinning Dive', 't', 'SpinDive','summons/leviathan'},

	-- Hotbar #2
	{'battle 2 1', 'ja', 'Slowga', 't', 'Slowga', 'summons/leviathan'},
	{'battle 2 2', 'ja', 'Spring Water', 'me', 'Spring', 'summons/leviathan'},
	{'battle 2 3', 'ja', 'Grand Fall', 't', 'Gfall', 'summons/leviathan'},
	{'battle 2 4', 'ja', 'Tidal Roar', 't', 'T.Roar', 'summons/leviathan'},
	{'battle 2 5', 'ja', 'Soothing Current', 'me', 'S.Current', 'summons/leviathan'},

	-- Ultimate
	{'battle 2 11', 'ja', 'Tidal Wave', 't', 'Blast'},
}
xivhotbar_keybinds_job['Garuda'] = {
	-- 1, 3-7   2 , 1-11 available

	-- Hotbar #1
	{'battle 1 3', 'ja', 'Claw', 't', 'Claw', 'summons/garuda'},
	{'battle 1 4', 'ja', 'Aero II', 't', 'Aero2', 'summons/garuda'},
	{'battle 1 5', 'ja', 'Aero IV', 't', 'Aero4', 'summons/garuda'},
	{'battle 1 6', 'ja', 'Predator Claws', 't', 'PredClaw', 'summons/garuda'},
	{'battle 1 6', 'ja', 'Wind Blade', 't', 'WBlade', 'summons/garuda'},

	-- Hotbar #2
	{'battle 2 1', 'ja', 'Aerial Armor', 'me', 'Blinkga', 'summons/garuda'},
	{'battle 2 2', 'ja', 'Whispering Wind', 'me', 'Healga', 'summons/garuda'},
	{'battle 2 3', 'ja', 'Hastega', 'me', 'Hastega', 'summons/garuda'},
	{'battle 2 4', 'ja', 'Fleet Wind', 'me', 'Fleet Wind', 'summons/garuda'},
	{'battle 2 5', 'ja', 'Hastega II', 'me', 'Hastega2', 'summons/garuda'},
	
	-- Ultimate
	{'battle 2 11', 'ja', 'Aerial Blast', 't', 'Blast'},
}

xivhotbar_keybinds_job['Ifrit'] = {
	-- 1, 3-7   2 , 1-11 available

	-- Hotbar #1
	{'battle 1 3', 'ja', 'Punch', 't', 'Punch', 'summons/ifrit'},
	{'battle 1 4', 'ja', 'Fire II', 't', 'Fire2', 'summons/ifrit'},
	{'battle 1 5', 'ja', 'Burning Strike', 't', 'Strike', 'summons/ifrit'},
	{'battle 1 6', 'ja', 'Double Punch', 't', 'Dbl.Pnch', 'summons/ifrit'},
	{'battle 1 7', 'ja', 'Fire IV', 't', 'Fire4', 'summons/ifrit'},
	
	-- Hotbar #2
	{'battle 2 1', 'ja', 'Crimson Howl', 'me', 'C.Howl', 'summons/ifrit'},
	{'battle 2 2', 'ja', 'Flaming Crush', 't', 'Crush', 'summons/ifrit'},
	{'battle 2 3', 'ja', 'Meteor Strike', 't', 'Meteor', 'summons/ifrit'},
	{'battle 2 4', 'ja', 'Inferno Howl', 'me', 'I.Howl', 'summons/ifrit'},
	{'battle 2 5', 'ja', 'Conflag Strike', 't', 'Conflag', 'summons/ifrit'},
	
	-- Ultimate
	{'battle 2 11', 'ja', 'Inferno', 't', 'Inferno'},
}
xivhotbar_keybinds_job['Shiva'] = {
	-- 1, 3-7   2 , 1-11 available

	-- Hotbar #1
	{'battle 1 3', 'ja', 'Axe Kick', 't', 'AxeKick', 'summons/shiva'},
	{'battle 1 4', 'ja', 'Blizzard II', 't', 'Blizz2', 'summons/shiva'},
	{'battle 1 5', 'ja', 'Double Slap', 't', 'Dbl.Slap', 'summons/shiva'},
	{'battle 1 6', 'ja', 'Blizzard IV', 't', 'Blizz4', 'summons/shiva'},
	{'battle 1 7', 'ja', 'Rush', 't', 'Rush', 'summons/shiva'},

	-- Hotbar #2
	{'battle 2 1', 'ja', 'Frost Armor', 'me', 'IceSpks', 'summons/shiva'},
	{'battle 2 2', 'ja', 'Sleepga', 't', 'Sleepga', 'summons/shiva'},
	{'battle 2 3', 'ja', 'Heavenly Strike', 't', 'Heaven', 'summons/shiva'},
	{'battle 2 4', 'ja', 'Diamond Storm', 't', 'D.Storm', 'summons/shiva'},
	{'battle 2 4', 'ja', 'Crystal Blessing', 'me', 'Blessing', 'summons/shiva'},
	
	-- Ultimate
	{'battle 2 11', 'ja', 'Diamond Dust', 't', 'Diamond'},
}
xivhotbar_keybinds_job['Ramuh'] = {
	-- 1, 3-7   2 , 1-11 available

	-- Hotbar #1
	{'battle 1 3', 'ja', 'Shock Strike', 't', 'ShockStrk', 'summons/ramuh'},
	{'battle 1 4', 'ja', 'Thunder II', 't', 'Thund2', 'summons/ramuh'},
	{'battle 1 5', 'ja', 'Thunderspark', 't', 'ThudSpk', 'summons/ramuh'},
	{'battle 1 6', 'ja', 'Thunder IV', 't', 'Thund4', 'summons/ramuh'},
	{'battle 1 7', 'ja', 'Chaotic Strike', 't', 'StunStrk', 'summons/ramuh'},
	
	-- Hotbar #2
	{'battle 2 1', 'ja', 'Rolling Thunder', 'me', 'Enthund', 'summons/ramuh'},
	{'battle 2 2', 'ja', 'Lightning Armor', 'me', 'ShkSpke', 'summons/ramuh'},
	{'battle 2 3', 'ja', 'Thunderstorm', 't', 'Tstorm', 'summons/ramuh'},
	{'battle 2 4', 'ja', 'Volt Strike', 't', 'VoltStrk', 'summons/ramuh'},
	{'battle 2 5', 'ja', 'Shock Squall', 't', 'ShockSql', 'summons/ramuh'},

	-- Ultimate
	{'battle 2 11', 'ja', 'Judgment Bolt', 't', 'Judgemnt'},
}
xivhotbar_keybinds_job['Fenrir'] = {
	-- 1, 3-7   2 , 1-11 available

	-- Hotbar #1
	{'battle 1 3', 'ja', 'Moonlit Charge', 't', 'Blind', 'summons/fenrir'},
	{'battle 1 4', 'ja', 'Crescent Fang', 't', 'Paralyze', 'summons/fenrir'},
	{'battle 1 5', 'ja', 'Eclipse Bite', 't', 'Eclipse', 'summons/fenrir'},
	{'battle 1 6', 'ja', 'Lunar Ray', 't', 'Lunar', 'summons/fenrir'},
	{'battle 1 7', 'ja', 'Impact', 't', 'Impact', 'summons/fenrir'},

	-- Hotbar #2
	{'battle 4 3', 'ja', 'Lunar Cry', 't', 'LunCry', 'summons/fenrir'},
	{'battle 4 4', 'ja', 'Lunar Roar', 't', 'LunRoar', 'summons/fenrir'},
	{'battle 4 5', 'ja', 'Ecliptic Growl', 'me', 'EclGrowl', 'summons/fenrir'},
	{'battle 4 6', 'ja', 'Ecliptic Howl', 'me', 'EclHowl', 'summons/fenrir'},
	{'battle 4 6', 'ja', 'Heavenward Howl', 'me', 'HvnHowl', 'summons/fenrir'},

	-- Ultimate
	{'battle 2 11', 'ja', 'Howling Moon', 't', 'HowlMoon', 'summons/fenrir'},
}

xivhotbar_keybinds_job['Diabolos'] = {
	-- 1, 3-7   2 , 1-11 available

	-- Hotbar #1
	{'battle 1 3', 'ja', 'Camisado', 't', 'Camisad', 'summons/diabolos'},
	{'battle 1 4', 'ja', 'Nether Blast', 't', 'Nether', 'summons/diabolos'},
	{'battle 1 5', 'ja', 'Night Terror', 't', 'N.Terror', 'summons/diabolos'},
	{'battle 1 6', 'ja', 'Blindside', 't', 'Blndsde', 'summons/diabolos'},

	-- Hotbar #2
	{'battle 2 1', 'ja', 'Somnolence', 't', 'Somno', 'summons/diabolos'},
	{'battle 2 2', 'ja', 'Nightmare', 't', 'Nightmr', 'summons/diabolos'},
	{'battle 2 3', 'ja', 'Ultimate Terror', 't', 'U.Terror', 'summons/diabolos'},
	{'battle 2 4', 'ja', 'Noctoshield', 'me', 'Nocto', 'summons/diabolos'},
	{'battle 2 5', 'ja', 'Dream Shroud', 'me', 'DrmShrd', 'summons/diabolos'},
	{'battle 2 6', 'ja', 'Pavor Nocturnus', 't', 'Pavor', 'summons/diabolos'},

	-- Ultimate
	{'battle 2 11', 'ja', 'Ruinous Omen', 't', 'Ruinous'},
}

xivhotbar_keybinds_job['Siren'] = {
	-- 1, 3-7   2 , 1-11 available

	-- Hotbar #1
	{'battle 1 3', 'ja', 'Welt', 't', 'Welt'},
	{'battle 1 4', 'ja', 'Roundhouse', 't', 'RHouse'},
	{'battle 1 5', 'ja', 'Sonic Buffet', 't', 'S.Buffet'},
	{'battle 1 6', 'ja', 'Tornado II', 't', 'Torndo2'},
	{'battle 1 7', 'ja', 'Hysteric Assault', 't', 'Hysteric'},


	-- Hotbar #2
	{'battle 2 1', 'ja', 'Lunatic Voice', 't', 'Lunatic'},
	{'battle 2 2', 'ja', 'Katabatic Blades', 'me', 'Kata'},
	{'battle 2 3', 'ja', 'Chinook', 'me', 'Chinook'},
	{'battle 2 4', 'ja', 'Bitter Elegy', 't', 'Elegy'},
	{'battle 2 5', 'ja', 'Wind’s Blessing', 'me', 'W.Bless'},

	-- Ultimate
	{'battle 2 11', 'ja', 'Clarsach Call', 't', 'Clarsach'},
}

xivhotbar_keybinds_job['WHM'] = {
	-- subs into bar 3/4
	{'battle 3 1', 'ma', 'Cure IV', 'stpc', 'Cure 4'},
	{'battle 3 1', 'ma', 'Cure III', 'stpc', 'Cure 3'},
	{'battle 3 1', 'ma', 'Cure II', 'stpc', 'Cure 2'},
	{'battle 3 1', 'ma', 'Cure', 'stpc', 'Cure 1'},

	--------------------------------------------------------------------------------------
	{'battle 3 9', 'ma', 'Protectra II', 'stpc', 'Protra2'},
	{'battle 3 9', 'ma', 'Protectra', 'stpc', 'Protra'},
	--------------------------------------------------------------------------------------
	{'battle 3 10', 'ma', 'Shellra II', 'stpc', 'Shellra2'},
	{'battle 3 10', 'ma', 'Shellra', 'stpc', 'Shellra'},
	--------------------------------------------------------------------------------------
  
	-- Hotbar #2 (ALT 1-0)
	{'battle 4 1', 'ma', 'Poisona', 'stpc', 'Poisona'},
	{'battle 4 2', 'ma', 'Paralyna', 'stpc', 'Paralyna'},
	{'battle 4 3', 'ma', 'Blindna', 'stpc', 'Blindna'},
	{'battle 4 4', 'ma', 'Silena', 'stpc', 'Silena'},
	{'battle 4 5', 'ma', 'Cursna', 'stpc', 'Cursna'},
	{'battle 4 6', 'ma', 'Viruna', 'stpc', 'Viruna'},
	{'battle 4 7', 'ma', 'Erase', 'stpc', 'Erase'},
	{'battle 4 8', 'ja', 'Divine Seal', 'me', 'Div.Seal'},
	 --------------------------------------------------------------------------------------
	{'battle 4 9', 'ma', 'Curaga II', 'stpc', 'Curaga2'},
	{'battle 4 9', 'ma', 'Curaga', 'stpc', 'Curaga'},
	 --------------------------------------------------------------------------------------
	{'battle 4 10', 'ma', 'Reraise', 'me', 'Reraise'},
  }

return xivhotbar_keybinds_job
