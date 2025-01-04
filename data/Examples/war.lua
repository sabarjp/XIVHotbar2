
-- Load and initialize the include file.
 xivhotbar_keybinds_job['Base'] = {
     
--Hotbar #1
-- Weaponskills; leave blank

--Hotbar #2 
--main job abilities
	{'battle 2 1', 'ja', 'Provoke', 'stnpc', 'Voke','ffxiv/war/defiance'},
	{'battle 2 2', 'ja', 'Berserk', 'me', 'Berserk','ffxiv/war/berserk'},
	{'battle 2 3', 'ja', 'Warcry', 'me', 'Warcry','ffxiv/war/inner_beast'},
	{'battle 2 3', 'ja', "Warrior's Charge", 'me', 'WCharge','ffxiv/war/inner_chaos'},
	{'battle 2 3', 'ja', 'Brazen Rush', 'me', 'Brazen','ffxiv/war/overpower'},
	

--Hotbar #3
--sub job abilities; leave blanka

--Hotbar #4
--utility or pet bar
--12 is always 2-hour ability
	{'battle 4 3', 'ja', 'Defender', 'me', 'Defend','ffxiv/war/shake_it_off'},
	{'battle 4 1', 'ja', 'Aggressor', 'me', 'Aggrsr','ffxiv/war/onslaught'},
	{'battle 4 2', 'ja', 'Retaliation', 'stnpc', 'Rtaliate','ffxiv/war/fell_cleave'},
	{'battle 4 3', 'ja', 'Restraint', 'me', 'Restrnt','ffxiv/war/primal_rend'},
	{'battle 4 3', 'ja', 'Blood Rage', 'me', 'Blood','ffxiv/war/bloodwhetting'},
	{'battle 4 12', 'ja', 'Mighty Strikes', 'me', 'Mty Stk','ffxiv/war/holmgang'},

-- Hotbar #5
	{'battle 5 1', 'input', '/ra <t>', '', 'Pull', 'ra'},
	{'battle 5 2', 'ja', 'Provoke', 't', 'Voke','ffxiv/war/defiance'},
	{'battle 5 3', 'ja', 'Tomahawk', 'stnpc', 'Tomahawk','ffxiv/war/tomahawk'},

-- Hotbar #6
}

-- SUBJOBS
-- Hotbar #3
xivhotbar_keybinds_job['MNK'] = {
	{'battle 3 1', 'ja', 'Boost', 'me', 'Boost','ffxiv/mnk/riddle_of_fire'},
	{'battle 3 2', 'ja', 'Dodge', 'me', 'Dodge','ffxiv/mnk/riddle_of_earth'},
	{'battle 3 3', 'ja', 'Focus', 'me', 'Focus','ffxiv/mnk/riddle_of_wind'},
	{'battle 3 4', 'ja', 'Chakra', 'me', 'Chakra','ffxiv/mnk/meditation'},
	{'battle 3 5', 'ja', 'Chi Blast', 'stnpc', 'Chi','ffxiv/mnk/elixir_field'},
	{'battle 3 6', 'ja', 'Counterstance', 'me', 'Ctr','ffxiv/mnk/arm_of_the_destroyer'},
}

xivhotbar_keybinds_job['THF'] = {
	{'battle 3 3', 'ja', 'Steal', 't', 'Steal','ffxiv/nin/dream_within_a_dream'},
	{'battle 3 1', 'ja', 'Sneak Attack', 'me', 'SAtk','ffxiv/nin/spinning_edge'},
	{'battle 3 6', 'ja', 'Flee', 'me', 'Flee','ffxiv/nin/role/peloton'},
	{'battle 3 2', 'ja', 'Trick Attack', 'me', 'TAtk','ffxiv/nin/trick_attack'},
	{'battle 3 4', 'ja', 'Mug', 't', 'Mug','ffxiv/nin/mug'},
	{'battle 3 5', 'ja', 'Hide', 'me', 'Hide','ffxiv/nin/hide'},
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
	{'battle 3 12', 'ja', "Random Deal", 'me', 'Randm','ffxiv/ast/undraw'}, 
}

xivhotbar_keybinds_job['NIN'] = {
-- Shadows
	{'battle 3 1', 'ma', 'Utsusemi: Ichi', 'me', 'Utsu:Ichi','ffxiv/nin/dream_within_a_dream'},
	{'battle 3 2', 'ma', 'Utsusemi: Ni', 'me', 'Utsu:Ni','ffxiv/nin/phantom_kamaitachi'},
-- Elements
	{'battle 3 7', 'ma', 'Katon: Ichi', 'stnpc', 'Katon','ffxiv/nin/katon'}, -- fire
	{'battle 3 7', 'ma', 'Katon: Ni', 'stnpc', 'Katon','ffxiv/nin/katon'}, -- fire
	{'battle 3 8', 'ma', 'Suiton: Ichi', 'stnpc', 'Suiton','ffxiv/nin/suiton'}, -- water
	{'battle 3 8', 'ma', 'Suiton: Ni', 'stnpc', 'Suiton','ffxiv/nin/suiton'}, -- water
	{'battle 3 9', 'ma', 'Doton: Ichi', 'stnpc', 'Doton','ffxiv/nin/doton'}, -- earth
	{'battle 3 9', 'ma', 'Doton: Ni', 'stnpc', 'Doton','ffxiv/nin/doton'}, -- earth
	{'battle 3 10', 'ma', 'Hyoton: Ichi', 'stnpc', 'Hyoton','ffxiv/nin/hyoton'}, -- ice
	{'battle 3 10', 'ma', 'Hyoton: Ni', 'stnpc', 'Hyoton','ffxiv/nin/hyoton'}, -- ice
	{'battle 3 11', 'ma', 'Huton: Ichi', 'stnpc', 'Huton','ffxiv/nin/huton'}, -- wind
	{'battle 3 11', 'ma', 'Huton: Ni', 'stnpc', 'Huton','ffxiv/nin/huton'}, -- wind
	{'battle 3 12', 'ma', 'Raiton: Ichi', 'stnpc', 'Raiton','ffxiv/nin/raiton'}, -- thunder
	{'battle 3 12', 'ma', 'Raiton: Ni', 'stnpc', 'Raiton','ffxiv/nin/raiton'}, -- thunder
-- Enfeeblement
	{'battle 3 3', 'ma', 'Kurayami: Ichi', 'stnpc', 'Kura','ffxiv/blu/glower'}, -- blind
	{'battle 3 4', 'ma', 'Hojo: Ichi', 't', 'Hojo','ffxiv/ast/redraw'}, -- slow
	{'battle 3 4', 'ma', 'Hojo: Ni', 't', 'Hojo','ffxiv/ast/redraw'}, -- slow
	{'battle 3 5', 'ma', 'Dokumori: Ichi', 'stnpc', 'Doku','ffxiv/blu/exuviation'}, -- poison
	{'battle 3 6', 'ma', 'Jubaku: Ichi', 'stnpc', 'Jubaku','ffxiv/blu/faze'}, -- paralyze
-- Stances
	{'battle 3 11', 'ja', 'Yonin', 'me', 'Yonin','ffxiv/nin/shade_shift'}, -- tanky
	{'battle 3 12', 'ja', 'Innin', 'me', 'Innin','ffxiv/nin/assassinate'}, -- dps
 }

xivhotbar_keybinds_job['DNC'] = {
-- Sambas
	{'battle 3 1', 'ja', 'Haste Samba', 'me', 'Haste','ffxiv/dnc/pirouette'},
	{'battle 3 2', 'ja', 'Drain Samba', 'me', 'Drain','ffxiv/dnc/emboite'},
	{'battle 3 2', 'ja', 'Drain Samba II', 'me', 'Drain2','ffxiv/dnc/emboite'},
	-- {'battle 3 3', 'ja', 'Aspir Samba', 'me', 'Aspir','ffxiv/dnc/jete'},
-- Waltzes
	{'battle 3 3', 'ja', 'Curing Waltz', 'stpc', 'CurW','ffxiv/dnc/curing_waltz'},
	{'battle 3 3', 'ja', 'Curing Waltz II', 'stpc', 'CurW2','ffxiv/dnc/curing_waltz'},
	{'battle 3 3', 'ja', 'Curing Waltz III', 'stpc', 'CurW3','ffxiv/dnc/curing_waltz'},
	{'battle 3 4', 'ja', 'Divine Waltz', 'stpc', 'Divine','ffxiv/dnc/improvised_finish'},
	{'battle 3 5', 'ja', 'Healing Waltz', 'stpc', 'Healing','ffxiv/dnc/shield_samba'},
	{'battle 3 8', 'ja', 'Contradance', 'me', 'Contra','ffxiv/dnc/tillana'}, -- mastery
-- Steps
	{'battle 3 6', 'ja', 'Quickstep', 'stnpc', 'Quick','ffxiv/dnc/en_avant'},
	{'battle 3 7', 'ja', 'Box Step', 'stnpc', 'Box','ffxiv/dnc/bladeshower'},
	-- {'battle 3 9', 'ja', 'Stutter Step', 'stnpc', 'Stutter','ffxiv/dnc/fountainfall'},
-- Flourishes
	{'battle 3 12', 'ja', 'Animated Flourish', 'stnpc', 'Voke','ffxiv/dnc/closed_position'},
	{'battle 3 9', 'ja', 'Violent Flourish', 'stnpc', 'Stun','ffxiv/dnc/starfall_dance'},
	{'battle 3 10', 'ja', 'Reverse Flourish', 'me', 'Reverse','ffxiv/dnc/reverse_cascade'},
	{'battle 3 11', 'ja', 'Building Flourish', 'me', 'Building','ffxiv/dnc/flourish'},
-- Jigs
	-- {'battle 3 8', 'ja', 'Spectral Jig', 'me', 'Spectral','ffxiv/dnc/fan_dance_IV'},
	-- {'battle 3 8', 'ja', 'Chocobo Jig', 'me', 'Chocobo','ffxiv/dnc/entrechat'}, -- mastery
 }

xivhotbar_keybinds_job['DRG'] = {
	{'battle 3 1', 'ja', 'Jump', 't', 'Jump', 'ffxiv/drg/jump'},
	{'battle 3 2', 'ja', 'High Jump', 't', 'HiJump', 'ffxiv/drg/high_jump'},
	{'battle 3 3', 'ja', 'Ancient Circle', 'me', 'Ancient', 'ffxiv/rpr/arcane_crest'},
	{'battle 3 4', 'ja', 'Super Jump', 't', 'SuJump', 'ffxiv/drg/elusive_jump'}, -- mastery
 }

xivhotbar_keybinds_job['SAM'] = {
	{'battle 3 1', 'ja', 'Hasso', 'me', 'Hasso', 'ffxiv/sam/ikishoten'},
	{'battle 3 2', 'ja', 'Meditate', 'me', 'Mdtate', 'ffxiv/sam/meditate'},
	{'battle 3 3', 'ja', 'Sekkanoki', 'me', 'Sekka', 'ffxiv/sam/higanbana'},
	{'battle 3 4', 'ja', 'Seigan', 'me', 'Seigan', 'ffxiv/sam/tengentsu'},
	{'battle 3 5', 'ja', 'Third Eye', 'me', '3rd Eye', 'ffxiv/sam/third_eye'},
	{'battle 3 6', 'ja', 'Warding Circle', 'me', 'Warding', 'ffxiv/gnb/demon_slaughter'},
 }

xivhotbar_keybinds_job['RNG'] = {
	{'battle 3 1', 'ja', 'Sharpshot', 'me', 'Sharp','ffxiv/brd/burst_shot'},
	{'battle 3 5', 'ja', 'Scavenge', 'me', 'Scvnge','ffxiv/role/tactician'},
	{'battle 3 4', 'ja', 'Camouflage', 'me', 'Camo','ffxiv/brd/iron_jaws'},
	{'battle 3 2', 'ja', 'Barrage', 'me', 'Barrage','ffxiv/brd/barrage'},
	{'battle 3 3', 'ja', 'Shadowbind', 'stnpc', 'Bind','ffxiv/brd/shadowbite'},
-- Ranged Hotbar #5
	{'battle 5 1', 'input', '/ra <t>', '', 'RA', 'ra'},
-- Heavy Hit
	{'battle 5 2', 'ws', 'Flaming Arrow', 't', 'Flame'},
	{'battle 5 3', 'ws', 'Piercing Arrow', 't', 'Pierce'}, 
	{'battle 5 4', 'ws', 'Sidewinder', 't', 'Sidewndr'}, 
-- Multi-Hit
	{'battle 5 5', 'ws', 'Refulgent Arrow', 't', 'Reflgnt'}, -- rng sub 
-- Specials
	{'battle 5 6', 'ws', 'Dulling Arrow', 't', 'Dull'}, -- rng sub
-- Merit Point
	{'battle 5 8', 'ws', 'Apex Arrow', 't', 'Apex'}, -- rng sam
-- Relic (only usable with specific weapon equips)
	{'battle 5 9', 'ws', 'Namas Arrow', 't', 'Namas'}, -- rng sam relic
}

-- WEAPONSKILL SETS
xivhotbar_keybinds_job['Hand-to-hand'] = {
-- Heavy Hit
	{'battle 1 1', 'ws', 'One Inch Punch', 't', '1Inch'}, -- mnk pup
	{'battle 1 1', 'ws', 'Backhand Blow', 't', 'Backhand'},
	{'battle 1 1', 'ws', 'Dragon Kick', 't', 'Dragon'}, -- mmk pup
-- Multi-Hit
	{'battle 1 2', 'ws', 'Combo', 't', 'Combo'},
	{'battle 1 2', 'ws', 'Raging Fists', 't', 'Raging'}, -- mnk pup
	{'battle 1 2', 'ws', 'Asuran Fists', 't', 'Asuran'}, -- mnk pup
-- Specials
	{'battle 1 3', 'ws', 'Howling Fist', 't', 'Howling'}, -- mnk pup
	{'battle 1 4', 'ws', 'Tornado Kick', 't', 'Tornado'}, -- mnk pup
-- Prime #6
	{'battle 1 6', 'ws', 'Maru Kala', 't', 'Maru'},
-- Class Specific #7
	{'battle 1 7', 'ws', "Ascetic's Fury", 't', 'Ascetic'}, -- mnk
	{'battle 1 7', 'ws', 'Stringing Pummel', 't', 'String'}, -- pup
-- Merit Point #8
	{'battle 1 8', 'ws', 'Shijin Spiral', 't', 'Shijin'}, -- mnk pup
-- Empyrean (Abyssea only)  #9
	{'battle 1 9', 'ws', 'Victory Smite', 't', 'Victory'}, -- mnk pup
-- Relic (only usable with specific weapon equips) #10
	{'battle 1 10', 'ws', 'Final Heaven', 't', 'FinHvn'}, -- mnk
	{'battle 1 10', 'ws', 'Dragon Blow', 't', 'DragonB'}, -- bonanza
-- AoE Ws #11
	{'battle 1 11', 'ws', 'Spinning Attack', 't', 'Spinning'},
-- Stun WS #12
	{'battle 1 12', 'ws', 'Shoulder Tackle', 't', 'Tackle'},
}

xivhotbar_keybinds_job['Sword'] = {
-- Heavy Hit
	{'battle 1 1', 'ws', 'Fast Blade', 't', 'Fast'},
	{'battle 1 1', 'ws', 'Spirits Within', 't', 'Spirits'},
-- Multi-Hit
	{'battle 1 2', 'ws', 'Vorpal Blade', 't', 'Vorpal'}, -- war rdm pld drk blu run
	-- {'battle 1 2', 'ws', 'Swift Blade', 't', 'Swift'}, -- pld run
	{'battle 1 2', 'ws', 'Savage Blade', 't', 'Savage'}, -- war rdm pld drk blu cor run
-- Fire
	{'battle 1 3', 'ws', 'Burning Blade', 't', 'Burning'},
	{'battle 1 3', 'ws', 'Red Lotus Blade', 't', 'RLotus'}, -- war rdm pld drk blu
-- Light
	{'battle 1 4', 'ws', 'Shining Blade', 't', 'Shining'},
	{'battle 1 4', 'ws', 'Seraph Blade', 't', 'Seraph'}, -- war rdm pld drk blu run
-- Specials
	{'battle 1 5', 'ws', 'Sanguine Blade', 't', 'Sanguine'}, -- war rdm pld drk blu run
-- Prime #6
	{'battle 1 6', 'ws', 'Imperator', 't', 'Imperator'},
-- Class Specific #7
	-- {'battle 1 7', 'ws', 'Death Blossom', 't', 'D Blsm'}, -- rdm
	-- {'battle 1 7', 'ws', 'Atonement', 't', 'Atone'}, -- pld
	-- {'battle 1 7', 'ws', 'Expiacion', 't', 'Expiacn'}, -- blu
-- Merit Point #8
	{'battle 1 8', 'ws', 'Requiescat', 't', 'Requisct'}, -- war rdm pld drk sam blu cor run
-- Empyrean (Abyssea only)  #9
	{'battle 1 9', 'ws', 'Chant du Cygne', 't', 'duCygne'},
-- Relic (only usable with specific weapon equips) #10
	-- {'battle 1 10', 'ws', 'Knights of Round', 't', 'KotR'}, -- rdm pld blu relic
-- AoE Ws #11
	{'battle 1 11', 'ws', 'Circle Blade', 't', 'Circle'},
-- Stun WS #12
	{'battle 1 12', 'ws', 'Flat Blade', 't', 'Flat'},
}

xivhotbar_keybinds_job['Club'] = {
-- Heavy Hit
	{'battle 1 1', 'ws', 'True Strike', 't', 'True'},
	{'battle 1 1', 'ws', 'Judgment', 't', 'Judgment'}, -- war whm pld drk sam blu geo
-- Multi-Hit
	-- {'battle 1 2', 'ws', 'Hexa Strike', 't', 'Hexa'}, -- whm geo
	{'battle 1 2', 'ws', 'Black Halo', 't', 'Bl Halo'}, -- war mnk whm blm pld smn blu sch geo
-- Light
	{'battle 1 3', 'ws', 'Shining Strike', 't', 'Shining'},
	{'battle 1 3', 'ws', 'Seraph Strike', 't', 'Seraph'}, -- war whm pld drk sam blu geo
	{'battle 1 3', 'ws', 'Flash Nova', 't', 'Fl Nova'}, -- war whm pld drk sam blu geo
-- Specials
	{'battle 1 4', 'ws', 'Skullbreaker', 't', 'Skullbrk'},
	{'battle 1 5', 'ws', 'Starlight', 't', 'Star'},
	{'battle 1 5', 'ws', 'Moonlight', 't', 'Moon'}, -- war whm pld drk sam blu geo
-- Prime #6
	-- {'battle 1 6', 'ws', 'Dagda', 't', 'Dagda'},  -- whm geo recc
-- Class Specific #7
	-- {'battle 1 7', 'ws', 'Mystic Boon', 't', 'Mystic'}, -- whm only
	-- {'battle 1 7', 'ws', 'Exudation', 't', 'Exuda'}, -- geo
-- Merit Point #8
	{'battle 1 8', 'ws', 'Realmrazer', 't', 'Realmrzr'}, -- war mnk whm blm pld smn blu sch geo
-- Empyrean (Abyssea only)  #9
	-- {'battle 1 9', 'ws', 'Dagan', 't', 'Dagan'}, -- whm
-- Relic (only usable with specific weapon equips) #10
	-- {'battle 1 10', 'ws', 'Randgrith', 't', 'Randgrt'}, -- whm sch geo relic
-- AoE Ws #11
	-- none
-- Stun WS #12
	{'battle 1 12', 'ws', 'Brainshaker', 't', 'Brainshkr'},
}

xivhotbar_keybinds_job['Axe'] = {
-- Heavy Hit
	{'battle 1 1', 'ws', 'Avalanche Axe', 't', 'Avlnche'},
	{'battle 1 1', 'ws', 'Spinning Axe', 't', 'Spinning'}, -- war drk run bst
	{'battle 1 1', 'ws', 'Calamity', 't', 'Calamity'}, -- war bst
-- Multi-Hit
	{'battle 1 2', 'ws', 'Raging Axe', 't', 'Raging'},
	{'battle 1 2', 'ws', 'Rampage', 't', 'Rampage'},
	{'battle 1 2', 'ws', 'Decimation', 't', 'Decimate'}, -- war drk bst rng run
-- Wind
	{'battle 1 3', 'ws', 'Gale Axe', 't', 'Gale'},
-- Specials
	{'battle 1 4', 'ws', 'Mistral Axe', 't', 'Mistral'}, -- war bst
-- Prime #6
	-- {'battle 1 6', 'ws', 'Blitz', 't', 'Blitz'}, -- bst
-- Class Specific #7
	-- {'battle 1 7', 'ws', 'Primal Rend', 't', 'Primal'}, -- bst
-- Merit Point #8
	{'battle 1 8', 'ws', 'Ruinator', 't', 'Ruinator'}, -- war drk bst rng run
-- Empyrean (Abyssea only)  #9
	{'battle 1 9', 'ws', 'Cloudsplitter', 't', 'Cloudsplt'}, -- war bst
-- Relic (only usable with specific weapon equips) #10
	-- {'battle 1 10', 'ws', 'Onslaught', 't', 'Onslaught'}, -- bst relic
-- AoE Ws #11
	-- none
-- Bind WS #12
	{'battle 1 12', 'ws', 'Bora Axe', 't', 'Bora'}, -- war drk run bst
}

xivhotbar_keybinds_job['Great Sword'] = {
-- Heavy Hit
	{'battle 1 1', 'ws', 'Hard Slash', 't', 'Hard'},
	{'battle 1 1', 'ws', 'Power Slash', 't', 'Power'},
	{'battle 1 1', 'ws', 'Crescent Moon', 't', 'Crescent'},
	{'battle 1 1', 'ws', 'Spinning Slash', 't', 'Spinning'}, -- run drk pld war
	{'battle 1 2', 'ws', 'Ground Strike', 't', 'Ground'},
-- Multi-Hit
	{'battle 1 2', 'ws', 'Sickle Moon', 't', 'Sickle'},
-- Ice
	{'battle 1 3', 'ws', 'Frostbite', 't', 'Frostbite'},
	{'battle 1 3', 'ws', 'Freezebite', 't', 'Freezebite'},
-- Specials
	{'battle 1 4', 'ws', 'Herculean Slash', 't', 'Herculean'},
-- Prime #6
	{'battle 1 6', 'ws', 'Fimbulvetr', 't', 'Fimbulvetr'},
-- Class Specific #7
	-- {'battle 1 7', 'ws', 'Dimidiation', 't', 'Dimidiation'}, -- run
-- Merit Point #8
	{'battle 1 8', 'ws', 'Resolution', 't', 'Resolutn'}, -- merit
-- Empyrean (Abyssea only)  #9
	-- {'battle 1 9', 'ws', 'Torcleaver', 't', 'Torclvr'}, -- pld drk
-- Relic (only usable with specific weapon equips) #10
	{'battle 1 10', 'ws', 'Scourge', 't', 'Scourge'}, -- war pld drk run relic
-- AoE Ws #11
	-- none
-- Sleep WS #12
	{'battle 1 12', 'ws', 'Shockwave', 't', 'Shockwave'},
}

xivhotbar_keybinds_job['Great Axe'] = {
-- Heavy Hit
	{'battle 1 1', 'ws', 'Iron Tempest', 't', 'Iron'},
	{'battle 1 1', 'ws', 'Keen Edge', 't', 'Keen'},
	{'battle 1 1', 'ws', 'Steel Cyclone', 't', 'Steel'}, -- war drk run
-- Multi-Hit
	{'battle 1 2', 'ws', 'Sturmwind', 't', 'Sturm'},
	{'battle 1 2', 'ws', 'Raging Rush', 't', 'Raging'}, -- war
-- Elements
	-- none
-- Specials
	{'battle 1 3', 'ws', 'Shield Break', 't', 'Shld'},
	{'battle 1 3', 'ws', 'Armor Break', 't', 'Armr'},
	{'battle 1 4', 'ws', 'Weapon Break', 't', 'Wpn'},
	{'battle 1 5', 'ws', 'Full Break', 't', 'Full'}, -- war
-- Prime #6
	{'battle 1 6', 'ws', 'Disaster', 't', 'Distr'}, -- war
-- Class Specific #7
	{'battle 1 7', 'ws', "King's Justice", 't', "King"}, -- war
-- Merit Point #8
	{'battle 1 8', 'ws', 'Upheaval', 't', 'Upheaval'}, -- war drk run
-- Empyrean (Abyssea only)  #9
	{'battle 1 9', 'ws', "Ukko's Fury", 't', "Ukko's Fury"}, -- war
-- Relic (only usable with specific weapon equips) #10
	{'battle 1 10', 'ws', 'Metatron Torment', 't', 'Meta'}, -- war
-- AoE Ws #11
	{'battle 1 11', 'ws', 'Fell Cleave', 't', 'FellClv'}, -- war drk run
-- Stun WS #12
	-- none
}

xivhotbar_keybinds_job['Dagger'] = {
-- Heavy Hit
	{'battle 1 1', 'ws', 'Wasp Sting', 't', 'Wasp'},
	-- {'battle 1 1', 'ws', 'Viper Bite', 't', 'Viper'}, -- rdm thf brd rng nin dnc
	-- {'battle 1 1', 'ws', 'Shark Bite', 't', 'Shark'}, -- thf dnc
-- Multi-Hit
	-- {'battle 1 2', 'ws', 'Dancing Edge', 't', 'DncEdge'}, -- thf dnc
	{'battle 1 2', 'ws', 'Evisceration', 't', 'Evisc'}, -- war rdm thf bst brd rng nin cor dnc
-- Wind
	{'battle 1 3', 'ws', 'Gust Slash', 't', 'Gust'},
-- Specials
	{'battle 1 4', 'ws', 'Energy Steal', 't', 'Energy'},
	-- {'battle 1 4', 'ws', 'Energy Drain', 't', 'Energy'}, -- rdm thf brd rng nin dnc
-- Prime #6
	{'battle 1 6', 'ws', 'Ruthless Stroke', 't', 'Ruthless'},
-- Class Specific #7
	-- {'battle 1 7', 'ws', 'Mandalic Stab', 't', 'Mandalic'}, -- thf
	-- {'battle 1 7', 'ws', 'Mordant Rime', 't', 'Mordant'}, -- brd
	-- {'battle 1 7', 'ws', 'Pyrrhic Kleos', 't', 'Pyrrhic'}, -- dnc
-- Merit Point #8
	{'battle 1 8', 'ws', 'Exenterator', 't', 'Exent'}, -- war rdm thf bst brd rng nin cor dnc
-- Empyrean (Abyssea only)  #9
	-- {'battle 1 9', 'ws', "Rudra's Storm", 't', 'Rudra'}, -- thf brd dnc
-- Relic (only usable with specific weapon equips) #10
	-- {'battle 1 10', 'ws', 'Mercy Stroke', 't', 'Mercy'}, -- rdm thf brd dnc relic
-- AoE Ws #11
	-- {'battle 1 11', 'ws', 'Cyclone', 't', 'Cyclone'}, -- rdm thf brd rng nin cor dnc
	-- {'battle 1 11', 'ws', 'Aeolian Edge', 't', 'Aeoln'}, -- rdm thf brd rng nin dnc
-- Bind WS #12
	{'battle 1 12', 'ws', 'Shadowstitch', 't', 'ShdSt'},
}

xivhotbar_keybinds_job['Polearm'] = {
-- Heavy Hit
	{'battle 1 1', 'ws', 'Vorpal Thrust', 't', 'Vorpal'},
	-- {'battle 1 1', 'ws', 'Wheeling Thrust', 't', 'Wheel'}, -- drg
-- Multi-Hit
	{'battle 1 2', 'ws', 'Double Thrust', 't', 'Double'},
	{'battle 1 2', 'ws', 'Penta Thrust', 't', 'Penta'},
	{'battle 1 2', 'ws', 'Drakesbane', 't', 'Drakes'},
-- Thunder
	{'battle 1 3', 'ws', 'Thunder Thrust', 't', 'Thunder'},
	{'battle 1 3', 'ws', 'Raiden Thrust', 't', 'Raiden'}, -- war pld drg
-- Specials
	-- {'battle 1 4', 'ws', 'Skewer', 't', 'Skewer'}, -- drg
	{'battle 1 4', 'ws', 'Impulse Drive', 't', 'Impulse'}, -- war sam drg
-- Prime #6
	{'battle 1 6', 'ws', 'Diarmuid', 't', 'Diarm'},
-- Merit Point #8
	{'battle 1 8', 'ws', 'Stardiver', 't', 'Star'}, -- war sam drg
-- Empyrean (Abyssea only)  #9
	-- {'battle 1 9', "Camlann's Torment", 'name', 't', 'Camlann'}, -- drg
-- Relic (only usable with specific weapon equips) #10
	-- {'battle 1 10', 'ws', 'Geirskogul', 't', 'Geirsk'}, -- drg
-- AoE Ws #11
	{'battle 1 11', 'Sonic Thrust', 'name', 't', 'Sonic'}, -- war pld drg
-- Stun WS #12
	{'battle 1 12', 'ws', 'Leg Sweep', 't', 'LegSwp'},
}

return xivhotbar_keybinds_job
