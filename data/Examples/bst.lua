
-- Load and initialize the include file.
 xivhotbar_keybinds_job['Base'] = {
     
  -- Hotbar #1 Primary JAs
	{'battle 1 1', 'ja', 'Fight','t', 'Fight'},
	{'battle 1 2', 'ja', 'Heel','me', 'Heel'},
	{'battle 1 3', 'ja', 'Stay','me', 'Stay'},

	{'battle 1 4', 'ja', 'Sic','me', 'Sic'},
	{'battle 1 4', 'bstpet', '1', 'me', 'Pet 1'},
	{'battle 1 5', 'bstpet', '2', 'me', 'Pet 2'},
	{'battle 1 6', 'bstpet', '3', 'me', 'Pet 3'},
	{'battle 1 7', 'bstpet', '4', 'me', 'Pet 4'},
	{'battle 1 8', 'bstpet', '5', 'me', 'Pet 5'},
	{'battle 1 9', 'bstpet', '6', 'me', 'Pet 6'},

	{'battle 1 10', 'ja', 'Feral Howl','t', 'Howl'},
	{'battle 1 11', 'ja', 'Killer Instinct','me', 'Killer'},
	{'battle 1 12', 'ja', 'Unleash','me', 'Unleash'},

  -- Hotbar #2 weapon skills
  	-- multihit
	{'battle 2 1', 'ws', 'Raging Axe', 't', 'Raging'},
	{'battle 2 1', 'ws', 'Rampage', 't', 'Rampage'},
	{'battle 2 1', 'ws', 'Ruinator', 't', 'Ruinator'},

	-- stun
	{'battle 2 2', 'ws', 'Smash Axe', 't', 'Stun'},

	-- single hit
	{'battle 2 3', 'ws', 'Avalanche Axe', 't', 'Avalanche'},
	{'battle 2 3', 'ws', 'Calamity', 't', 'Calamity'},

	{'battle 2 4', 'ws', 'Gale Axe', 't', 'Gale'},
	{'battle 2 4', 'ws', 'Mistral Axe', 't', 'Mistral'},

	{'battle 2 5', 'ws', 'Decimation', 't', 'Decimate'},

	{'battle 2 6', 'ws', 'Bora Axe', 't', 'Bora'},

	-- relic/empy/mythic/prime weapon dependent
	{'battle 2 7', 'ws', 'Onslaught', 't', 'Oslaught'},
	{'battle 2 7', 'ws', 'Cloudsplitter', 't', 'CloudS'},
	{'battle 2 7', 'ws', 'Primal Rend', 't', 'P.Rend'},

	--aoe
	--{'battle 2 12', 'ws', '', 't', ''}, 


  -- Hotbar #3  Pet Specific
	{'battle 3 1', 'ja', 'Call Beast', 'me', 'CallBeast'},
	{'battle 3 2', 'ja', 'Bestial Loyalty', 'me', 'Loyalty'},
	{'battle 3 3', 'ja', 'Spur','me', 'Spur'},
	{'battle 3 4', 'ja', 'Snarl','me', 'Snarl'},
	{'battle 3 5', 'ja', 'Reward', 'pet', 'Reward'},
	{'battle 3 6', 'ja', 'Run Wild','me', 'R.Wild'},
	{'battle 3 9', 'ja', 'Charm', 'stnpc', 'Charm'},
	{'battle 3 10', 'ja', 'Gauge', 't', 'Gauge'},
	{'battle 3 11', 'ja', 'Tame', 't', 'Tame'},
	
	{'battle 3 12', 'ja', 'Familiar', 'me', 'Familiar','2HR'},
  
  -- Hotbar #4  Mostly Subs
	{'battle 4 11', 'ja', 'Leave','me', 'Leave'},
	

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

	-- Hotbar #2 (ALT 1-0)
	{'battle 2 1', 'ma', 'Poisona', 'stpc', 'Poisona'},
	{'battle 2 2', 'ma', 'Paralyna', 'stpc', 'Paralyna'},
	{'battle 2 3', 'ma', 'Blindna', 'stpc', 'Blindna'},
	{'battle 2 4', 'ma', 'Silena', 'stpc', 'Silena'},
	{'battle 2 5', 'ma', 'Cursna', 'stpc', 'Cursna'},
	{'battle 2 6', 'ma', 'Viruna', 'stpc', 'Viruna'},
	{'battle 2 7', 'ma', 'Erase', 'stpc', 'Erase'},
	{'battle 2 8', 'ja', 'Divine Seal', 'me', 'Div.Seal'},
	--------------------------------------------------------------------------------------
	{'battle 2 9', 'ma', 'Curaga II', 'stpc', 'Curaga2'},
	{'battle 2 9', 'ma', 'Curaga', 'stpc', 'Curaga'},
	--------------------------------------------------------------------------------------
	{'battle 2 10', 'ma', 'Reraise', 'me', 'Reraise'},
	--------------------------------------------------------------------------------------
	{'battle 2 11', 'ma', 'Protectra II', 'stpc', 'Protra2'},
	{'battle 2 11', 'ma', 'Protectra', 'stpc', 'Protra'},
	--------------------------------------------------------------------------------------
	{'battle 2 12', 'ma', 'Shellra II', 'stpc', 'Shellra2'},
	{'battle 2 12', 'ma', 'Shellra', 'stpc', 'Shellra'},
	--------------------------------------------------------------------------------------
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

xivhotbar_keybinds_job['RDM'] = {
	{'battle 4 1', 'ma', 'Cure IV', 'stpc', 'Cure 4'},
	{'battle 4 1', 'ma', 'Cure III', 'stpc', 'Cure 3'},
	{'battle 4 1', 'ma', 'Cure II', 'stpc', 'Cure 2'},
	{'battle 4 1', 'ma', 'Cure', 'stpc', 'Cure 1'},
	{'battle 4 2', 'ma', 'Refresh', 'stpc', 'Refresh'},
	{'battle 4 3', 'ma', 'Sneak', 'stpc', 'Sneak'},
	{'battle 4 4', 'ma', 'Invisible', 'stpc', 'Invis'},
	{'battle 4 5', 'ma', 'Dispel', 't', 'Dispel'},
	{'battle 4 6', 'ma', 'Phalanx', 'me', 'Phalanx'},
	{'battle 4 7', 'ja', 'Haste', 'stpc', 'Haste'},
	{'battle 4 8', 'ma', 'Ice Spikes', 'me', 'I.Spikes'},
	{'battle 4 9', 'ma', 'Dia II', 't', 'Dia2'},
	{'battle 4 9', 'ma', 'Dia', 't', 'Dia2'},
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
