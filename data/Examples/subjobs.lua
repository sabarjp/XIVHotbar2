-- This file has no effect on addon functions
-- This is a repository of subjob setups others might find useful
-- Every ability/spell is included in each setup
-- Comment out skills not needed by your class

-- Remember to modify bar-action locations to fit your needs!



BLM
BLU
BRD
BST
-- COR
-- DNC
DRK
DRG
GEO
-- MNK
-- THF
-- NIN
PLD
PUP
RDM
RNG
RUN
SAM
SCH
SMN
-- WAR
-- WHM

-- Starters - MNK
-- Starters - WAR
-- Starters - THF
-- Starters - WHM
-- Starters - BLM
-- Starters - RDM
-- XP - CORSAIR
-- SOLO - NIN
-- SOLO - DNC
-- CLASS SPEC - 

-- ,'ffxiv/nin/mug'

dancer ,'classes/dnc' --regen
scholar ,'classes/sch' -- conserve mp
naturalist ,'classes/cnj' -- buff duration
runeist ,'classes/drk'-- mag eva
bolter ,'classes/mag_rng'-- movespeed
caster ,'classes/rdm'-- fast cast
courser ,'classes/gnb'-- snapshot
blitzer ,'classes/gld' -- attack speed
tactician,'classes/arc' -- regain
allies ,'classes/sge' -- skillchains
miser ,'classes/vpr'-- save tp
companion ,'classes/drg'-- pet regen 
avenger ,'classes/mle' -- countering

tnk,'ffxiv/nin/play'
phy_rng
mag_rng
pic
blu 

xivhotbar_keybinds_job['COR'] = {
	{'battle 3 1', 'ja', "Double-Up", 'me', 'Dbl Up','ffxiv/ast/play'},
	{'battle 3 2', 'ja', "Corsair's Roll", 'me', 'COR','classes/ast'}, -- exp
	{'battle 3 3', 'ja', "Ninja Roll", 'me', 'NIN','classes/nin'}, -- eva
	{'battle 3 4', 'ja', "Hunter's Roll", 'me', 'HUN','classes/acr'}, -- acc & ra acc
	{'battle 3 5', 'ja', "Chaos Roll", 'me', 'CHS','classes/rpr'}, -- phys atk
	{'battle 3 6', 'ja', "Magus's Roll", 'me', 'MGS','classes/whm'}, -- mag def
	{'battle 3 7', 'ja', "Healer's Roll", 'me', 'HLR','classes/hlr'}, -- cure potency
	{'battle 3 8', 'ja', "Drachen Roll", 'me', 'DRC','classes/lnc'}, -- pet & ra acc 
	{'battle 3 9', 'ja', "Choral Roll", 'me', 'CRL','classes/brd'}, -- spell interrupt
	{'battle 3 10', 'ja', "Monk's Roll", 'me', 'MNK','classes/mnk'}, -- subtle blow
	{'battle 3 11', 'ja', "Beast Roll", 'me', 'BST','classes/war'}, -- pet atk
	{'battle 3 12', 'ja', "Samurai Roll", 'me', 'SAM','classes/sam'}, -- store TP
	{'battle 3 1', 'ja', "Quick Draw", 'me', 'QkDraw','classes/mch'},
	{'battle 3 2', 'ja', "Evoker's Roll", 'me', 'EVO','classes/smn'}, -- MP regen
	{'battle 3 3', 'ja', "Rogue's Roll", 'me', 'RGE','classes/rge'}, -- crit
	{'battle 3 4', 'ja', "Warlock's Roll", 'me', 'WLK','classes/thm'}, -- magic acc
	{'battle 3 5', 'ja', "Fighter's Roll", 'me', 'FTR','classes/mar'}, -- double atk
-- Mastery only
	{'battle 3 6', 'ja', "Puppet Roll", 'me', 'PUP','classes/pug'}, -- pet matk & pet macc
	{'battle 3 7', 'ja', "Gallant's Roll", 'me', 'GAL','classes/pld'}, -- def
	{'battle 3 8', 'ja', "Wizard's Roll", 'me', 'WIZ','classes/blm'}, -- matk
	{'battle 3 9', 'ja', "Random Deal", 'me', 'Randm','ffxiv/ast/undraw'}, 
}

xivhotbar_keybinds_job['DNC'] = {
-- Sambas
	{'battle 3 1', 'ja', 'Haste Samba', 'me', 'Haste','ffxiv/dnc/pirouette'},
	{'battle 3 2', 'ja', 'Drain Samba', 'me', 'Drain','ffxiv/dnc/emboite'},
	{'battle 3 2', 'ja', 'Drain Samba II', 'me', 'Drain2','ffxiv/dnc/emboite'},
	{'battle 3 3', 'ja', 'Aspir Samba', 'me', 'Aspir','ffxiv/dnc/jete'},
-- Waltzes
	{'battle 3 4', 'ja', 'Curing Waltz', 'stpc', 'CurW','ffxiv/dnc/curing_waltz'},
	{'battle 3 4', 'ja', 'Curing Waltz II', 'stpc', 'CurW2','ffxiv/dnc/curing_waltz'},
	{'battle 3 4', 'ja', 'Curing Waltz III', 'stpc', 'CurW3','ffxiv/dnc/curing_waltz'},
	{'battle 3 5', 'ja', 'Divine Waltz', 'stpc', 'Divine','ffxiv/dnc/improvised_finish'},
	{'battle 3 6', 'ja', 'Healing Waltz', 'stpc', 'Healing','ffxiv/dnc/shield_samba'},
	{'battle 3 6', 'ja', 'Contradance', 'me', 'Contra','ffxiv/dnc/tillana'}, -- mastery
-- Steps
	{'battle 3 7', 'ja', 'Quickstep', 'stnpc', 'Quick','ffxiv/dnc/en_avant'},
	{'battle 3 8', 'ja', 'Box Step', 'stnpc', 'Box','ffxiv/dnc/bladeshower'},
	{'battle 3 9', 'ja', 'Stutter Step', 'stnpc', 'Stutter','ffxiv/dnc/fountainfall'},
-- Flourishes
	{'battle 3 10', 'ja', 'Animated Flourish', 'stnpc', 'Voke','ffxiv/dnc/closed_position'},
	{'battle 3 11', 'ja', 'Violent Flourish', 'stnpc', 'Stun','ffxiv/dnc/starfall_dance'},
	{'battle 3 12', 'ja', 'Reverse Flourish', 'me', 'Reverse','ffxiv/dnc/reverse_cascade'},
	{'battle 3 12', 'ja', 'Building Flourish', 'me', 'Building','ffxiv/dnc/flourish'},
-- Jigs
	{'battle 3 8', 'ja', 'Spectral Jig', 'me', 'Spectral','ffxiv/dnc/fan_dance_IV'},
	{'battle 3 8', 'ja', 'Chocobo Jig', 'me', 'Chocobo','ffxiv/dnc/entrechat'}, -- mastery
 }

xivhotbar_keybinds_job['DRG'] = {
	{'battle 3 1', 'ja', 'Jump', 't', 'Jump', 'ffxiv/drg/jump'},
	{'battle 3 2', 'ja', 'High Jump', 't', 'HiJump', 'ffxiv/drg/high_jump'},
	{'battle 3 3', 'ja', 'Ancient Circle', 'me', 'Ancient', 'ffxiv/rpr/arcane_crest'},
	{'battle 3 4', 'ja', 'Super Jump', 't', 'SuJump', 'ffxiv/drg/elusive_jump'}, -- mastery
 }

xivhotbar_keybinds_job['MNK'] = {
	{'battle 3 1', 'ja', 'Boost', 'me', 'Boost','ffxiv/mnk/riddle_of_fire'},
	{'battle 3 2', 'ja', 'Dodge', 'me', 'Dodge','ffxiv/mnk/riddle_of_earth'},
	{'battle 3 3', 'ja', 'Focus', 'me', 'Focus','ffxiv/mnk/riddle_of_wind'},
	{'battle 3 4', 'ja', 'Chakra', 'me', 'Chakra','ffxiv/mnk/meditation'},
	{'battle 3 5', 'ja', 'Chi Blast', 'stnpc', 'Chi','ffxiv/mnk/elixir_field'},
	{'battle 3 6', 'ja', 'Counterstance', 'me', 'Ctr','ffxiv/mnk/arm_of_the_destroyer'},
}

xivhotbar_keybinds_job['THF'] = {
	{'battle 3 1', 'ja', 'Steal', 't', 'Steal','ffxiv/nin/dream_within_a_dream'},
	{'battle 3 2', 'ja', 'Sneak Attack', 'me', 'SAtk','ffxiv/nin/spinning_edge'},
	{'battle 3 3', 'ja', 'Flee', 'me', 'Flee','ffxiv/nin/forked_raiju'},
	{'battle 3 4', 'ja', 'Trick Attack', 'me', 'TAtk','ffxiv/nin/trick_attack'},
	{'battle 3 5', 'ja', 'Mug', 't', 'Mug','ffxiv/nin/mug'},
	{'battle 3 6', 'ja', 'Hide', 'me', 'Hide','ffxiv/nin/hide'},
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

xivhotbar_keybinds_job['SAM'] = {
	{'battle 3 1', 'ja', 'Hasso', 'me', 'Hasso', 'ffxiv/sam/ikishoten'},
	{'battle 3 2', 'ja', 'Meditate', 'me', 'Mdtate', 'ffxiv/sam/meditate'},
	{'battle 3 3', 'ja', 'Sekkanoki', 'me', 'Sekka', 'ffxiv/sam/meikyo_shisui'},
	{'battle 3 4', 'ja', 'Seigan', 'me', 'Seigan', 'ffxiv/sam/tengentsu'},
	{'battle 3 5', 'ja', 'Third Eye', 'me', '3rd Eye', 'ffxiv/sam/third_eye'},
	{'battle 3 6', 'ja', 'Warding Circle', 'me', 'Warding', 'ffxiv/gnb/demon_slaughter'},
 }

xivhotbar_keybinds_job['WAR'] = {
	{'battle 3 1', 'ja', 'Provoke', 'stnpc', 'Voke','ffxiv/war/defiance'},
	{'battle 3 2', 'ja', 'Berserk', 'me', 'Brsrk','ffxiv/war/berserk'},
	{'battle 3 3', 'ja', 'Defender', 'me', 'Dfnd','ffxiv/war/shake_it_off'},
	{'battle 3 4', 'ja', 'Warcry', 'me', 'Wrcry','ffxiv/war/inner_beast'},
	{'battle 3 5', 'ja', 'Aggressor', 'me', 'Aggrsr','ffxiv/war/onslaught'},
 }

xivhotbar_keybinds_job['WHM'] = {
	-- Some spells moved to General example instead:
	-- Teleports / Recalls / Raises / Re-Raises
	-- Protect(ra) / Shell(ra)
	-- Aquaveil
	-- Sneak / Invisible / Deodorize
-- Job Abilities
	{'battle 3 9', 'ja', 'Divine Seal', 'me', 'Divine'},
-- Enfeeblement
	{'battle 3 2', 'ma', 'Paralyze', 'stnpc', 'Para'},
	{'battle 3 3', 'ma', 'Slow', 'stnpc', 'Slow'},
	{'battle 3 4', 'ma', 'Silence', 'stnpc', 'Silence'},
	{'battle 3 1', 'ma', 'Dia', 'stnpc', 'Dia'},
	{'battle 3 1', 'ma', 'Dia II', 'stnpc', 'Dia II'},
	{'battle 3 9', 'ma', 'Repose', 'stnpc', 'Repose'},
	{'battle 3 9', 'ma', 'Flash', 'stnpc', 'Flash'},
-- Barspells
	{'battle 3 1', 'ma', 'Barsleepra', 'me', 'Sleepra', ''},
	{'battle 3 2', 'ma', 'Barpoisonra', 'me', 'Poisonra', ''},
	{'battle 3 3', 'ma', 'Barparalyzra', 'me', 'Paralyzra', ''},
	{'battle 3 1', 'ma', 'Barstonra', 'me', 'Stonra', 'Barstonra'},
	{'battle 3 2', 'ma', 'Barwatera', 'me', 'Watera', 'Barwatera'},
	{'battle 3 3', 'ma', 'Baraera', 'me', 'Aera', 'Baraera'},
	{'battle 3 4', 'ma', 'Barfira', 'me', 'Fira', 'Barfira'},
	{'battle 3 4', 'ma', 'Barblindra', 'me', 'Blindra', ''},
	{'battle 3 5', 'ma', 'Barblizzara', 'me', 'Blizzara', 'Barblizzara'},
	{'battle 3 5', 'ma', 'Barsilencera', 'me', 'Silencera'},
	{'battle 3 6', 'ma', 'Barthundra', 'me', 'Thundra', 'Barthundra'},
	{'battle 3 6', 'ma', 'Barvira', 'me', 'Vira'},
	{'battle 3 9', 'ma', 'Barpetra', 'me', 'Petra'},
-- Atk
	{'battle 3 9', 'ma', 'Holy', 'stnpc', 'Holy'}, -- mastery
-- Regen
	{'battle 3 11', 'ma', 'Regen', 'stpc', 'Regen'},
	{'battle 3 11', 'ma', 'Regen II', 'stpc', 'Regen2'},
-- Cure
	{'battle 3 10', 'ma', 'Cure', 'stpc', 'Cure'},
	{'battle 3 10', 'ma', 'Cure II', 'stpc', 'Cure2'},
	{'battle 3 10', 'ma', 'Cure III', 'stpc', 'Cure3'},
	{'battle 3 10', 'ma', 'Cure IV', 'stpc', 'Cure4'},
-- Cura
	{'battle 1 10', 'ma', 'Cura', 'me', 'Cura'},
-- Curaga
	{'battle 3 12', 'ma', 'Curaga', 'stpc', 'Curaga'},
	{'battle 3 12', 'ma', 'Curaga II', 'stpc', 'Curaga2'},
	{'battle 3 12', 'ma', 'Curaga III', 'stpc', 'Curaga3'}, -- mastery
-- Supportive
	{'battle 3 1', 'ma', 'Poisona', 'stpc', 'Poisona'},
	{'battle 3 2', 'ma', 'Paralyna', 'stpc', 'Paralyna'},
	{'battle 3 3', 'ma', 'Blindna', 'stpc', 'Blindna'},
	{'battle 3 4', 'ma', 'Silena', 'stpc', 'Silena'},
	{'battle 3 6', 'ma', 'Blink', 'me', 'Blink'},
	{'battle 3 7', 'ma', 'Stoneskin', 'me', 'StnSkin'},
	{'battle 3 5', 'ma', 'Cursna', 'stpc', 'Cursna'},
	{'battle 3 7', 'ma', 'Erase', 'stpc', 'Erase'},
	{'battle 3 6', 'ma', 'Viruna', 'stpc', 'Viruna'},
	{'battle 3 4', 'ma', 'Stona', 'stpc', 'Stona'},
	{'battle 3 5', 'ma', 'Haste', 'stpc', 'Haste'},
	{'battle 3 9', 'ma', 'Auspice', 'me', 'Ausp'},  -- mastery
 }



