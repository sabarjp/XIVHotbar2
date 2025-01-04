
-- Load and initialize the include file.
 xivhotbar_keybinds_job['Base'] = {
     
--Hotbar #1
-- Weaponskills; leave blank

--Hotbar #2 
--main job abilities
	{'battle 2 1', 'ja', 'Chi Blast', 'stnpc', 'Chi','ffxiv/mnk/elixir_field'},
	{'battle 2 2', 'ja', 'Boost', 'me', 'Boost', 'Boost','ffxiv/mnk/riddle_of_fire'},
	{'battle 2 3', 'ja', 'Focus', 'me', 'Focus', 'Boost','ffxiv/mnk/riddle_of_wind'},
	{'battle 2 4', 'ja', 'Dodge', 'me', 'Dodge','ffxiv/mnk/riddle_of_earth'},
	{'battle 2 5', 'ja', 'Counterstance', 'me', 'Ctr','ffxiv/mnk/arm_of_the_destroyer'},
	{'battle 2 6', 'ja', 'Footwork', 'me', 'Footwk','ffxiv/mnk/six-sided_star'},
	{'battle 2 7', 'ja', 'Perfect Counter', 'me', 'PCtr','ffxiv/mnk/perfect_balance'},

--Hotbar #3
--sub job abilities; leave blank

--Hotbar #4
--utility or pet bar
--12 is always 2-hour ability
	{'battle 4 1', 'ja', 'Chakra', 'me', 'Chakra','ffxiv/mnk/meditation'},
	{'battle 4 2', 'ja', 'Mantra', 'me', 'Mantra','ffxiv/mnk/mantra'},
	{'battle 4 3', 'ja', 'Formless Strikes', 'me', 'Formless','ffxiv/mnk/form_shift'},
	{'battle 4 4', 'ja', 'Impetus', 'me', 'Impetus','ffxiv/mnk/bootshine'},
	{'battle 4 4', 'ja', 'Inner Strength', 'me', 'Inner Strength','ffxiv/mnk/anatman'},
	{'battle 4 12', 'ja', 'Hundred Fists', 'me', 'Hundred F','ffxiv/mnk/brotherhood'},

-- Hotbar #5

-- Hotbar #6
}

-- SUBJOBS
-- Hotbar #3
xivhotbar_keybinds_job['WAR'] = {
	{'battle 3 1', 'ja', 'Provoke', 'stnpc', 'Voke','ffxiv/war/defiance'},
	{'battle 3 2', 'ja', 'Berserk', 'me', 'Brsrk','ffxiv/war/berserk'},
	{'battle 3 3', 'ja', 'Defender', 'me', 'Dfnd','ffxiv/war/shake_it_off'},
	{'battle 3 4', 'ja', 'Warcry', 'me', 'Wrcry','ffxiv/war/inner_beast'},
	{'battle 3 5', 'ja', 'Aggressor', 'me', 'Aggrsr','ffxiv/war/onslaught'},
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
	-- {'battle 1 7', 'ws', 'Stringing Pummel', 't', 'String'}, -- pup
	{'battle 1 7', 'ws', 'name', 't', 'displayName'},
-- Merit Point #8
	{'battle 1 8', 'ws', 'Shijin Spiral', 't', 'Shijin'}, -- mnk pup
-- Empyrean (Abyssea only)  #9
	{'battle 1 9', 'ws', 'Victory Smite', 't', 'Victory'}, -- mnk pup
-- Relic (only usable with specific weapon equips) #10
	{'battle 1 10', 'ws', 'Final Heaven', 't', 'FinHvn'}, -- mnk
	-- {'battle 1 10', 'ws', 'Dragon Blow', 't', 'DragonB'}, -- bonanza
-- AoE Ws #11
	{'battle 1 11', 'ws', 'Spinning Attack', 't', 'Spinning'},
-- Stun WS #12
	{'battle 1 12', 'ws', 'Shoulder Tackle', 't', 'Tackle'},
}

xivhotbar_keybinds_job['Club'] = {
-- Heavy Hit
	{'battle 1 1', 'ws', 'True Strike', 't', 'True'},
	-- {'battle 1 1', 'ws', 'Judgment', 't', 'Judgment'}, -- war whm pld drk sam blu geo
-- Multi-Hit
	-- {'battle 1 2', 'ws', 'Hexa Strike', 't', 'Hexa'}, -- whm geo
	{'battle 1 2', 'ws', 'Black Halo', 't', 'Bl Halo'}, -- war mnk whm blm pld smn blu sch geo
-- Light
	{'battle 1 3', 'ws', 'Shining Strike', 't', 'Shining'},
	-- {'battle 1 3', 'ws', 'Seraph Strike', 't', 'Seraph'}, -- war whm pld drk sam blu geo
	-- {'battle 1 3', 'ws', 'Flash Nova', 't', 'Fl Nova'}, -- war whm pld drk sam blu geo
-- Specials
	{'battle 1 4', 'ws', 'Skullbreaker', 't', 'Skullbrk'},
	{'battle 1 5', 'ws', 'Starlight', 't', 'Star'},
	-- {'battle 1 5', 'ws', 'Moonlight', 't', 'Moon'}, -- war whm pld drk sam blu geo
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

xivhotbar_keybinds_job['Staff'] = {
-- Heavy Hit
	{'battle 1 1', 'ws', 'Heavy Swing', 't', 'Heavy'},
	{'battle 1 1', 'ws', 'Full Swing', 't', 'Full'},
	{'battle 1 1', 'ws', 'Retribution', 't', 'Retrb'}, -- war mnk whm blm pld brd drg smn sch geo
-- Multi-Hit
	{'battle 1 2', 'ws', 'name', 't', 'displayName'},
	{'battle 1 2', 'ws', 'name', 't', 'displayName'},
	{'battle 1 2', 'ws', 'name', 't', 'displayName'},
-- Elements
	{'battle 1 3', 'ws', 'Rock Crusher', 't', 'Rock'},
	{'battle 1 3', 'ws', 'Starburst', 't', 'Starbrst'},
	{'battle 1 3', 'ws', 'Sunburst', 't', 'Sunbrst'}, -- war mnk whm pld geo
-- Specials
	{'battle 1 5', 'ws', 'Shell Crusher', 't', 'Shell'},
	{'battle 1 5', 'ws', 'Spirit Taker', 't', 'Spirit'},
-- Prime #6
	-- {'battle 1 6', 'ws', 'Oshala', 't', 'Oshala'}, -- blm smn sch
-- Class Specific #7
	-- {'battle 1 7', 'ws', 'Garland of Bliss', 't', 'Garland'}, -- smn
	-- {'battle 1 7', 'ws', 'Omniscience', 't', 'Omnisc'}, -- sch
	-- {'battle 1 7', 'ws', 'Vidohunir', 't', 'Vidoh'}, -- blm
-- Merit Point #8
	{'battle 1 8', 'ws', 'Shattersoul', 't', 'Shatter'},
-- Empyrean (Abyssea only)  #9
	-- {'battle 1 9', 'ws', 'Myrkr', 't', 'Myrkr'}, -- blm smn sch
-- Relic (only usable with specific weapon equips) #10
	-- {'battle 1 10', 'ws', 'Gate of Tartarus', 't', 'Gate'}, -- blm smn relic
-- AoE Ws #11
	{'battle 1 11', 'ws', 'Earth Crusher', 't', 'Crusher'}, -- war mnk whm pld geo
	{'battle 1 11', 'ws', 'Cataclysm', 't', 'Catcylsm'}, -- war mnk whm pld geo
-- Stun WS #12
	-- {'battle 1 12', 'ws', 'Tartarus Torpor', 't', 'Torpor'}, -- campaign
}

return xivhotbar_keybinds_job
