xivhotbar_keybinds_general['Root'] = {
-- #1 Hotbar
	{'field 1 1', 'macro', 'input /dismount;wait 2;input /mount ixion', '', 'Mount', 'Mount'},
	-- Warps
	{'field 1 2', 'macro', 'input /equip ring1 "Warp Ring";wait 10;input /item "Warp Ring" <me>', '', 'Warp R.'},
	{'field 1 2', 'ma', 'Warp', 'stpt', 'Warp'},
	{'field 1 3', 'ma', 'Escape', 'me', 'Warp'},
	{'field 1 11', 'input', '/rmap', '', 'R. Map', 'crafting_log'},
	{'field 1 12', 'input', '/map', '', 'Map', 'crafting_log'},

-- #2 Hotbar
	-- Sneak me
	{'field 2 1', 'ma', 'Sneak', 'me', 'Sneak'},
	{'field 2 1', 'ma', 'Monomi: Ichi', 'me', 'Sneak'},
	{'field 2 1', 'ja', 'Spectral Jig', 'me', 'Spectral'},
	-- Invisible me
	{'field 2 2', 'ma', 'Invisible', 'me', 'Invis'},
	{'field 2 2', 'ma', 'Tonko: Ichi', 'me', 'Sneak'},
	{'field 2 2', 'ja', 'Spectral Jig', 'me', 'Spectral'},
	-- Sneak/Invis others
	{'field 2 3', 'ma', 'Sneak', 'stpc', 'Snk Otr'},
	{'field 2 4', 'ma', 'Invisible', 'stpc', 'Inv Otr'},

	-- #3 Hotbar
	{'field 3 1', 'macro', 'input /targetnpc;input /item Hatchet <t>', '', 'Log', 'harvest'},
	{'field 3 2', 'macro', 'input /targetnpc;input /item Pickaxe <t>', '', 'Mine', 'mining'},
	{'field 3 3', 'input', '/fish', '', 'Fish', 'fish'},
	{'field 3 4', 'input', '/lastsynth', '', 'Craft', 'synth'},
	{'field 3 5', 'macro', 'input /lastsynth;wait 25;input /lastsynth;wait 25;input /lastsynth;wait 25;input /lastsynth;wait 25;input /lastsynth;wait 25;input /lastsynth;wait 25;', '', 'Craft x6', 'synth'},

-- #4 Hotbar
	-- party setup
	{'field 4 1', 'input', '/sea all friend', '', 'FList', 'check'},
	{'field 4 2', 'input', '/join', '', 'Join PT'},
	-- XP ring
	{'field 4 3', 'macro', 'input /equip ring2 "Empress Band";wait 1;input /item "Empress Band" <me>', '', 'XP Ring', 'scroll'},
	-- trusts
	{'field 4 12', 'input', '/refa all', '', 'Rtn Trust', 'return-trust'},
	{'field 4 11', 'macro', 'input /echo Trust Summon;input /ma "Valaineral" <me>;wait 6;input /ma "Mihli Aliapoh" <me>;wait 6;input /ma "Shantotto II" <me>;wait 6;input /ma "Semih Lafihna" <me>;wait 6;input /ma "Mayakov" <me>;wait 6', '', 'Summon', '2hr'},
	-- {'field 4 11', 'input', '//tru name', '', 'Summon', '2hr'}, -- trust mod template
	{'field 4 12', 'input', '/refa all', '', 'Rtn Trust', 'return-trust'},

-- #5 Hotbar
	 	--Teleports
	{'field 5 1', 'ma', 'Teleport-Holla', 'me', 'Holla'},
	{'field 5 2', 'ma', 'Teleport-Dem', 'me', 'Dem'},
	{'field 5 3', 'ma', 'Teleport-Mea', 'me', 'Mea'},
	{'field 5 4', 'ma', 'Teleport-Altep', 'me', 'Altep'},
	{'field 5 5', 'ma', 'Teleport-Yhoat', 'me', 'Yhoat'},
	{'field 5 6', 'ma', 'Teleport-Vahzl', 'me', 'Vahzl'},
	{'field 5 7', 'ma', 'Recall-Jugner', 'me', 'Jugner'},
	{'field 5 8', 'ma', 'Recall-Pashh', 'me', 'Pashh'},
	{'field 5 9', 'ma', 'Recall-Meriph', 'me', 'Meriph'},

-- #6 Hotbar
	{'field 6 1', 'input', '/jump', '', 'Jump', 'Jump'},
	
	
}

return xivhotbar_keybinds_general