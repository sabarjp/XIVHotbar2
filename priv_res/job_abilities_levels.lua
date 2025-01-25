-- Job IDs are
-- 0 = None
-- 1 = Warrior
-- 2 = Monk
-- 3 = White Mage
-- 4 = Black Mage
-- 5 = Red Mage
-- 6 = Thief
-- 7 = Paladin
-- 8 = Dark Knight
-- 9 = Beastmaster
-- 10 = Bard
-- 11 = Ranger
-- 12 = Samurai
-- 13 = Ninja
-- 14 = Dragoon
-- 15 = Summoner
-- 16 = Blue Mage
-- 17 = Corsair
-- 18 = Puppetmaster
-- 19 = Dancer
-- 20 = Scholar
-- 21 = Geomancer
-- 22 = Rune Fencer
-- 23 = Monipulator

-- Example of entry for warrior learning at level 1
-- [16] = {id=16,en="Mighty Strikes",levels={ [ 1 ] = 1 } }

return {
  -- Warrior
  [16] = { id = 16, en = "Mighty Strikes", levels = { [1] = 1 } },
  [35] = { id = 35, en = "Provoke", levels = { [1] = 5 } },
  [31] = { id = 31, en = "Berserk", levels = { [1] = 15 } },
  [33] = { id = 33, en = "Defender", levels = { [1] = 25 } },
  [32] = { id = 32, en = "Warcry", levels = { [1] = 35 } },
  [34] = { id = 34, en = "Aggressor", levels = { [1] = 45 } },
  [226] = { id = 226, en = "Retaliation", levels = { [1] = 60 } },
  [149] = { id = 149, en = "Warrior's Charge", levels = { [1] = 75 } },
  [150] = { id = 150, en = "Tomahawk", levels = { [1] = 75 } },
  [252] = { id = 252, en = "Restraint", levels = { [1] = 77 } },
  [267] = { id = 267, en = "Blood Rage", levels = { [1] = 87 } },
  [323] = { id = 323, en = "Brazen Rush", levels = { [1] = 96 } },

  -- Monk
  [17] = { id = 17, en = "Hundred Fists", levels = { [2] = 1 } },
  [39] = { id = 39, en = "Boost", levels = { [2] = 5 } },
  [37] = { id = 37, en = "Dodge", levels = { [2] = 15 } },
  [36] = { id = 36, en = "Focus", levels = { [2] = 25 } },
  [38] = { id = 38, en = "Chakra", levels = { [2] = 35 } },
  [82] = { id = 82, en = "Chi Blast", levels = { [2] = 41 } },
  [40] = { id = 40, en = "Counterstance", levels = { [2] = 45 } },
  [227] = { id = 227, en = "Footwork", levels = { [2] = 65 } },
  [151] = { id = 151, en = "Mantra", levels = { [2] = 75 } },
  [152] = { id = 152, en = "Formless Strikes", levels = { [2] = 75 } },
  [253] = { id = 253, en = "Perfect Counter", levels = { [2] = 79 } },
  [269] = { id = 269, en = "Impetus", levels = { [2] = 88 } },
  [324] = { id = 324, en = "Inner Strength", levels = { [2] = 96 } },

  -- White Mage
  [18] = { id = 18, en = "Benediction", levels = { [3] = 1 } },
  [74] = { id = 74, en = "Divine Seal", levels = { [3] = 15 } },
  [245] = { id = 245, en = "Afflatus Solace", levels = { [3] = 40 } },
  [246] = { id = 246, en = "Afflatus Misery", levels = { [3] = 40 } },
  [153] = { id = 153, en = "Martyr", levels = { [3] = 75 } },
  [154] = { id = 154, en = "Devotion", levels = { [3] = 75 } },
  [270] = { id = 270, en = "Divine Caress", levels = { [3] = 83 } },
  [271] = { id = 271, en = "Sacrosanctity", levels = { [3] = 95 } },
  [325] = { id = 325, en = "Asylum", levels = { [3] = 96 } },

  -- Black Mage
  [19] = { id = 19, en = "Manafont", levels = { [4] = 1 } },
  [75] = { id = 75, en = "Elemental Seal", levels = { [4] = 15 } },
  [254] = { id = 254, en = "Mana Wall", levels = { [4] = 76 } },
  [388] = { id = 388, en = "Cascade", levels = { [4] = 85 } },
  [272] = { id = 272, en = "Enmity Douse", levels = { [4] = 87 } },
  [273] = { id = 273, en = "Manawell", levels = { [4] = 95 } },
  [326] = { id = 326, en = "Subtle Sorcery", levels = { [4] = 96 } },

  -- Red Mage
  [20] = { id = 20, en = "Chainspell", levels = { [5] = 1 } },
  [83] = { id = 83, en = "Convert", levels = { [5] = 40 } },
  [247] = { id = 247, en = "Composure", levels = { [5] = 50 } },
  [274] = { id = 274, en = "Saboteur", levels = { [5] = 83 } },
  [275] = { id = 275, en = "Spontaneity", levels = { [5] = 95 } },
  [327] = { id = 327, en = "Stymie", levels = { [5] = 96 } },

  -- Thief
  [21] = { id = 21, en = "Perfect Dodge", levels = { [6] = 1 } },
  [41] = { id = 41, en = "Steal", levels = { [6] = 5 } },
  [44] = { id = 44, en = "Sneak Attack", levels = { [6] = 15 } },
  [42] = { id = 42, en = "Flee", levels = { [6] = 25 } },
  [76] = { id = 76, en = "Trick Attack", levels = { [6] = 30 } },
  [45] = { id = 45, en = "Mug", levels = { [6] = 35 } },
  [43] = { id = 43, en = "Hide", levels = { [6] = 45 } },
  [84] = { id = 84, en = "Accomplice", levels = { [6] = 65 } },
  [236] = { id = 236, en = "Collaborator", levels = { [6] = 65 } },
  [155] = { id = 155, en = "Assassin's Charge", levels = { [6] = 75 } },
  [156] = { id = 156, en = "Feint", levels = { [6] = 75 } },
  [228] = { id = 228, en = "Despoil", levels = { [6] = 77 } },
  [276] = { id = 276, en = "Conspirator", levels = { [6] = 87 } },
  [321] = { id = 321, en = "Bully", levels = { [6] = 93 } },
  [328] = { id = 328, en = "Larceny", levels = { [6] = 96 } },

  -- Paladin
  [22] = { id = 22, en = "Invincible", levels = { [7] = 1 } },
  [47] = { id = 47, en = "Holy Circle", levels = { [7] = 5 } },
  [46] = { id = 46, en = "Shield Bash", levels = { [7] = 15 } },
  [48] = { id = 48, en = "Sentinel", levels = { [7] = 30 } },
  [79] = { id = 79, en = "Cover", levels = { [7] = 35 } },
  [92] = { id = 92, en = "Rampart", levels = { [7] = 62 } },
  [394] = { id = 394, en = "Majesty", levels = { [7] = 70 } },
  [157] = { id = 157, en = "Fealty", levels = { [7] = 75 } },
  [158] = { id = 158, en = "Chivalry", levels = { [7] = 75 } },
  [255] = { id = 255, en = "Divine Emblem", levels = { [7] = 78 } },
  [277] = { id = 277, en = "Sepulcher", levels = { [7] = 87 } },
  [278] = { id = 278, en = "Palisade", levels = { [7] = 95 } },
  [329] = { id = 329, en = "Intervene", levels = { [7] = 96 } },

  -- Dark Knight
  [23] = { id = 23, en = "Blood Weapon", levels = { [8] = 1 } },
  [50] = { id = 50, en = "Arcane Circle", levels = { [8] = 5 } },
  [51] = { id = 51, en = "Last Resort", levels = { [8] = 15 } },
  [77] = { id = 77, en = "Weapon Bash", levels = { [8] = 20 } },
  [49] = { id = 49, en = "Souleater", levels = { [8] = 30 } },
  [389] = { id = 389, en = "Consume Mana", levels = { [8] = 55 } },
  [159] = { id = 159, en = "Dark Seal", levels = { [8] = 75 } },
  [160] = { id = 160, en = "Diabolic Eye", levels = { [8] = 75 } },
  [256] = { id = 256, en = "Nether Void", levels = { [8] = 78 } },
  [279] = { id = 279, en = "Arcane Crest", levels = { [8] = 87 } },
  [280] = { id = 280, en = "Scarlet Delirium", levels = { [8] = 95 } },
  [330] = { id = 330, en = "Soul Enslavement", levels = { [8] = 96 } },

  -- Beast Master
  [24] = { id = 24, en = "Familiar", levels = { [9] = 1 } },
  [52] = { id = 52, en = "Charm", levels = { [9] = 1 } },
  [53] = { id = 53, en = "Gauge", levels = { [9] = 10 } },
  [78] = { id = 78, en = "Reward", levels = { [9] = 12 } },
  [85] = { id = 85, en = "Call Beast", levels = { [9] = 23 } },
  [387] = { id = 387, en = "Bestial Loyalty", levels = { [9] = 23 } },
  [54] = { id = 54, en = "Tame", levels = { [9] = 30 } },
  [161] = { id = 161, en = "Feral Howl", levels = { [9] = 75 } },
  [162] = { id = 162, en = "Killer Instinct", levels = { [9] = 75 } },
  [331] = { id = 331, en = "Unleash", levels = { [9] = 96 } },
  [69] = { id = 69, en = "Fight", levels = { [9] = 1 } },
  [70] = { id = 70, en = "Heel", levels = { [9] = 10 } },
  [73] = { id = 73, en = "Stay", levels = { [9] = 15 } },
  [72] = { id = 72, en = "Sic", levels = { [9] = 25 } },
  [251] = { id = 251, en = "Ready", levels = { [9] = 25 } },
  [71] = { id = 71, en = "Leave", levels = { [9] = 35 } },
  [225] = { id = 225, en = "Snarl", levels = { [9] = 45 } },
  [281] = { id = 281, en = "Spur", levels = { [9] = 83 } },
  [282] = { id = 282, en = "Run Wild", levels = { [9] = 93 } },

  -- Bard
  [25] = { id = 25, en = "Soul Voice", levels = { [10] = 1 } },
  [229] = { id = 229, en = "Pianissimo", levels = { [10] = 20 } },
  [163] = { id = 163, en = "Nightingale", levels = { [10] = 75 } },
  [164] = { id = 164, en = "Troubadour", levels = { [10] = 75 } },
  [283] = { id = 283, en = "Tenuto", levels = { [10] = 83 } },
  [284] = { id = 284, en = "Marcato", levels = { [10] = 95 } },
  [332] = { id = 332, en = "Clarion Call", levels = { [10] = 96 } },

  -- Ranger
  [26] = { id = 26, en = "Eagle Eye Shot", levels = { [11] = 1 } },
  [224] = { id = 224, en = "Velocity Shot", levels = { [11] = 45 } },
  [59] = { id = 59, en = "Sharpshot", levels = { [11] = 1 } },
  [56] = { id = 56, en = "Scavenge", levels = { [11] = 10 } },
  [58] = { id = 58, en = "Camouflage", levels = { [11] = 20 } },
  [60] = { id = 60, en = "Barrage", levels = { [11] = 30 } },
  [57] = { id = 57, en = "Shadowbind", levels = { [11] = 40 } },
  [86] = { id = 86, en = "Unlimited Shot", levels = { [11] = 51 } },
  [166] = { id = 166, en = "Flashy Shot", levels = { [11] = 75 } },
  [165] = { id = 165, en = "Stealth Shot", levels = { [11] = 75 } },
  [257] = { id = 257, en = "Double Shot", levels = { [11] = 79 } },
  [285] = { id = 285, en = "Bounty Shot", levels = { [11] = 87 } },
  [286] = { id = 286, en = "Decoy Shot", levels = { [11] = 95 } },
  [395] = { id = 395, en = "Hover Shot", levels = { [11] = 95 } },
  [333] = { id = 333, en = "Overkill", levels = { [11] = 96 } },

  -- Summoner
  [30] = { id = 30, en = "Astral Flow", levels = { [15] = 1 } },
  [232] = { id = 232, en = "Elemental Siphon", levels = { [15] = 50 } },
  [385] = { id = 385, en = "Apogee", levels = { [15] = 70 } },
  [296] = { id = 296, en = "Mana Cede", levels = { [15] = 87 } },
  [337] = { id = 337, en = "Astral Conduit", levels = { [15] = 96 } },
  [88] = { id = 88, en = "Assault", levels = { [15] = 1 } },
  [89] = { id = 89, en = "Retreat", levels = { [15] = 1 } },
  [90] = { id = 90, en = "Release", levels = { [15] = 1 } },
  [91] = { id = 91, en = "Blood Pact: Rage", levels = { [15] = 1 } },
  [172] = { id = 172, en = "Blood Pact: Ward", levels = { [15] = 1 } },
  [250] = { id = 250, en = "Avatar's Favor", levels = { [15] = 55 } },

  -- Samurai
  [27] = { id = 27, en = "Meikyo Shisui", levels = { [12] = 1 } },
  [64] = { id = 64, en = "Warding Circle", levels = { [12] = 5 } },
  [62] = { id = 62, en = "Third Eye", levels = { [12] = 15 } },
  [173] = { id = 173, en = "Hasso", levels = { [12] = 25 } },
  [63] = { id = 63, en = "Meditate", levels = { [12] = 30 } },
  [174] = { id = 174, en = "Seigan", levels = { [12] = 35 } },
  [230] = { id = 230, en = "Sekkanoki", levels = { [12] = 40 } },
  [320] = { id = 320, en = "Konzen-ittai", levels = { [12] = 65 } },
  [167] = { id = 167, en = "Shikikoyo", levels = { [12] = 75 } },
  [168] = { id = 168, en = "Blade Bash", levels = { [12] = 75 } },
  [258] = { id = 258, en = "Sengikori", levels = { [12] = 77 } },
  [287] = { id = 287, en = "Hamanoha", levels = { [12] = 87 } },
  [288] = { id = 288, en = "Hagakure", levels = { [12] = 95 } },
  [334] = { id = 334, en = "Yaegasumi", levels = { [12] = 96 } },

  -- Ninja
  [28] = { id = 28, en = "Mijin Gakure", levels = { [13] = 1 } },
  [248] = { id = 248, en = "Yonin", levels = { [13] = 40 } },
  [249] = { id = 249, en = "Innin", levels = { [13] = 40 } },
  [171] = { id = 171, en = "Sange", levels = { [13] = 75 } },
  [259] = { id = 259, en = "Futae", levels = { [13] = 77 } },
  [291] = { id = 291, en = "Issekigan", levels = { [13] = 95 } },
  [335] = { id = 335, en = "Mikage", levels = { [13] = 96 } },

  -- Dragoon
  [29] = { id = 29, en = "Spirit Surge", levels = { [14] = 1 } },
  [61] = { id = 61, en = "Call Wyvern", levels = { [14] = 1 } },
  [65] = { id = 65, en = "Ancient Circle", levels = { [14] = 5 } },
  [66] = { id = 66, en = "Jump", levels = { [14] = 10 } },
  [80] = { id = 80, en = "Spirit Link", levels = { [14] = 25 } },
  [67] = { id = 67, en = "High Jump", levels = { [14] = 35 } },
  [68] = { id = 68, en = "Super Jump", levels = { [14] = 50 } },
  [393] = { id = 393, en = "Spirit Bond", levels = { [14] = 65 } },
  [169] = { id = 169, en = "Deep Breathing", levels = { [14] = 75 } },
  [170] = { id = 170, en = "Angon", levels = { [14] = 75 } },
  [260] = { id = 260, en = "Spirit Jump", levels = { [14] = 77 } },
  [293] = { id = 293, en = "Soul Jump", levels = { [14] = 85 } },
  [292] = { id = 292, en = "Dragon Breaker", levels = { [14] = 87 } },
  [336] = { id = 336, en = "Fly High", levels = { [14] = 96 } },
  [87] = { id = 87, en = "Dismiss", levels = { [14] = 1 } },
  [318] = { id = 318, en = "Smiting Breath", levels = { [14] = 90 } },
  [319] = { id = 319, en = "Restoring Breath", levels = { [14] = 90 } },
  [295] = { id = 295, en = "Steady Wing", levels = { [14] = 95 } },

  -- Blue Mage
  [93] = { id = 93, en = "Azure Lore", levels = { [16] = 1 } },
  [95] = { id = 95, en = "Burst Affinity", levels = { [16] = 25 } },
  [94] = { id = 94, en = "Chain Affinity", levels = { [16] = 40 } },
  [175] = { id = 175, en = "Convergence", levels = { [16] = 75 } },
  [176] = { id = 176, en = "Diffusion", levels = { [16] = 75 } },
  [297] = { id = 297, en = "Efflux", levels = { [16] = 83 } },
  [298] = { id = 298, en = "Unbridled Learning", levels = { [16] = 95 } },
  [338] = { id = 338, en = "Unbridled Wisdom", levels = { [16] = 96 } },

  -- Corsair
  [96] = { id = 96, en = "Wild Card", levels = { [17] = 1 } },
  [97] = { id = 97, en = "Phantom Roll", levels = { [17] = 5 } },
  [123] = { id = 123, en = "Double-Up", levels = { [17] = 5 } },
  [124] = { id = 124, en = "Quick Draw", levels = { [17] = 40 } },
  [133] = { id = 133, en = "Random Deal", levels = { [17] = 50 } },
  [177] = { id = 177, en = "Snake Eye", levels = { [17] = 75 } },
  [178] = { id = 178, en = "Fold", levels = { [17] = 75 } },
  [301] = { id = 301, en = "Triple Shot", levels = { [17] = 87 } },
  [392] = { id = 392, en = "Crooked Cards", levels = { [17] = 95 } },
  [339] = { id = 339, en = "Cutting Cards", levels = { [17] = 96 } },
  [114] = { id = 114, en = "Corsair's Roll", levels = { [17] = 5 } },
  [110] = { id = 110, en = "Ninja Roll", levels = { [17] = 8 } },
  [108] = { id = 108, en = "Hunter's Roll", levels = { [17] = 11 } },
  [105] = { id = 105, en = "Chaos Roll", levels = { [17] = 14 } },
  [113] = { id = 113, en = "Magus's Roll", levels = { [17] = 17 } },
  [100] = { id = 100, en = "Healer's Roll", levels = { [17] = 20 } },
  [111] = { id = 111, en = "Drachen Roll", levels = { [17] = 23 } },
  [107] = { id = 107, en = "Choral Roll", levels = { [17] = 26 } },
  [99] = { id = 99, en = "Monk's Roll", levels = { [17] = 31 } },
  [106] = { id = 106, en = "Beast Roll", levels = { [17] = 34 } },
  [109] = { id = 109, en = "Samurai Roll", levels = { [17] = 37 } },
  [112] = { id = 112, en = "Evoker's Roll", levels = { [17] = 40 } },
  [103] = { id = 103, en = "Rogue's Roll", levels = { [17] = 43 } },
  [102] = { id = 102, en = "Warlock's Roll", levels = { [17] = 46 } },
  [98] = { id = 98, en = "Fighter's Roll", levels = { [17] = 49 } },
  [115] = { id = 115, en = "Puppet Roll", levels = { [17] = 52 } },
  [104] = { id = 104, en = "Gallant's Roll", levels = { [17] = 55 } },
  [101] = { id = 101, en = "Wizard's Roll", levels = { [17] = 58 } },
  [116] = { id = 116, en = "Dancer's Roll", levels = { [17] = 61 } },
  [117] = { id = 117, en = "Scholar's Roll", levels = { [17] = 64 } },
  [390] = { id = 390, en = "Naturalist's Roll", levels = { [17] = 67 } },
  [391] = { id = 391, en = "Runeist's Roll", levels = { [17] = 70 } },
  [118] = { id = 118, en = "Bolter's Roll", levels = { [17] = 76 } },
  [119] = { id = 119, en = "Caster's Roll", levels = { [17] = 79 } },
  [120] = { id = 120, en = "Courser's Roll", levels = { [17] = 81 } },
  [121] = { id = 121, en = "Blitzer's Roll", levels = { [17] = 83 } },
  [122] = { id = 122, en = "Tactician's Roll", levels = { [17] = 86 } },
  [302] = { id = 302, en = "Allies' Roll", levels = { [17] = 89 } },
  [303] = { id = 303, en = "Miser's Roll", levels = { [17] = 92 } },
  [304] = { id = 304, en = "Companion's Roll", levels = { [17] = 95 } },
  [305] = { id = 305, en = "Avenger's Roll", levels = { [17] = 97 } },

  -- Puppetmaster
  [135] = { id = 135, en = "Overdrive", levels = { [18] = 1 } },
  [310] = { id = 310, en = "Deus Ex Automata", levels = { [18] = 5 } },
  [136] = { id = 136, en = "Activate", levels = { [18] = 1 } },
  [137] = { id = 137, en = "Repair", levels = { [18] = 15 } },
  [322] = { id = 322, en = "Maintenance", levels = { [18] = 30 } },
  [180] = { id = 180, en = "Ventriloquy", levels = { [18] = 75 } },
  [179] = { id = 179, en = "Role Reversal", levels = { [18] = 75 } },
  [266] = { id = 266, en = "Tactical Switch", levels = { [18] = 79 } },
  [309] = { id = 309, en = "Cooldown", levels = { [18] = 95 } },
  [340] = { id = 340, en = "Heady Artifice", levels = { [18] = 96 } },
  [139] = { id = 139, en = "Deactivate", levels = { [18] = 1 } },
  [138] = { id = 138, en = "Deploy", levels = { [18] = 1 } },
  [148] = { id = 148, en = "Dark Maneuver", levels = { [18] = 1 } },
  [147] = { id = 147, en = "Light Maneuver", levels = { [18] = 1 } },
  [144] = { id = 144, en = "Earth Maneuver", levels = { [18] = 1 } },
  [143] = { id = 143, en = "Wind Maneuver", levels = { [18] = 1 } },
  [141] = { id = 141, en = "Fire Maneuver", levels = { [18] = 1 } },
  [142] = { id = 142, en = "Ice Maneuver", levels = { [18] = 1 } },
  [145] = { id = 145, en = "Thunder Maneuver", levels = { [18] = 1 } },
  [146] = { id = 146, en = "Water Maneuver", levels = { [18] = 1 } },
  [140] = { id = 140, en = "Retrieve", levels = { [18] = 10 } },

  -- Dancer
  [181] = { id = 181, en = "Trance", levels = { [19] = 1 } },
  [384] = { id = 384, en = "Contradance", levels = { [19] = 50 } },
  [237] = { id = 237, en = "Saber Dance", levels = { [19] = 75 } },
  [238] = { id = 238, en = "Fan Dance", levels = { [19] = 75 } },
  [239] = { id = 239, en = "No Foot Rise", levels = { [19] = 75 } },
  [261] = { id = 261, en = "Presto", levels = { [19] = 77 } },
  [341] = { id = 341, en = "Grand Pas", levels = { [19] = 96 } },
  [184] = { id = 184, en = "Drain Samba", levels = { [19] = 5 } },
  [187] = { id = 187, en = "Aspir Samba", levels = { [19] = 25 } },
  [185] = { id = 185, en = "Drain Samba II", levels = { [19] = 35 } },
  [189] = { id = 189, en = "Haste Samba", levels = { [19] = 45 } },
  [188] = { id = 188, en = "Aspir Samba II", levels = { [19] = 60 } },
  [186] = { id = 186, en = "Drain Samba III", levels = { [19] = 65 } },
  [201] = { id = 201, en = "Quickstep", levels = { [19] = 20 } },
  [202] = { id = 202, en = "Box Step", levels = { [19] = 30 } },
  [203] = { id = 203, en = "Stutter Step", levels = { [19] = 40 } },
  [312] = { id = 312, en = "Feather Step", levels = { [19] = 83 } },
  [190] = { id = 190, en = "Curing Waltz", levels = { [19] = 15 } },
  [195] = { id = 195, en = "Divine Waltz", levels = { [19] = 25 } },
  [191] = { id = 191, en = "Curing Waltz II", levels = { [19] = 30 } },
  [194] = { id = 194, en = "Healing Waltz", levels = { [19] = 35 } },
  [192] = { id = 192, en = "Curing Waltz III", levels = { [19] = 45 } },
  [193] = { id = 193, en = "Curing Waltz IV", levels = { [19] = 70 } },
  [262] = { id = 262, en = "Divine Waltz II", levels = { [19] = 78 } },
  [311] = { id = 311, en = "Curing Waltz V", levels = { [19] = 87 } },
  [196] = { id = 196, en = "Spectral Jig", levels = { [19] = 25 } },
  [197] = { id = 197, en = "Chocobo Jig", levels = { [19] = 55 } },
  [381] = { id = 381, en = "Chocobo Jig II", levels = { [19] = 70 } },
  [204] = { id = 204, en = "Animated Flourish", levels = { [19] = 20 } },
  [205] = { id = 205, en = "Desperate Flourish", levels = { [19] = 30 } },
  [207] = { id = 207, en = "Violent Flourish", levels = { [19] = 45 } },
  [206] = { id = 206, en = "Reverse Flourish", levels = { [19] = 40 } },
  [208] = { id = 208, en = "Building Flourish", levels = { [19] = 50 } },
  [209] = { id = 209, en = "Wild Flourish", levels = { [19] = 60 } },
  [264] = { id = 264, en = "Climactic Flourish", levels = { [19] = 80 } },
  [313] = { id = 313, en = "Striking Flourish", levels = { [19] = 89 } },
  [314] = { id = 314, en = "Ternary Flourish", levels = { [19] = 93 } },

  -- Scholar
  [210] = { id = 210, en = "Tabula Rasa", levels = { [20] = 1 } },
  [211] = { id = 211, en = "Light Arts", levels = { [20] = 10 } },
  [212] = { id = 212, en = "Dark Arts", levels = { [20] = 10 } },
  [233] = { id = 233, en = "Sublimation", levels = { [20] = 35 } },
  [214] = { id = 214, en = "Modus Veritas", levels = { [20] = 65 } },
  [244] = { id = 244, en = "Enlightenment", levels = { [20] = 75 } },
  [265] = { id = 265, en = "Libra", levels = { [20] = 76 } },
  [342] = { id = 342, en = "Caper Emissarius", levels = { [20] = 96 } },
  [215] = { id = 215, en = "Penury", levels = { [20] = 10 } },
  [234] = { id = 234, en = "Addendum: White", levels = { [20] = 10 } },
  [216] = { id = 216, en = "Celerity", levels = { [20] = 25 } },
  [218] = { id = 218, en = "Accession", levels = { [20] = 40 } },
  [217] = { id = 217, en = "Rapture", levels = { [20] = 55 } },
  [240] = { id = 240, en = "Altruism", levels = { [20] = 75 } },
  [242] = { id = 242, en = "Tranquility", levels = { [20] = 75 } },
  [316] = { id = 316, en = "Perpetuance", levels = { [20] = 87 } },
  [219] = { id = 219, en = "Parsimony", levels = { [20] = 10 } },
  [220] = { id = 220, en = "Alacrity", levels = { [20] = 25 } },
  [235] = { id = 235, en = "Addendum: Black", levels = { [20] = 30 } },
  [222] = { id = 222, en = "Manifestation", levels = { [20] = 40 } },
  [221] = { id = 221, en = "Ebullience", levels = { [20] = 55 } },
  [241] = { id = 241, en = "Focalization", levels = { [20] = 75 } },
  [243] = { id = 243, en = "Equanimity", levels = { [20] = 75 } },
  [317] = { id = 317, en = "Immanence", levels = { [20] = 87 } },

  -- Geomancer
  [343] = { id = 343, en = "Bolster", levels = { [21] = 1 } },
  [345] = { id = 345, en = "Full Circle", levels = { [21] = 5 } },
  [346] = { id = 346, en = "Lasting Emanation", levels = { [21] = 25 } },
  [347] = { id = 347, en = "Ecliptic Attrition", levels = { [21] = 25 } },
  [348] = { id = 348, en = "Collimated Fervor", levels = { [21] = 40 } },
  [349] = { id = 349, en = "Life Cycle", levels = { [21] = 50 } },
  [350] = { id = 350, en = "Blaze of Glory", levels = { [21] = 60 } },
  [351] = { id = 351, en = "Dematerialize", levels = { [21] = 70 } },
  [386] = { id = 386, en = "Entrust", levels = { [21] = 75 } },
  [354] = { id = 354, en = "Mending Halation", levels = { [21] = 75 } },
  [355] = { id = 355, en = "Radial Arcana", levels = { [21] = 75 } },
  [352] = { id = 352, en = "Theurgic Focus", levels = { [21] = 80 } },
  [353] = { id = 353, en = "Concentric Pulse", levels = { [21] = 90 } },
  [377] = { id = 377, en = "Widened Compass", levels = { [21] = 96 } },

  -- Rune Fencer
  [356] = { id = 356, en = "Elemental Sforzo", levels = { [22] = 1 } },
  [358] = { id = 358, en = "Ignis", levels = { [22] = 5 } },
  [359] = { id = 359, en = "Gelus", levels = { [22] = 5 } },
  [360] = { id = 360, en = "Flabra", levels = { [22] = 5 } },
  [361] = { id = 361, en = "Tellus", levels = { [22] = 5 } },
  [362] = { id = 362, en = "Sulpor", levels = { [22] = 5 } },
  [363] = { id = 363, en = "Unda", levels = { [22] = 5 } },
  [364] = { id = 364, en = "Lux", levels = { [22] = 5 } },
  [365] = { id = 365, en = "Tenebrae", levels = { [22] = 5 } },
  [366] = { id = 366, en = "Vallation", levels = { [22] = 10 } },
  [367] = { id = 367, en = "Swordplay", levels = { [22] = 20 } },
  [344] = { id = 344, en = "Swipe", levels = { [22] = 25 } },
  [368] = { id = 368, en = "Lunge", levels = { [22] = 25 } },
  [369] = { id = 369, en = "Pflug", levels = { [22] = 40 } },
  [371] = { id = 371, en = "Valiance", levels = { [22] = 50 } },
  [370] = { id = 370, en = "Embolden", levels = { [22] = 60 } },
  [383] = { id = 383, en = "Vivacious Pulse", levels = { [22] = 65 } },
  [372] = { id = 372, en = "Gambit", levels = { [22] = 70 } },
  [376] = { id = 376, en = "Battuta", levels = { [22] = 75 } },
  [375] = { id = 375, en = "Rayke", levels = { [22] = 75 } },
  [373] = { id = 373, en = "Liement", levels = { [22] = 85 } },
  [374] = { id = 374, en = "One for All", levels = { [22] = 95 } },
  [378] = { id = 378, en = "Odyllic Subterfuge", levels = { [22] = 96 } },
}
