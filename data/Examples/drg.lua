
-- Load and initialize the include file.
 xivhotbar_keybinds_job['Base'] = {
     
--Hotbar #1
-- Weaponskills; leave blank

--Hotbar #2 
--main job abilities
	{'battle 2 1', 'ja', 'Jump', 't', 'Jump', 'ffxiv/drg/jump'},
	{'battle 2 2', 'ja', 'High Jump', 't', 'Hi Jump', 'ffxiv/drg/high_jump'},
	{'battle 2 3', 'ja', 'Spirit Jump', 't', 'Sp Jump', 'ffxiv/drg/dragonfire_dive'},
	{'battle 2 4', 'ja', 'Soul Jump', 't', 'Sl Jump', 'ffxiv/drg/spineshatter_dive'},
	{'battle 2 5', 'ja', 'Fly High', 'me', 'Fly', 'ffxiv/drg/heavens_thrust'},
	{'battle 2 6', 'ja', 'Ancient Circle', 'me', 'Ancient', 'ffxiv/rpr/arcane_crest'},
	{'battle 2 7', 'ja', 'Dragon Breaker', 't', 'Drg Break', 'ffxiv/drg/wyrmwind_thrust'},
	{'battle 2 8', 'ja', 'Super Jump', 't', 'Su Jump', 'ffxiv/drg/elusive_jump'},
	{'battle 2 9', 'ja', 'Angon', 't', 'Angon', 'ffxiv/drg/disembowel'},

--Hotbar #3
--sub job abilities; leave blank

--Hotbar #4
--utility or pet bar
--12 is always 2-hour ability
	 {'battle 4 1', 'ja', 'Call Wyvern', 'me', 'Call Wyv', 'ffxiv/drg/dragon_sight'},
	 {'battle 4 2', 'ja', 'Spirit Link', 'me', 'Sp Link', 'ffxiv/drg/lance_charge'},
	 {'battle 4 3', 'ja', 'Spirit Bond', 'me', 'Sp Bond', 'ffxiv/drg/life_surge'},
	 {'battle 4 4', 'ja', 'Deep Breathing', 'me', 'Dp Breath', 'ffxiv/drg/nastrond'},
	 {'battle 4 5', 'ja', 'Smiting Breath', 't', 'Sm Breath', 'ffxiv/blu/water_cannon'},
	 {'battle 4 6', 'ja', 'Restoring Breath', 'me', 'Re Breath', 'ffxiv/blu/white_wind'},
	 {'battle 4 7', 'ja', 'Steady Wing', 'me', 'St Wing', 'ffxiv/drg/chaotic_spring'},
	 {'battle 4 11', 'ja', 'Dismiss', 'me', 'Dismiss'},
	 {'battle 4 12', 'ja', 'Spirit Surge', 'me', 'Sp Surge', 'ffxiv/drg/battle_litany'},

-- Hotbar #5
-- Hotbar #6
}



-- Subjobs
-- Hotbar #3
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
xivhotbar_keybinds_job['Polearm'] = {
	{'battle 1 1', 'ws', 'Double Thrust', 't', 'Double', 'ffxiv/drg/full_thrust'},
	{'battle 1 1', 'ws', 'Penta Thrust', 't', 'Penta', 'ffxiv/drg/true_thrust'},
	{'battle 1 2', 'ws', 'Thunder Thrust', 't', 'Thunder', 'ffxiv/drg/raiden_thrust'},
	{'battle 1 2', 'ws', 'Raiden Thrust', 't', 'Raiden', 'ffxiv/drg/raiden_thrust'},
	{'battle 1 3', 'ws', 'Vorpal Thrust', 't', 'Vorpal', 'ffxiv/drg/vorpal_thrust'},
	{'battle 1 4', 'ws', 'Skewer', 't', 'Skewer', 'ffxiv/drg/piercing_talon'},
	{'battle 1 4', 'ws', 'Drakesbane', 't', 'Drakes', 'ffxiv/drg/draconian_fury'}, -- mythic
	{'battle 1 5', 'ws', 'Wheeling Thrust', 't', 'Wheel', 'ffxiv/drg/wheeling_thrust'}, -- drg only
	{'battle 1 5', 'ws', "Camlann's Torment", 't', 'Camlanns', 'ffxiv/drg/coerthan_torment'}, --empyrean
	{'battle 1 6', 'ws', 'Impulse Drive', 't', 'Impulse', 'ffxiv/drg/mirage_dive'}, -- war sam drg only
	{'battle 1 7', 'ws', 'Stardiver', 't', 'Stardiver', 'ffxiv/drg/stardiver'}, -- war sam drg only
-- Prime
	{'battle 1 9', 'ws', 'Diarmuid', 't', 'Diarmuid', 'ffxiv/drg/heavens_thrust'}, -- prime
-- Relic
	{'battle 1 10', 'ws', 'Geirskogul', 't', 'Geirsk', 'ffxiv/drg/geirskogul'}, -- relic
-- AoE WS - war, sam, drg only
	{'battle 1 11', 'ws', 'Sonic Thrust', 't', 'Sonic', 'ffxiv/drg/sonic_thrust'},
-- Stun WS
	{'battle 1 12', 'ws', 'Leg Sweep', 't', 'LegSwp', 'ffxiv/drg/leg_sweep'},
}

return xivhotbar_keybinds_job
