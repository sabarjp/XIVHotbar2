
-- Load and initialize the include file.
 xivhotbar_keybinds_job['Base'] = {
     
  -- Hotbar #1 Primary JAs
	{'battle 1 1', 'ja', 'Deploy','t', 'Fight'},
	{'battle 1 2', 'ja', 'Retrieve','t', 'Retrieve'},
	
	{'battle 1 3', 'ja', 'Fire Maneuver','me', 'FireMan'},
	{'battle 1 4', 'ja', 'Ice Maneuver','me', 'IceMan'},
	{'battle 1 5', 'ja', 'Wind Maneuver','me', 'WndMan'},
	{'battle 1 6', 'ja', 'Earth Maneuver','me', 'EthMan'},
	{'battle 1 7', 'ja', 'Thunder Maneuver','me', 'ThrMan'},
	{'battle 1 8', 'ja', 'Water Maneuver','me', 'WtrMan'},
	{'battle 1 9', 'ja', 'Light Maneuver','me', 'LghMan'},
	{'battle 1 10', 'ja', 'Dark Maneuver','me', 'DrkMan'},
  -- Hotbar #2 weapon skills
	{'battle 2 1', 'ws', 'Combo', 't', 'Combo'},
	{'battle 2 1', 'ws', 'Raging Fists', 't', 'Raging'},
	{'battle 2 1', 'ws', 'Asuran Fists', 't', 'Asuran'},

	{'battle 2 2', 'ws', 'Shoulder Tackle', 't', 'Stun'},

	{'battle 2 3', 'ws', 'One Inch Punch', 't', 'OneInch'},
	{'battle 2 3', 'ws', 'Howling Fist', 't', 'Howling'},

	{'battle 2 4', 'ws', 'Dragon Kick', 't', 'DgnKick'},

	{'battle 2 5', 'ws', 'Tornado Kick', 't', 'TdoKick'},

	{'battle 2 6', 'ws', 'Shijin Spiral', 't', 'Shijin'},

	-- relic/empy/mythic/prime weapon dependent
	{'battle 2 7', 'ws', 'Final Heaven', 't', 'F.Hvn'},
	{'battle 2 7', 'ws', 'Victory Smite', 't', 'V.Smite'},
	{'battle 2 7', 'ws', 'Stringing Pummel', 't', 'S.Pummel'},
	{'battle 2 7', 'ws', 'Maru Kala', 't', 'M.Kala'},
	{'battle 2 7', 'ws', 'Dragon Blow', 't', 'DgnBlow'},
	
	 --aoe
	{'battle 2 12', 'ws', 'Spinning Attack', 't', 'Spinning'}, 

  -- Hotbar #3 Pet stuff
 	{'battle 3 ', 'ja', 'Activate', 'me', 'Activate'},
	{'battle 3 4', 'ja', 'Deus Ex Automata', 'me', 'DeusEx'},
	{'battle 3 5', 'ja', 'Repair', 'me', 'Repair'},  --needs oil
	{'battle 3 6', 'ja', 'Maintenance', 'me', 'Maintain'},  --needs oil
	{'battle 3 7', 'ja', 'Ventriloquy', 'me', 'Vent'},
	{'battle 3 8', 'ja', 'Role Reversal', 'me', 'RoleRev'},
	{'battle 3 9', 'ja', 'Tactical Switch', 'me', 'T.Switch'},
	{'battle 3 10', 'ja', 'Cooldown', 'me', 'C.Down'},
	{'battle 3 12', 'ja', 'Heady Artifice', 'me', 'Pet1HR'},
  
  -- Hotbar #4 Mostly Subs
 	{'battle 4 11', 'ja', 'Deactivate','me', 'Deactvte'},
  	{'battle 4 12', 'ja', 'Overdrive', 'me', 'O.Drive','2HR'},

  -- Hotbar #5
	--{'battle 5 1', '', '', '', ''},
	--{'battle 5 2', '', '', '', ''},
	--{'battle 5 3', '', '', '', ''},
	--{'battle 5 4', '', '', '', ''},
	--{'battle 5 5', '', '', '', ''},
	--{'battle 5 6', '', '', '', ''},
	--{'battle 5 7', '', '', '', ''},
	--{'battle 5 8', '', '', '', ''},
	--{'battle 5 9', '', '', '', ''},
	--{'battle 5 10', '', '', '', ''},
	--{'battle 5 11', '', '', '', ''},
	--{'battle 5 12', '', '', '', ''},

  -- Hotbar #6
	--{'battle 6 1', '', '', '', ''},
	--{'battle 6 2', '', '', '', ''},
	--{'battle 6 3', '', '', '', ''},
	--{'battle 6 4', '', '', '', ''},
	--{'battle 6 5', '', '', '', ''},
	--{'battle 6 6', '', '', '', ''},
	--{'battle 6 7', '', '', '', ''},
	--{'battle 6 8', '', '', '', ''},
	--{'battle 6 9', '', '', '', ''},
	--{'battle 6 10', '', '', '', ''},
	--{'battle 6 11', '', '', '', ''},
	--{'battle 6 12', '', '', '', ''},
	
}

xivhotbar_keybinds_job['WHM'] = {
	{'battle 4 1', 'ma', 'Cure IV', 'stpc', 'Cure 4'},
	{'battle 4 1', 'ma', 'Cure III', 'stpc', 'Cure 3'},
	{'battle 4 1', 'ma', 'Cure II', 'stpc', 'Cure 2'},
	{'battle 4 1', 'ma', 'Cure', 'stpc', 'Cure 1'},
	{'battle 4 2', 'ma', 'Flash', 't', 'Flash'},
	{'battle 4 3', 'ma', 'Poisona', 'stpc', 'Poisona'},
	{'battle 4 4', 'ma', 'Paralyna', 'stpc', 'Paralyna'},
	{'battle 4 5', 'ma', 'Blindna', 'stpc', 'Blindna'},
	{'battle 4 6', 'ma', 'Cursna', 'stpc', 'Cursna'},
	{'battle 4 7', 'ma', 'Erase', 'stpc', 'Erase'},
	{'battle 4 8', 'ja', 'Divine Seal', 'me', 'Div.Seal'},
	{'battle 4 9', 'ma', 'Curaga III', 'stpc', 'Curaga3'},
	{'battle 4 9', 'ma', 'Curaga II', 'stpc', 'Curaga2'},
	{'battle 4 9', 'ma', 'Curaga', 'stpc', 'Curaga1'},
}

xivhotbar_keybinds_job['NIN'] = {
	{'battle 4 1', 'ma', 'Utsusemi: Ichi', 'me', 'Utsu1'},
	{'battle 4 2', 'ma', 'Utsusemi: Ni', 'me', 'Utsu2'},
	{'battle 4 3', 'ma', 'Tonko: Ni', 'me', 'Tonko'},
	{'battle 4 3', 'ma', 'Tonko: Ichi', 'me', 'Tonko'},
	{'battle 4 4', 'ma', 'Monomi: Ichi', 'me', 'Monomi'},
}

xivhotbar_keybinds_job['WAR'] = {
	{'battle 4 1', 'ja', 'Provoke', 't', 'Voke'},
	{'battle 4 2', 'ja', 'Berserk', 'me', 'Zerk'},
	{'battle 4 3', 'ja', 'Warcry', 'me', 'W.Cry'},
	{'battle 4 5', 'ja', 'Aggressor', 'me', 'Aggressor'},
	{'battle 4 5', 'ja', 'Defender', 'me', 'Defender'},
}

xivhotbar_keybinds_job['DRG'] = {
	{'battle 4 1', 'ja', 'Jump', 't', 'Jmp'},
	{'battle 4 2', 'ja', 'High Jump', 't', 'H.Jmp'},
	{'battle 4 3', 'ja', 'Ancient Circle', 'me', 'A.Circle'},
}

xivhotbar_keybinds_job['DNC'] = {
	{'battle 4 1', 'ja', 'Curing Waltz III', 'stpc', 'CureW3'},
	{'battle 4 1', 'ja', 'Curing Waltz II', 'stpc', 'CureW2'},
	{'battle 4 1', 'ja', 'Curing Waltz', 'stpc', 'CureW1'},
	{'battle 4 2', 'ja', 'Divine Waltz', 'stpc', 'DivineW'},
	{'battle 4 3', 'ja', 'Healing Waltz', 'stpc', 'HealW'},
	{'battle 4 4', 'ja', 'Quickstep', 't', 'Quick'},
	{'battle 4 5', 'ja', 'Box Step', 't', 'Box'},
	{'battle 4 6', 'ja', 'Stutter Step', 't', 'Stutter'},
	{'battle 4 7', 'ja', 'Building Flourish', 't', 'Build.F'},
	{'battle 4 7', 'ja', 'Reverse Flourish', 't', 'Rev.F'},
	{'battle 4 7', 'ja', 'Violent Flourish', 't', 'Violent.F'},
	{'battle 4 7', 'ja', 'Desperate Flourish', 't', 'Desp.F'},
	{'battle 4 7', 'ja', 'Animated Flourish', 't', 'Anim.F'},
	--{'battle 4 8', 'ja', 'Drain Samba II', 'me', 'DrainS2'},
	--{'battle 4 8', 'ja', 'Drain Samba', 'me', 'DrainS1'},
	{'battle 4 8', 'ja', 'Haste Samba', 'me', 'Haste'},
	{'battle 4 9', 'ja', 'Contradance', 'me', 'CtraDnc'},
}

xivhotbar_keybinds_job['SAM'] = {
	{'battle 4 1', 'ja', 'Third Eye', 'me', '3rdEye'},
	--{'battle 4 2', 'ja', 'Hasso', 'me', 'Hasso'},  --no 2 handers for pup
	{'battle 4 3', 'ja', 'Meditate', 'me', 'Mdtate'},
	--{'battle 4 5', 'ja', 'Seigan', 'me', 'Seigan'},  --no 2 handers for pup
	{'battle 4 5', 'ja', 'Sekkanoki', 'me', 'Sekk'},
	{'battle 4 6', 'ja', 'Warding Circle', 'me', 'W. Circle'},
}

xivhotbar_keybinds_job['RUN'] = {
	{'battle 4 1', 'ja', 'Vallation', 'me', 'Vall.'},
	{'battle 4 2', 'ja', 'Pflug', 'me', 'Pflug'},
	{'battle 4 3', 'ja', 'Ignis', 'me', 'Fire'},
	{'battle 4 4', 'ja', 'Gelus', 'me', 'Ice'},
	{'battle 4 5', 'ja', 'Flabra', 'me', 'Wind'},
	{'battle 4 6', 'ja', 'Tellus', 'me', 'Earth'},
	{'battle 4 7', 'ja', 'Sulpor', 'me', 'Thundr'},
	{'battle 4 8', 'ja', 'Unda', 'me', 'Water'},
	{'battle 4 9', 'ja', 'Lux', 'me', 'Light'},
	{'battle 4 10', 'ja', 'Tenebrae', 'me', 'Dark'},
}

return xivhotbar_keybinds_job
