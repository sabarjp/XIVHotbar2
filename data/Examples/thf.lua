
-- Load and initialize the include file.
 xivhotbar_keybinds_job['Base'] = {
     
--Hotbar #1
-- Weaponskills; leave blank

--Hotbar #2 
--main job abilities
	-- SATA Single Hit
	{'battle 2 1', 'macro','input /ja "Sneak Attack" <me>;wait 2;input /ja "Trick Attack" <me>;wait 1;input /ws "Wasp Sting" <t>','','sataVB',''},
	{'battle 2 1', 'macro','input /ja "Sneak Attack" <me>;wait 2;input /ja "Trick Attack" <me>;wait 1;input /ws "Viper Bite" <t>','','sataVB',''},
	{'battle 2 1', 'macro','input /ja "Sneak Attack" <me>;wait 2;input /ja "Trick Attack" <me>;wait 1;input /ws "Shark Bite" <t>','','sataSB',''},
	{'battle 2 1', 'macro',"input /ja 'Sneak Attack' <me>;wait 2;input /ja 'Trick Attack' <me>;wait 1;input /ws 'Rudra's Storm' <t>","","sataVB",""},
	-- SATA Multi Hit
	{'battle 2 2', 'macro','input /ja "Sneak Attack" <me>;wait 2;input /ja "Trick Attack" <me>;wait 1;/ws "Dancing Edge" <t>', '', 'sataDe'},
	{'battle 2 3', 'ja', 'Sneak Attack', 'me', 'Sneak','ffxiv/nin/spinning_edge'},
	{'battle 2 4', 'ja', 'Trick Attack', 'me', 'Trick','ffxiv/nin/trick_attack'},
	{'battle 2 5', 'ja', 'Bully', 't', 'Bully'},
	{'battle 2 6', 'ja', 'Accomplice', 'st', 'Accomp'},
	{'battle 2 7', 'ja', 'Collaborator', 'st', 'Collab'},
	

--Hotbar #3
--sub job abilities; leave blanka

--Hotbar #4
--utility or pet bar
--12 is always 2-hour ability
	{'battle 4 1', 'ja', 'Steal', 't', 'Steal','ffxiv/nin/dream_within_a_dream'},
	{'battle 4 2', 'ja', 'Despoil', 't', 'Despoil'},
	{'battle 4 3', 'ja', 'Mug', 't', 'Mug','ffxiv/nin/mug'},
	{'battle 4 2', 'ja', 'Feint', 'me', 'Feint'},
	{'battle 4 4', 'ja', 'Hide', 'me', 'Hide','ffxiv/nin/hide'},
	{'battle 4 5', 'ja', 'Flee', 'me', 'Flee','ffxiv/nin/forked_raiju'},
	{'battle 4 6', 'ja', 'Larceny', 't', 'Larceny', 'cog'},
	{'battle 4 6', 'ja', 'Conspirator', 'me', 'Conspir'},
	{'battle 4 12', 'ja', 'Perfect Dodge', 'me', 'P Dodge', '2Hr'},

-- Hotbar #5
	{'battle 5 1', 'input', '/ra <t>', '', 'Pull', 'ra'},

-- Hotbar #6
}

-- Subjobs
-- Hotbar #3
xivhotbar_keybinds_job['COR'] = {
	{'battle 3 1', 'ja', "Double-Up", 'me', 'Dbl Up'},
	{'battle 3 2', 'ja', "Corsair's Roll", 'me', 'COR'}, -- exp
	{'battle 3 3', 'ja', "Ninja Roll", 'me', 'NIN'}, -- eva
	{'battle 3 4', 'ja', "Hunter's Roll", 'me', 'HUN'}, -- acc & ra acc
	{'battle 3 5', 'ja', "Chaos Roll", 'me', 'CHS'}, -- phys atk
	{'battle 3 6', 'ja', "Magus's Roll", 'me', 'MGS'}, -- mag def
	{'battle 3 7', 'ja', "Healer's Roll", 'me', 'HLR'}, -- cure potency
	{'battle 3 6', 'ja', "Drachen Roll", 'me', 'CHS'}, -- pet & ra acc 
	{'battle 3 8', 'ja', "Choral Roll", 'me', 'CRL'}, -- spell interrupt
	{'battle 3 7', 'ja', "Monk's Roll", 'me', 'MNK'}, -- subtle blow
	{'battle 3 8', 'ja', "Beast Roll", 'me', 'BST'}, -- pet atk
	{'battle 3 7', 'ja', "Samurai Roll", 'me', 'SAM'}, -- store TP
	{'battle 3 8', 'ja', "Evoker's Roll", 'me', 'EVO'}, -- MP regen
	{'battle 3 3', 'ja', "Rogue's Roll", 'me', 'RGE'}, -- crit
	{'battle 3 9', 'ja', "Warlock's Roll", 'me', 'WLK'}, -- magic acc
	{'battle 3 10', 'ja', "Fighter's Roll", 'me', 'SAM'}, -- double atk
}

  xivhotbar_keybinds_job['NIN'] = {
	{'battle 3 1', 'ma', 'Utsusemi: Ichi', 'me', 'Utsu:Ichi'},
	{'battle 3 2', 'ma', 'Utsusemi: Ni', 'me', 'Utsu:Ni'},
	{'battle 3 3', 'ma', 'Kurayami: Ichi', 't', 'Kurayami'},
	{'battle 3 4', 'ma', 'Hojo: Ichi', 't', 'Hojo'},
	{'battle 3 5', 'ma', 'Dokumori: Ichi', 't', 'Dokumori'},
	{'battle 3 6', 'ma', 'Jubaku: Ichi', 't', 'Jubaku'},
	{'battle 3 11', 'ja', 'Yonin', 'me', 'Yonin'}, 
	{'battle 3 12', 'ja', 'Innin', 'me', 'Innin'},
 }

xivhotbar_keybinds_job['PUP'] = {
	{'battle 3 1', 'ja', 'Deploy','t', 'Fight'},
	{'battle 3 2', 'ja', 'Retrieve','t', 'Retrieve'},
	{'battle 3 3', 'ja', 'Fire Maneuver','me', 'FireMan'},
	{'battle 3 4', 'ja', 'Ice Maneuver','me', 'IceMan'},
	{'battle 3 5', 'ja', 'Wind Maneuver','me', 'WndMan'},
	{'battle 3 6', 'ja', 'Earth Maneuver','me', 'EthMan'},
	{'battle 3 7', 'ja', 'Thunder Maneuver','me', 'ThrMan'},
	{'battle 3 8', 'ja', 'Water Maneuver','me', 'WtrMan'},
	{'battle 3 9', 'ja', 'Light Maneuver','me', 'LghMan'},
	{'battle 3 10', 'ja', 'Dark Maneuver','me', 'DrkMan'},
	{'battle 3 11', 'ja', 'Repair', 'me', 'Repair'},  --needs oil
	{'battle 3 12', 'ja', 'Activate', 'me', 'Activate'},
}

xivhotbar_keybinds_job['DRG'] = {
	{'battle 3 1', 'ja', 'Jump', 't', 'Jump', 'ffxiv/drg/jump'},
	{'battle 3 2', 'ja', 'High Jump', 't', 'Hi Jump', 'ffxiv/drg/high_jump'},
	{'battle 3 3', 'ja', 'Ancient Circle', 'me', 'Ancient', 'ffxiv/rpr/arcane_crest'},
	{'battle 3 4', 'ja', 'Super Jump', 't', 'Su Jump', 'ffxiv/drg/elusive_jump'},
 }

xivhotbar_keybinds_job['SAM'] = {
	{'battle 3 1', 'ja', 'Hasso', 'me', 'Hasso', 'ffxiv/sam/ikishoten'},
	{'battle 3 2', 'ja', 'Meditate', 'me', 'Mdtate', 'ffxiv/sam/meditate'},
	{'battle 3 3', 'ja', 'Sekkanoki', 'me', 'Sekka', 'ffxiv/sam/meikyo_shisui'},
	{'battle 3 4', 'ja', 'Seigan', 'me', 'Seigan', 'ffxiv/sam/tengentsu'},
	{'battle 3 5', 'ja', 'Third Eye', 'me', '3rd Eye', 'ffxiv/sam/third_eye'},
	{'battle 3 6', 'ja', 'Warding Circle', 'me', 'Warding', 'ffxiv/gnb/demon_slaughter'},
 }
 
 xivhotbar_keybinds_job['DRK'] = {
	{'battle 3 1', 'ja', 'Last Resort', 'me', 'LResort', 'ffxiv/drk/grit'},
	{'battle 3 2', 'ja', 'Souleater', 'me', 'SEater', 'ffxiv/drk/souleater'},
	{'battle 3 3', 'ja', 'Consume Mana', 'me', 'Consume', 'ffxiv/drk/syphon_strike'},
	{'battle 3 4', 'ja', 'Weapon Bash', 't', 'Bash', 'ffxiv/drk/shadow_wall'},
	{'battle 3 5', 'ja', 'Arcane Circle', 'me', 'Arcane', 'ffxiv/drk/salted_earth'},
	{'battle 3 6', 'ma', 'Bio', 't', 'Bio'},
	{'battle 3 6', 'ma', 'Bio II', 't', 'Bio II'},
	{'battle 3 7', 'ma', 'Sleep', 't', 'Sleep'},
	{'battle 3 7', 'ma', 'Sleep II', 't', 'Sleep II'},
	{'battle 3 8', 'ma', 'Stun', 't', 'Stun'},
 }
 
  xivhotbar_keybinds_job['WAR'] = {
	{'battle 3 1', 'ja', 'Berserk', 'me', 'Berserk'},
	{'battle 3 2', 'ja', 'Warcry', 'me', 'Warcry'},
	{'battle 3 3', 'ja', 'Aggressor', 'me', 'Aggrssr'},
	{'battle 3 4', 'ja', 'Defender', 'me', 'Defend'},
	{'battle 3 5', 'ja', 'Provoke', 't', 'Voke'},
 }
 
  xivhotbar_keybinds_job['DNC'] = {
-- Sambas
	{'battle 3 1', 'ja', 'Haste Samba', 'me', 'Haste'},
	{'battle 3 2', 'ja', 'Drain Samba', 'me', 'Drain'},
	{'battle 3 2', 'ja', 'Drain Samba II', 'me', 'Drain II'},
	{'battle 3 3', 'ja', 'Aspir Samba', 'me', 'Aspir'},
-- Waltzes
	{'battle 3 4', 'ja', 'Curing Waltz', 'stpc', 'Curing'},
	{'battle 3 4', 'ja', 'Curing Waltz II', 'stpc', 'Curing II'},
	{'battle 3 4', 'ja', 'Curing Waltz III', 'stpc', 'Curing III'},
	{'battle 3 5', 'ja', 'Divine Waltz', 'stpc', 'Divine'},
	{'battle 3 6', 'ja', 'Healing Waltz', 'stpc', 'Healing'},
	{'battle 3 6', 'ja', 'Contradance', 'me', 'Contradnc'},
-- Steps
	{'battle 3 7', 'ja', 'Quickstep', 't', 'Quick'},
	{'battle 3 8', 'ja', 'Box Step', 't', 'Box'},
	{'battle 3 9', 'ja', 'Stutter Step', 't', 'Stutter'},
-- Flourishes
	{'battle 3 10', 'ja', 'Animated Flourish', 't', 'Voke'},
	{'battle 3 11', 'ja', 'Violent Flourish', 't', 'Stun'},
	{'battle 3 12', 'ja', 'Reverse Flourish', 'me', 'Reverse'},
 }
 
 xivhotbar_keybinds_job['THF'] = {
	{'battle 3 1', 'ja', 'Sneak Attack', 'me', 'S Atk'},
	{'battle 3 2', 'ja', 'Trick Attack', 'me', 'T Atk'},
	{'battle 3 3', 'ja', 'Steal', 't', 'Steal'},
	{'battle 3 4', 'ja', 'Mug', 't', 'Mug'},
	{'battle 3 5', 'ja', 'Hide', 'me', 'Hide'},
	{'battle 3 6', 'ja', 'Flee', 'me', 'Flee'},
 }
 
 xivhotbar_keybinds_job['WHM'] = {
	-- Debuffs 
	{'battle 3 1', 'ma', 'Dia', 't', 'Dia'},
	{'battle 3 1', 'ma', 'Dia II', 't', 'Dia II'},
	{'battle 3 2', 'ma', 'Paralyze', 't', 'Para'},
	{'battle 3 3', 'ma', 'Slow', 't', 'Slow'},
	{'battle 3 4', 'ma', 'Silence', 't', 'Silence'},
	-- Support
	{'battle 3 5', 'ma', 'Haste', 'stpc', 'Haste'},
	{'battle 3 6', 'ma', 'Blink', 'me', 'Blink'},
	{'battle 3 7', 'ma', 'Stoneskin', 'me', 'StnSkin'},
	{'battle 3 8', 'ma', 'Erase', 'stpc', 'Erase'},
	-- Healing
	{'battle 3 9', 'ja', 'Divine Seal', 'me', 'Divine'},
	-- Cure
	{'battle 3 10', 'ma', 'Cure', 'stpc', 'Cure'},
	{'battle 3 10', 'ma', 'Cure II', 'stpc', 'CurII'},
	{'battle 3 10', 'ma', 'Cure III', 'stpc', 'CurIII'},
	{'battle 3 10', 'ma', 'Cure IV', 'stpc', 'CurIV'},
	-- Regen
	{'battle 3 11', 'ma', 'Regen', 'stpc', 'Regen'},
	{'battle 3 11', 'ma', 'Regen', 'stpc', 'Regen II'},
	-- Curaga
	{'battle 3 12', 'ma', 'Curaga', 'stpc', 'Curga'},
	{'battle 3 12', 'ma', 'Curaga II', 'stpc', 'Curga II'},
	{'battle 3 12', 'ma', 'Curaga III', 'stpc', 'Curga III'},
 }

-- Weaponskill sets
-- 11 is always aoe
-- 12 is always stun
xivhotbar_keybinds_job['Dagger'] = {
	{'battle 1 1', 'ws', 'Wasp Sting', 't', 'Wasp'},
	{'battle 1 1', 'ws', 'Viber Bite', 't', 'Viper'},
	{'battle 1 1', 'ws', 'Shark Bite', 't', 'Shark'},
	{'battle 1 1', 'ws', "Rudra's Storm", 't', 'Rudra'},
	{'battle 1 2', 'ws', 'Gust Slash', 't', 'Gust'},
	{'battle 1 2', 'ws', 'Aeolian Edge', 't', 'Aeolian'}, -- rdm thf brd rng nin dnc
	{'battle 1 3', 'ws', 'Dancing Edge', 't', 'Dancing E'},
	{'battle 1 4', 'ws', 'Evisceration', 't', 'Eviscrtn'}, -- war rdm thf bst brd rng nin cor dnc
	{'battle 1 5', 'ws', 'Energy Steal', 't', 'Energy'},
	{'battle 1 5', 'ws', 'Energy Drain', 't', 'Energy'}, -- rdm thf brd rng nin dnc
	{'battle 1 5', 'ws', 'Exenterator', 't', 'Exentrtr'}, -- merit
	{'battle 1 6', 'ws', 'Mandalic Stab', 't', 'Mandalic'}, -- mythic
	{'battle 1 7', 'ws', 'Ruthless Stroke', 't', 'Ruthless'}, -- prime
	{'battle 1 10', 'ws', 'Mercy Stroke', 't', 'Mercy'},
	{'battle 1 11', 'ws', 'Cyclone', 't', 'Cyclone'},-- aoe ws
	{'battle 1 12', 'ws', 'Shadowstitch', 't', 'S.Stich'}, -- Bind
}

return xivhotbar_keybinds_job
