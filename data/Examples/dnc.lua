
-- Load and initialize the include file.
 xivhotbar_keybinds_job['Base'] = {
     
--Hotbar #1
-- Weaponskills 8-12
	{'battle 1 1', 'ja', 'Curing Waltz', 'stpc', 'CurW','ffxiv/dnc/curing_waltz'},
	{'battle 1 1', 'ja', 'Curing Waltz II', 'stpc', 'CurW2','ffxiv/dnc/curing_waltz'},
	{'battle 1 1', 'ja', 'Curing Waltz III', 'stpc', 'CurW3','ffxiv/dnc/curing_waltz'},
	{'battle 1 1', 'ja', 'Curing Waltz IV', 'stpc', 'CurW4','ffxiv/dnc/curing_waltz'},
	{'battle 1 1', 'ja', 'Curing Waltz V', 'stpc', 'CurW5','ffxiv/dnc/curing_waltz'},
	{'battle 1 2', 'ja', 'Divine Waltz', 'stpc', 'Divine','ffxiv/dnc/improvised_finish'},
	{'battle 1 2', 'ja', 'Divine Waltz II', 'stpc', 'Divine2','ffxiv/dnc/improvised_finish'},
	{'battle 1 3', 'ja', 'Healing Waltz', 'stpc', 'Heal','ffxiv/dnc/shield_samba'},
-- Steps
	{'battle 3 4', 'ja', 'Quickstep', 't', 'Quick','ffxiv/dnc/en_avant'},
	{'battle 3 5', 'ja', 'Box Step', 't', 'Box','ffxiv/dnc/bladeshower'},
	{'battle 3 6', 'ja', 'Stutter Step', 't', 'Stutter','ffxiv/dnc/fountainfall'},
	{'battle 3 7', 'ja', 'Feather Step', 't', 'Feathr','ffxiv/dnc/fan_dance'},

Hotbar #2 
--main job abilities
-- Flourishes 1
	{'battle 2 1', 'ja', 'Animated Flourish', 'stnpc', 'Anima','ffxiv/dnc/closed_position'}, --voke
	{'battle 2 2', 'ja', 'Desperate Flourish', 'stnpc', 'Desp','ffxiv/role/break'}, -- gravity
	{'battle 2 3', 'ja', 'Violent Flourish', 'stnpc', 'Violnt','ffxiv/drk/unmend'}, -- stun
-- Flourishes 2
	{'battle 2 5', 'ja', 'Reverse Flourish', 'me', 'Revrse','ffxiv/dnc/reverse_cascade'},
	{'battle 2 6', 'ja', 'Building Flourish', 'me', 'Build','ffxiv/dnc/flourish'},
	{'battle 2 7', 'ja', 'Wild Flourish', 'me', 'Wild','ffxiv/dnc/rising_windmill'}, -- skillchain
-- Flourish 3
	{'battle 2 8', 'ja', 'Climactic Flourish', 'me', 'Clima','ffxiv/dnc/cascade'}, -- crit
	{'battle 2 9', 'ja', 'Striking Flourish', 'me', 'Strike','ffxiv/dnc/windmill'}, -- double atk
	{'battle 2 10', 'ja', 'Ternary Flourish', 'me', 'Terna','ffxiv/dnc/starfall_dance'}, -- triple atk
	

--Hotbar #3
--sub job abilities; leave blanka

--Hotbar #4
--utility or pet bar
--12 is always 2-hour ability
	{'battle 4 1', 'ja', 'Haste Samba', 'me', 'Haste','ffxiv/dnc/pirouette'},
	{'battle 4 2', 'ja', 'Drain Samba', 'me', 'Drain','ffxiv/dnc/emboite'},
	{'battle 4 2', 'ja', 'Drain Samba II', 'me', 'Drain2','ffxiv/dnc/emboite'},
	{'battle 4 2', 'ja', 'Drain Samba III', 'me', 'Drain3','ffxiv/dnc/emboite'},
	{'battle 4 3', 'ja', 'Aspir Samba', 'me', 'Aspir','ffxiv/dnc/jete'},
	{'battle 4 3', 'ja', 'Aspir Samba II', 'me', 'Aspir2','ffxiv/dnc/jete'},
-- Buffs
	{'battle 4 5', 'ja', 'Contradance', 'me', 'Contra','ffxiv/dnc/tillana'}, 
	{'battle 4 6', 'ja', 'Presto', 'me', 'Presto','ffxiv/dnc/bloodshower'},
	{'battle 4 7', 'ja', 'Saber Dance', 'me', 'Saber','ffxiv/dnc/devilment'}, -- dps merit
	{'battle 4 8', 'ja', 'Fan Dance', 'me', 'Fan','ffxiv/dnc/fan_dance_III'}, -- tank merit
	{'battle 4 9', 'ja', 'No Foot Rise', 'me', 'NoFoot','ffxiv/dnc/technical_finish'}, -- merit
-- Long cooldown
	{'battle 4 11', 'ja', 'Grand Pas', 'me', 'Grand','ffxiv/dnc/standard_step'}, 
	{'battle 4 12', 'ja', 'Trance', 'me', 'Trance','ffxiv/dnc/fan_dance_IV'}, 

-- Hotbar #5
	{'battle 5 1', 'input', '/ra <t>', '', 'Pull', 'ffxiv/dnc/ra'},
	-- Jigs
	{'battle 5 3', 'ja', 'Chocobo Jig', 'me', 'Chocobo','ffxiv/dnc/entrechat'},
	{'battle 5 3', 'ja', 'Chocobo Jig II', 'me', 'Chocobo2','ffxiv/dnc/entrechat'},
	{'battle 4 4', 'ja', 'Spectral Jig', 'me', 'Spectral','ffxiv/nin/hide'},

-- Hotbar #6
}

-- SUBJOBS
-- Hotbar #3
xivhotbar_keybinds_job['SAM'] = {
	-- {'battle 3 1', 'ja', 'Hasso', 'me', 'Hasso', 'ffxiv/sam/ikishoten'},
	{'battle 3 1', 'ja', 'Meditate', 'me', 'Mdtate', 'ffxiv/sam/meditate'},
	{'battle 3 2', 'ja', 'Sekkanoki', 'me', 'Sekka', 'ffxiv/sam/higanbana'},
	-- {'battle 3 4', 'ja', 'Seigan', 'me', 'Seigan', 'ffxiv/sam/tengentsu'},
	{'battle 3 3', 'ja', 'Third Eye', 'me', '3rd Eye', 'ffxiv/sam/third_eye'},
	{'battle 3 4', 'ja', 'Warding Circle', 'me', 'Warding', 'ffxiv/gnb/demon_slaughter'},
 }

xivhotbar_keybinds_job['THF'] = {
	{'battle 3 3', 'ja', 'Steal', 't', 'Steal','ffxiv/nin/dream_within_a_dream'},
	{'battle 3 1', 'ja', 'Sneak Attack', 'me', 'SAtk','ffxiv/nin/spinning_edge'},
	{'battle 3 6', 'ja', 'Flee', 'me', 'Flee','ffxiv/nin/role/peloton'},
	{'battle 3 2', 'ja', 'Trick Attack', 'me', 'TAtk','ffxiv/nin/trick_attack'},
	{'battle 3 4', 'ja', 'Mug', 't', 'Mug','ffxiv/nin/mug'},
	{'battle 3 5', 'ja', 'Hide', 'me', 'Hide','ffxiv/nin/hide'},
 }

xivhotbar_keybinds_job['MNK'] = {
	{'battle 3 1', 'ja', 'Boost', 'me', 'Boost','ffxiv/mnk/riddle_of_fire'},
	{'battle 3 2', 'ja', 'Dodge', 'me', 'Dodge','ffxiv/mnk/riddle_of_earth'},
	{'battle 3 3', 'ja', 'Focus', 'me', 'Focus','ffxiv/mnk/riddle_of_wind'},
	{'battle 3 4', 'ja', 'Chakra', 'me', 'Chakra','ffxiv/mnk/meditation'},
	{'battle 3 5', 'ja', 'Chi Blast', 'stnpc', 'Chi','ffxiv/mnk/elixir_field'},
	{'battle 3 6', 'ja', 'Counterstance', 'me', 'Ctr','ffxiv/mnk/arm_of_the_destroyer'},
}

xivhotbar_keybinds_job['WAR'] = {
	{'battle 3 1', 'ja', 'Provoke', 'stnpc', 'Voke','ffxiv/war/defiance'},
	{'battle 3 2', 'ja', 'Berserk', 'me', 'Brsrk','ffxiv/war/berserk'},
	{'battle 3 3', 'ja', 'Defender', 'me', 'Dfnd','ffxiv/war/shake_it_off'},
	{'battle 3 4', 'ja', 'Warcry', 'me', 'Wrcry','ffxiv/war/inner_beast'},
	{'battle 3 5', 'ja', 'Aggressor', 'me', 'Aggrsr','ffxiv/war/onslaught'},
 }

xivhotbar_keybinds_job['COR'] = {
	{'battle 3 1', 'ja', "Double-Up", 'me', 'Dbl Up','ffxiv/ast/play'},
	{'battle 3 2', 'ja', "Corsair's Roll", 'me', 'COR','classes/ast'}, -- exp
	{'battle 3 3', 'ja', "Ninja Roll", 'me', 'NIN','classes/nin'}, -- eva
	{'battle 3 4', 'ja', "Hunter's Roll", 'me', 'HUN','classes/acr'}, -- acc & ra acc
	{'battle 3 5', 'ja', "Chaos Roll", 'me', 'CHS','classes/rpr'}, -- phys atk
	{'battle 3 7', 'ja', "Magus's Roll", 'me', 'MGS','classes/whm'}, -- mag def
	-- {'battle 3 7', 'ja', "Healer's Roll", 'me', 'HLR','classes/hlr'}, -- cure potency
	-- {'battle 3 8', 'ja', "Drachen Roll", 'me', 'DRC','classes/lnc'}, -- pet & ra acc 
	-- {'battle 3 9', 'ja', "Choral Roll", 'me', 'CRL','classes/brd'}, -- spell interrupt
	-- {'battle 3 10', 'ja', "Monk's Roll", 'me', 'MNK','classes/mnk'}, -- subtle blow
	-- {'battle 3 11', 'ja', "Beast Roll", 'me', 'BST','classes/war'}, -- pet atk
	{'battle 3 3', 'ja', "Samurai Roll", 'me', 'SAM','classes/sam'}, -- store TP
	-- {'battle 3 3', 'ja', "Quick Draw", 'me', 'QkDraw','classes/mch'},
	{'battle 3 9', 'ja', "Evoker's Roll", 'me', 'EVO','classes/smn'}, -- MP regen
	{'battle 3 6', 'ja', "Rogue's Roll", 'me', 'RGE','classes/rge'}, -- crit
	-- {'battle 3 4', 'ja', "Warlock's Roll", 'me', 'WLK','classes/thm'}, -- magic acc
	{'battle 3 2', 'ja', "Fighter's Roll", 'me', 'FTR','classes/mar'}, -- double atk
-- Mastery only
	-- {'battle 3 6', 'ja', "Puppet Roll", 'me', 'PUP','classes/pug'}, -- pet matk & pet macc
	{'battle 3 8', 'ja', "Gallant's Roll", 'me', 'GAL','classes/pld'}, -- def
	-- {'battle 3 8', 'ja', "Wizard's Roll", 'me', 'WIZ','classes/blm'}, -- matk
	{'battle 3 12', 'ja', "Random Deal", 'me', 'Randm','ffxiv/ast/draw'}, 
}

xivhotbar_keybinds_job['NIN'] = {
-- Shadows
	{'battle 3 1', 'ma', 'Utsusemi: Ichi', 'me', 'Utsu:Ichi','ffxiv/nin/dream_within_a_dream'},
	{'battle 3 2', 'ma', 'Utsusemi: Ni', 'me', 'Utsu:Ni','ffxiv/nin/phantom_kamaitachi'},
-- Elements
	-- {'battle 3 7', 'ma', 'Katon: Ni', 'stnpc', 'Katon2','ffxiv/nin/katon'}, -- fire
	-- {'battle 3 7', 'ma', 'Katon: Ichi', 'stnpc', 'Katon','ffxiv/nin/katon'}, -- fire
	-- {'battle 3 8', 'ma', 'Suiton: Ni', 'stnpc', 'Suiton2','ffxiv/nin/suiton'}, -- water
	-- {'battle 3 8', 'ma', 'Suiton: Ichi', 'stnpc', 'Suiton','ffxiv/nin/suiton'}, -- water
	-- {'battle 3 9', 'ma', 'Doton: Ni', 'stnpc', 'Doton2','ffxiv/nin/doton'}, -- earth
	-- {'battle 3 9', 'ma', 'Doton: Ichi', 'stnpc', 'Doton','ffxiv/nin/doton'}, -- earth
	-- {'battle 3 10', 'ma', 'Hyoton: Ni', 'stnpc', 'Hyoton2','ffxiv/nin/hyoton'}, -- ice
	-- {'battle 3 10', 'ma', 'Hyoton: Ichi', 'stnpc', 'Hyoton','ffxiv/nin/hyoton'}, -- ice
	-- {'battle 3 11', 'ma', 'Huton: Ni', 'stnpc', 'Huton2','ffxiv/nin/huton'}, -- wind
	-- {'battle 3 11', 'ma', 'Huton: Ichi', 'stnpc', 'Huton','ffxiv/nin/huton'}, -- wind
	-- {'battle 3 12', 'ma', 'Raiton: Ni', 'stnpc', 'Raiton2','ffxiv/nin/raiton'}, -- thunder
	-- {'battle 3 12', 'ma', 'Raiton: Ichi', 'stnpc', 'Raiton','ffxiv/nin/raiton'}, -- thunder
-- Enfeeblement
	{'battle 3 3', 'ma', 'Kurayami: Ichi', 'stnpc', 'Kura','ffxiv/blu/glower'}, -- blind
	{'battle 3 4', 'ma', 'Hojo: Ni', 't', 'Hojo','ffxiv/ast/redraw'}, -- slow
	{'battle 3 4', 'ma', 'Hojo: Ichi', 't', 'Hojo','ffxiv/ast/redraw'}, -- slow
	{'battle 3 5', 'ma', 'Dokumori: Ichi', 'stnpc', 'Doku','ffxiv/blu/exuviation'}, -- poison
	{'battle 3 6', 'ma', 'Jubaku: Ichi', 'stnpc', 'Jubaku','ffxiv/blu/faze'}, -- paralyze
-- Stances
	{'battle 3 11', 'ja', 'Yonin', 'me', 'Yonin','ffxiv/nin/shade_shift'}, -- tanky
	{'battle 3 12', 'ja', 'Innin', 'me', 'Innin','ffxiv/nin/assassinate'}, -- dps
 }

xivhotbar_keybinds_job['DRG'] = {
	{'battle 3 1', 'ja', 'Jump', 't', 'Jump', 'ffxiv/drg/jump'},
	{'battle 3 2', 'ja', 'High Jump', 't', 'HiJump', 'ffxiv/drg/high_jump'},
	{'battle 3 3', 'ja', 'Ancient Circle', 'me', 'Ancient', 'ffxiv/rpr/arcane_crest'},
	{'battle 3 4', 'ja', 'Super Jump', 't', 'SuJump', 'ffxiv/drg/elusive_jump'}, -- mastery
 }

xivhotbar_keybinds_job['DRK'] = {
	{'battle 3 1', 'ja', 'Last Resort', 'me', 'LResort', 'ffxiv/drk/grit'},
	{'battle 3 2', 'ja', 'Souleater', 'me', 'SEater', 'ffxiv/drk/souleater'},
	{'battle 3 3', 'ja', 'Consume Mana', 'me', 'Consume', 'ffxiv/drk/syphon_strike'},
	{'battle 3 4', 'ja', 'Weapon Bash', 't', 'Bash', 'ffxiv/drk/shadow_wall'},
	{'battle 3 5', 'ja', 'Arcane Circle', 'me', 'Arcane', 'ffxiv/drk/salted_earth'},
	{'battle 3 6', 'ma', 'Bio II', 'stnpc', 'Bio2','ffxiv/sch/bio_II'},
	{'battle 3 6', 'ma', 'Bio', 'stnpc', 'Bio','ffxiv/sch/bio'},
	{'battle 3 7', 'ma', 'Sleep II', 'stnpc', 'Sleep2','ffxiv/role/sleep'},
	{'battle 3 7', 'ma', 'Sleep', 'stnpc', 'Sleep','ffxiv/role/sleep'},
	{'battle 3 8', 'ma', 'Stun', 't', 'Stun','ffxiv/drk/unmend'},
 }

-- WEAPONSKILL SETS
xivhotbar_keybinds_job['Dagger'] = {
-- Heavy Hit
	{'battle 1 8', 'ws', 'Wasp Sting', 't', 'Wasp'},
	{'battle 1 8', 'ws', 'Viper Bite', 't', 'Viper'}, -- rdm thf brd rng nin dnc
	{'battle 1 8', 'ws', 'Shark Bite', 't', 'Shark'}, -- thf dnc
-- Multi-Hit
	{'battle 1 9', 'ws', 'Dancing Edge', 't', 'DncEdge'}, -- thf dnc
	{'battle 1 9', 'ws', 'Evisceration', 't', 'Evisc'}, -- war rdm thf bst brd rng nin cor dnc
-- Wind
	-- {'battle 1 6', 'ws', 'Gust Slash', 't', 'Gust'},
-- Specials
	-- {'battle 1 4', 'ws', 'Energy Steal', 't', 'Energy'},
	-- {'battle 1 4', 'ws', 'Energy Drain', 't', 'Energy'}, -- rdm thf brd rng nin dnc
-- Prime #6
	{'battle 1 9', 'ws', 'Ruthless Stroke', 't', 'Ruthless'},
-- Class Specific #7
	-- {'battle 1 7', 'ws', 'Mandalic Stab', 't', 'Mandalic'}, -- thf
	-- {'battle 1 7', 'ws', 'Mordant Rime', 't', 'Mordant'}, -- brd
	{'battle 1 12', 'ws', 'Pyrrhic Kleos', 't', 'Pyrrhic'}, -- dnc
-- Merit Point #8
	{'battle 1 12', 'ws', 'Exenterator', 't', 'Exent'}, -- war rdm thf bst brd rng nin cor dnc
-- Empyrean (Abyssea only)  #9
	{'battle 1 9', 'ws', "Rudra's Storm", 't', 'Rudra'}, -- thf brd dnc
-- Relic (only usable with specific weapon equips) #10
	{'battle 1 10', 'ws', 'Mercy Stroke', 't', 'Mercy'}, -- rdm thf brd dnc relic
-- AoE Ws #11
	{'battle 1 11', 'ws', 'Cyclone', 't', 'Cyclone'}, -- rdm thf brd rng nin cor dnc
	{'battle 1 11', 'ws', 'Aeolian Edge', 't', 'Aeoln'}, -- rdm thf brd rng nin dnc
-- Bind WS #12
	-- {'battle 1 12', 'ws', 'Shadowstitch', 't', 'ShdSt'},
}

return xivhotbar_keybinds_job
