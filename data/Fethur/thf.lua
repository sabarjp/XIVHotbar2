
-- Load and initialize the include file.
 xivhotbar_keybinds_job['Base'] = {
     
  -- Hotbar #1
  {'battle 1 12', 'macro','input /ra <t>'},
	
  -- Hotbar #2 - subjob setups below
	
  -- Hotbar #3
	{'battle 3 1', 'ja', 'Sneak Attack', 'me', 'Sneak','ffxiv/nin/spinning_edge'},
	{'battle 3 2', 'ja', 'Trick Attack', 'me', 'Trick','ffxiv/nin/trick_attack'},
	{'battle 3 3', 'macro','input /ja "Sneak Attack" <me>;wait 1;input /ja "Trick Attack" <me>;wait 1;input /ws "Shark Bite" <t>','','sataSB',''},
	{'battle 3 4', 'macro','input /ja "Sneak Attack" <me>;wait 1;input /ja "Trick Attack" <me>;wait 1;/ws "Dancing Edge" <t>', '', 'sataDe'},
	{'battle 3 5', 'macro','input /ja "Sneak Attack" <me>;wait 1;input /ja "Trick Attack" <me>;wait 1;input /ws "Viper Bite" <t>','','sataVB',''},
	{'battle 3 6', 'ja', 'Accomplice', 'st', 'Accomp'},
	{'battle 3 7', 'ja', 'Collaborator', 'st', 'Collab'},
	{'battle 3 8', 'ja', 'Conspirator', 'st', 'Conspir'},

	
  
  -- Hotbar #4
	{'battle 4 1', 'ja', 'Steal', 't', 'Steal','ffxiv/nin/dream_within_a_dream'},
	{'battle 4 2', 'ja', 'Despoil', 't', 'Despoil'},
	{'battle 4 3', 'ja', 'Mug', 't', 'Mug','ffxiv/nin/mug'},
	{'battle 4 4', 'ja', 'Hide', 'me', 'Hide','ffxiv/nin/hide'},
	{'battle 4 5', 'ja', 'Flee', 'me', 'Flee','ffxiv/nin/forked_raiju'},
	{'battle 4 6', 'ja', 'Larceny', 't', 'Larceny', 'cog'},
	{'battle 4 7', 'ja', 'Bully', 't', 'Bully'},

  -- Hotbar #5
  {'battle 5 7', 'input', '/ra <t>', '', 'RA-Cla', 'claim'},
  {'battle 5 8', 'macro', 'input /targetnpc;input /ja Steal <t>', '', 'Steal-Cla', 'claim'},

  -- Hotbar #6

 
  
}

xivhotbar_keybinds_job['DNC'] = {
  {'battle 2 1', 'ja', 'Curing Waltz', 'stpc', 'C. Waltz'},
  {'battle 2 1', 'ja', 'Curing Waltz II', 'stpc', 'C. Waltz II'},
  {'battle 2 1', 'ja', 'Curing Waltz III', 'stpc', 'C. Waltz III'},
  {'battle 2 2', 'ja', 'Divine Waltz', 'stpc', 'D. Waltz'},
  {'battle 2 3', 'ja', 'Healing Waltz', 'stpc', 'H. Waltz'},
  {'battle 2 4', 'ja', 'Haste Samba', 'me', 'Haste'},
  {'battle 2 5', 'ja', 'Drain Samba', 'me', 'Drain'},
  {'battle 2 5', 'ja', 'Drain Samba II', 'me', 'Drain II'},
  {'battle 2 6', 'ja', 'Aspir Samba', 'me', 'MP Drain'},
  {'battle 2 7', 'ja', 'Quickstep', 'bt', 'Eva. Down'},
  {'battle 2 8', 'ja', 'Box Step', 'bt', 'Def. Down'},
  {'battle 2 9', 'ja', 'Stutter Step', 'bt', 'MDef. Down'},
	
}

xivhotbar_keybinds_job['WAR'] = {
  {'battle 2 3', 'ja', 'Provoke', 't', 'Provoke'},
  {'battle 2 4', 'ja', 'Provoke', 'stnpc', 'Voke ST'},
  {'battle 2 5', 'ja', 'Berserk', 'me', 'Berserk'},
  {'battle 2 6', 'ja', 'Defender', 'me', 'Defender'},
  {'battle 2 7', 'ja', 'Warcry', 'me', 'Warcry'},
	
}

xivhotbar_keybinds_job['NIN'] = {
  {'battle 2 2', 'ma', 'Utsusemi: Ichi', 'me', 'Ichi','ffxiv/nin/phantom_kamaitachi'},
  {'battle 2 1', 'ma', 'Utsusemi: Ni', 'me', 'Ni','ffxiv/nin/phantom_kamaitachi'},
  
}

xivhotbar_keybinds_job['BLU'] = {
	{'battle 2 1', 'ma', 'Battle Dance', 't', 'Battle Dance'},
	{'battle 2 2', 'ma', 'Claw Cyclone', 't', 'Claw Cyc'},
	{'battle 2 3', 'ma', 'Grand Slam', 't', 'G. Slam'},
	
}

xivhotbar_keybinds_job['Dagger'] = {  
 
   --{'battle 1 1', 'ws', 'Wasp Sting', 't', 'Wasp', 'ffxiv/nin/assassinate'},
   {'battle 1 1', 'ws', 'Viper Bite', 't', 'Viper', 'ffxiv/gnb/blasting_zone'},
   {'battle 1 2', 'ws', 'Shark Bite', 't', 'Shark', 'ffxiv/gnb/brutal_shell'},
	 {'battle 1 3', 'ws', 'Dancing Edge', 't', 'Dancing', 'ffxiv/dnc/cascade'},
   {'battle 1 4', 'ws', 'Evisceration', 't', 'Eviscer', 'ffxiv/gnb/eye_gouge'},
   {'battle 1 5', 'ws', 'Cyclone', '', 'Cyclone', 'ffxiv/nin/aeolian_edge'},

}
xivhotbar_keybinds_job['Sword'] = {
  {'battle 1 1', 'ws', 'Fast Blade', 't', 'FastBlade'},

}

xivhotbar_keybinds_job['Hand-to-hand'] = {
  {'battle 1 1', 'ws', 'Combo', 't', 'Combo'},

}


return xivhotbar_keybinds_job
