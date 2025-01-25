-- Valid combat skills are
-- 1  = Hand-to-Hand
-- 2  = Dagger
-- 3  = Sword
-- 4  = Great Sword
-- 5  = Axe
-- 6  = Great Axe
-- 7  = Scythe
-- 8  = Polearm
-- 9  = Katana
-- 10 = Great Katana
-- 11 = Club
-- 12 = Staff
-- 22 = Automaton Melee
-- 23 = Automaton Archery
-- 24 = Automaton Magic
-- 25 = Archery
-- 26 = Marksmanship
-- 27 = Throwing
-- 28 = Guard
-- 29 = Evasion
-- 30 = Shield
-- 31 = Parrying

-- example entry for hand-to-hand skill "combo" usable at skill level 5, no level requirement
--     [1] = {id=1,en="Combo", skill = 1, min_skill = 5 },
-- example entry for dagger skill "rudra's storm" usable at level 85, no skill requirement
--     [1] = {id=1,en="Rudra's Storm", skill = 2, min_level = 85 },
-- example entry for sword skill "Requiescat" usable at skill level 357 and requires level 96
--     [1] = {id=1,en="Combo", skill = 3, min_skill = 357, min_level = 96 },

return {
  -- Hand to Hand
  [1] = { id = 1, en = "Combo", skill = 1, min_skill = 5 },
  [2] = { id = 2, en = "Shoulder Tackle", skill = 1, min_skill = 40 },
  [3] = { id = 3, en = "One Inch Punch", skill = 1, min_skill = 75 },
  [4] = { id = 4, en = "Backhand Blow", skill = 1, min_skill = 100 },
  [5] = { id = 5, en = "Raging Fists", skill = 1, min_skill = 125 },
  [6] = { id = 6, en = "Spinning Attack", skill = 1, min_skill = 150 },
  [7] = { id = 7, en = "Howling Fist", skill = 1, min_skill = 200 },
  [8] = { id = 8, en = "Dragon Kick", skill = 1, min_skill = 225 },
  [9] = { id = 9, en = "Asuran Fists", skill = 1, min_skill = 250 },
  [10] = { id = 10, en = "Final Heaven", skill = 1, min_level = 75 },
  [11] = { id = 11, en = "Ascetic's Fury", skill = 1, min_level = 75 },
  [12] = { id = 12, en = "Stringing Pummel", skill = 1, min_level = 75 },
  [13] = { id = 13, en = "Tornado Kick", skill = 1, min_skill = 300 },
  [14] = { id = 14, en = "Victory Smite", skill = 1, min_level = 85 },
  [15] = { id = 15, en = "Shijin Spiral", skill = 1, min_skill = 357, min_level = 96 },
  [230] = { id = 230, en = "Dragon Blow", skill = 1, min_level = 99 },
  [231] = { id = 231, en = "Maru Kala", skill = 1, min_level = 99 },

  -- Dagger
  [16] = { id = 16, en = "Wasp Sting", skill = 2, min_skill = 5 },
  [17] = { id = 17, en = "Viper Bite", skill = 2, min_skill = 100 },
  [18] = { id = 18, en = "Shadowstitch", skill = 2, min_skill = 70 },
  [19] = { id = 19, en = "Gust Slash", skill = 2, min_skill = 40 },
  [20] = { id = 20, en = "Cyclone", skill = 2, min_skill = 125 },
  [21] = { id = 21, en = "Energy Steal", skill = 2, min_skill = 150 },
  [22] = { id = 22, en = "Energy Drain", skill = 2, min_skill = 175 },
  [23] = { id = 23, en = "Dancing Edge", skill = 2, min_skill = 200 },
  [24] = { id = 24, en = "Shark Bite", skill = 2, min_skill = 225 },
  [25] = { id = 25, en = "Evisceration", skill = 2, min_skill = 230 },
  [26] = { id = 26, en = "Mercy Stroke", skill = 2, min_level = 75 },
  [27] = { id = 27, en = "Mandalic Stab", skill = 2, min_level = 75 },
  [28] = { id = 28, en = "Mordant Rime", skill = 2, min_level = 75 },
  [29] = { id = 29, en = "Pyrrhic Kleos", skill = 2, min_level = 75 },
  [30] = { id = 30, en = "Aeolian Edge", skill = 2, min_skill = 290 },
  [31] = { id = 31, en = "Rudra's Storm", skill = 2, min_level = 85 },
  [224] = { id = 224, en = "Exenterator", skill = 2, min_level = 99 },
  [232] = { id = 232, en = "Ruthless Stroke", skill = 2, min_level = 99 },

  -- Sword
  [32] = { id = 32, en = "Fast Blade", skill = 3, min_skill = 5 },
  [33] = { id = 33, en = "Burning Blade", skill = 3, min_skill = 30 },
  [34] = { id = 34, en = "Red Lotus Blade", skill = 3, min_skill = 50 },
  [35] = { id = 35, en = "Flat Blade", skill = 3, min_skill = 75 },
  [36] = { id = 36, en = "Shining Blade", skill = 3, min_skill = 100 },
  [37] = { id = 37, en = "Seraph Blade", skill = 3, min_skill = 125 },
  [38] = { id = 38, en = "Circle Blade", skill = 3, min_skill = 150 },
  [39] = { id = 39, en = "Spirits Within", skill = 3, min_skill = 175 },
  [40] = { id = 40, en = "Vorpal Blade", skill = 3, min_skill = 200 },
  [41] = { id = 41, en = "Swift Blade", skill = 3, min_skill = 225 },
  [42] = { id = 42, en = "Savage Blade", skill = 3, min_skill = 240 },
  [43] = { id = 43, en = "Knights of Round", skill = 3, min_level = 75 },
  [44] = { id = 44, en = "Death Blossom", skill = 3, min_level = 75 },
  [45] = { id = 45, en = "Atonement", skill = 3, min_level = 75 },
  [46] = { id = 46, en = "Expiacion", skill = 3, min_level = 75 },
  [47] = { id = 47, en = "Sanguine Blade", skill = 3, min_skill = 300 },
  [238] = { id = 238, en = "Uriel Blade", skill = 3, min_level = 73 },
  [239] = { id = 239, en = "Glory Slash", skill = 3, min_level = 73 },
  [225] = { id = 225, en = "Chant du Cygne", skill = 3, min_level = 85 },
  [226] = { id = 226, en = "Requiescat", skill = 3, min_skill = 357, min_level = 96 },
  [227] = { id = 229, en = "Knights of Rotund", skill = 3, min_level = 1 },
  [229] = { id = 229, en = "Fast Blade II", skill = 3, min_level = 99 },
  [233] = { id = 233, en = "Imperator", skill = 3, min_level = 99 },

  -- Great Sword
  [48] = { id = 48, en = "Hard Slash", skill = 4, min_skill = 5 },
  [49] = { id = 49, en = "Power Slash", skill = 4, min_skill = 30 },
  [50] = { id = 50, en = "Frostbite", skill = 4, min_skill = 70 },
  [51] = { id = 51, en = "Freezebite", skill = 4, min_skill = 100 },
  [52] = { id = 52, en = "Shockwave", skill = 4, min_skill = 150 },
  [53] = { id = 53, en = "Crescent Moon", skill = 4, min_skill = 175 },
  [54] = { id = 54, en = "Sickle Moon", skill = 4, min_skill = 200 },
  [55] = { id = 55, en = "Spinning Slash", skill = 4, min_skill = 225 },
  [56] = { id = 56, en = "Ground Strike", skill = 4, min_skill = 250 },
  [57] = { id = 57, en = "Scourge", skill = 4, min_level = 75 },
  [58] = { id = 58, en = "Herculean Slash", skill = 4, min_skill = 290 },
  [59] = { id = 59, en = "Torcleaver", skill = 4, min_level = 85 },
  [60] = { id = 60, en = "Resolution", skill = 4, min_skill = 357, min_level = 96 },
  [61] = { id = 61, en = "Dimidiation", skill = 4, min_level = 99 },
  [62] = { id = 62, en = "Fimbulvetr", skill = 4, min_level = 99 },

  -- Axe
  [64] = { id = 64, en = "Raging Axe", skill = 5, min_skill = 5 },
  [65] = { id = 65, en = "Smash Axe", skill = 5, min_skill = 40 },
  [66] = { id = 66, en = "Gale Axe", skill = 5, min_skill = 70 },
  [67] = { id = 67, en = "Avalanche Axe", skill = 5, min_skill = 100 },
  [68] = { id = 68, en = "Spinning Axe", skill = 5, min_skill = 150 },
  [69] = { id = 69, en = "Rampage", skill = 5, min_skill = 175 },
  [70] = { id = 70, en = "Calamity", skill = 5, min_skill = 200 },
  [71] = { id = 71, en = "Mistral Axe", skill = 5, min_skill = 225 },
  [72] = { id = 72, en = "Decimation", skill = 5, min_skill = 240 },
  [73] = { id = 73, en = "Onslaught", skill = 5, min_level = 75 },
  [74] = { id = 74, en = "Primal Rend", skill = 5, min_level = 75 },
  [75] = { id = 75, en = "Bora Axe", skill = 5, min_skill = 290 },
  [76] = { id = 76, en = "Cloudsplitter", skill = 5, min_level = 85 },
  [77] = { id = 77, en = "Ruinator", skill = 5, min_skill = 357, min_level = 96 },
  [78] = { id = 78, en = "Blitz", skill = 5, min_level = 99 },

  -- Great Axe
  [80] = { id = 80, en = "Shield Break", skill = 6, min_skill = 5 },
  [81] = { id = 81, en = "Iron Tempest", skill = 6, min_skill = 40 },
  [82] = { id = 82, en = "Sturmwind", skill = 6, min_skill = 70 },
  [83] = { id = 83, en = "Armor Break", skill = 6, min_skill = 100 },
  [84] = { id = 84, en = "Keen Edge", skill = 6, min_skill = 150 },
  [85] = { id = 85, en = "Weapon Break", skill = 6, min_skill = 175 },
  [86] = { id = 86, en = "Raging Rush", skill = 6, min_skill = 200 },
  [87] = { id = 87, en = "Full Break", skill = 6, min_skill = 225 },
  [88] = { id = 88, en = "Steel Cyclone", skill = 6, min_skill = 240 },
  [89] = { id = 89, en = "Metatron Torment", skill = 6, min_level = 75 },
  [90] = { id = 90, en = "King's Justice", skill = 6, min_level = 75 },
  [91] = { id = 91, en = "Fell Cleave", skill = 6, min_skill = 300 },
  [92] = { id = 92, en = "Ukko's Fury", skill = 6, min_level = 85 },
  [93] = { id = 93, en = "Upheaval", skill = 6, min_skill = 357, min_level = 96 },
  [94] = { id = 94, en = "Disaster", skill = 6, min_level = 99 },

  -- Scythe
  [96] = { id = 96, en = "Slice", skill = 7, min_skill = 5 },
  [97] = { id = 97, en = "Dark Harvest", skill = 7, min_skill = 30 },
  [98] = { id = 98, en = "Shadow of Death", skill = 7, min_skill = 70 },
  [99] = { id = 99, en = "Nightmare Scythe", skill = 7, min_skill = 100 },
  [100] = { id = 100, en = "Spinning Scythe", skill = 7, min_skill = 125 },
  [101] = { id = 101, en = "Vorpal Scythe", skill = 7, min_skill = 150 },
  [102] = { id = 102, en = "Guillotine", skill = 7, min_skill = 200 },
  [103] = { id = 103, en = "Cross Reaper", skill = 7, min_skill = 225 },
  [104] = { id = 104, en = "Spiral Hell", skill = 7, min_skill = 240 },
  [105] = { id = 105, en = "Catastrophe", skill = 7, min_level = 75 },
  [106] = { id = 106, en = "Insurgency", skill = 7, min_level = 75 },
  [107] = { id = 107, en = "Infernal Scythe", skill = 7, min_skill = 300 },
  [108] = { id = 108, en = "Quietus", skill = 7, min_level = 85 },
  [109] = { id = 109, en = "Entropy", skill = 7, min_skill = 357, min_level = 96 },
  [110] = { id = 110, en = "Origin", skill = 7, min_level = 99 },

  -- Polearm
  [112] = { id = 112, en = "Double Thrust", skill = 8, min_skill = 5 },
  [113] = { id = 113, en = "Thunder Thrust", skill = 8, min_skill = 30 },
  [114] = { id = 114, en = "Raiden Thrust", skill = 8, min_skill = 70 },
  [115] = { id = 115, en = "Leg Sweep", skill = 8, min_skill = 100 },
  [116] = { id = 116, en = "Penta Thrust", skill = 8, min_skill = 150 },
  [117] = { id = 117, en = "Vorpal Thrust", skill = 8, min_skill = 175 },
  [118] = { id = 118, en = "Skewer", skill = 8, min_skill = 200 },
  [119] = { id = 119, en = "Wheeling Thrust", skill = 8, min_skill = 225 },
  [120] = { id = 120, en = "Impulse Drive", skill = 8, min_skill = 240 },
  [121] = { id = 121, en = "Geirskogul", skill = 8, min_level = 75 },
  [122] = { id = 122, en = "Drakesbane", skill = 8, min_level = 75 },
  [123] = { id = 123, en = "Sonic Thrust", skill = 8, min_skill = 300 },
  [124] = { id = 124, en = "Camlann's Torment", skill = 8, min_level = 85 },
  [125] = { id = 125, en = "Stardiver", skill = 8, min_skill = 357, min_level = 96 },
  [126] = { id = 126, en = "Diarmuid", skill = 8, min_level = 99 },

  -- Katana
  [128] = { id = 128, en = "Blade: Rin", skill = 9, min_skill = 5 },
  [129] = { id = 129, en = "Blade: Retsu", skill = 9, min_skill = 30 },
  [130] = { id = 130, en = "Blade: Teki", skill = 9, min_skill = 70 },
  [131] = { id = 131, en = "Blade: To", skill = 9, min_skill = 100 },
  [132] = { id = 132, en = "Blade: Chi", skill = 9, min_skill = 150 },
  [133] = { id = 133, en = "Blade: Ei", skill = 9, min_skill = 175 },
  [134] = { id = 134, en = "Blade: Jin", skill = 9, min_skill = 200 },
  [135] = { id = 135, en = "Blade: Ten", skill = 9, min_skill = 225 },
  [136] = { id = 136, en = "Blade: Ku", skill = 9, min_skill = 250 },
  [137] = { id = 137, en = "Blade: Metsu", skill = 9, min_level = 75 },
  [138] = { id = 138, en = "Blade: Kamu", skill = 9, min_level = 75 },
  [139] = { id = 139, en = "Blade: Yu", skill = 9, min_skill = 290 },
  [140] = { id = 140, en = "Blade: Hi", skill = 9, min_level = 85 },
  [141] = { id = 141, en = "Blade: Shun", skill = 9, min_skill = 357, min_level = 96 },
  [142] = { id = 142, en = "Zesho Meppo", skill = 9, min_level = 99 },

  -- Great Katana
  [144] = { id = 144, en = "Tachi: Enpi", skill = 10, min_skill = 5 },
  [145] = { id = 145, en = "Tachi: Hobaku", skill = 10, min_skill = 30 },
  [146] = { id = 146, en = "Tachi: Goten", skill = 10, min_skill = 70 },
  [147] = { id = 147, en = "Tachi: Kagero", skill = 10, min_skill = 100 },
  [148] = { id = 148, en = "Tachi: Jinpu", skill = 10, min_skill = 150 },
  [149] = { id = 149, en = "Tachi: Koki", skill = 10, min_skill = 175 },
  [150] = { id = 150, en = "Tachi: Yukikaze", skill = 10, min_skill = 200 },
  [151] = { id = 151, en = "Tachi: Gekko", skill = 10, min_skill = 225 },
  [152] = { id = 152, en = "Tachi: Kasha", skill = 10, min_skill = 250 },
  [153] = { id = 153, en = "Tachi: Kaiten", skill = 10, min_level = 75 },
  [154] = { id = 154, en = "Tachi: Rana", skill = 10, min_level = 75 },
  [155] = { id = 155, en = "Tachi: Ageha", skill = 10, min_skill = 300 },
  [156] = { id = 156, en = "Tachi: Fudo", skill = 10, min_level = 85 },
  [157] = { id = 157, en = "Tachi: Shoha", skill = 10, min_skill = 357, min_level = 96 },
  [159] = { id = 159, en = "Tachi: Mumei", skill = 10, min_level = 99 },

  -- Club
  [160] = { id = 160, en = "Shining Strike", skill = 11, min_skill = 5 },
  [161] = { id = 161, en = "Seraph Strike", skill = 11, min_skill = 40 },
  [162] = { id = 162, en = "Brainshaker", skill = 11, min_skill = 70 },
  [163] = { id = 163, en = "Starlight", skill = 11, min_skill = 100 },
  [164] = { id = 164, en = "Moonlight", skill = 11, min_skill = 125 },
  [165] = { id = 165, en = "Skullbreaker", skill = 11, min_skill = 150 },
  [166] = { id = 166, en = "True Strike", skill = 11, min_skill = 175 },
  [167] = { id = 167, en = "Judgment", skill = 11, min_skill = 200 },
  [168] = { id = 168, en = "Hexa Strike", skill = 11, min_skill = 220 },
  [169] = { id = 169, en = "Black Halo", skill = 11, min_skill = 230 },
  [170] = { id = 170, en = "Randgrith", skill = 11, min_level = 75 },
  [171] = { id = 171, en = "Mystic Boon", skill = 11, min_level = 75 },
  [172] = { id = 172, en = "Flash Nova", skill = 11, min_skill = 290 },
  [173] = { id = 173, en = "Dagan", skill = 11, min_level = 85 },
  [174] = { id = 174, en = "Realmrazer", skill = 11, min_skill = 357, min_level = 96 },
  [175] = { id = 175, en = "Exudation", skill = 11, min_level = 99 },

  -- Staff
  [176] = { id = 176, en = "Heavy Swing", skill = 12, min_skill = 5 },
  [177] = { id = 177, en = "Rock Crusher", skill = 12, min_skill = 40 },
  [178] = { id = 178, en = "Earth Crusher", skill = 12, min_skill = 70 },
  [179] = { id = 179, en = "Starburst", skill = 12, min_skill = 100 },
  [180] = { id = 180, en = "Sunburst", skill = 12, min_skill = 150 },
  [181] = { id = 181, en = "Shell Crusher", skill = 12, min_skill = 175 },
  [182] = { id = 182, en = "Full Swing", skill = 12, min_skill = 200 },
  [183] = { id = 183, en = "Spirit Taker", skill = 12, min_skill = 215 },
  [184] = { id = 184, en = "Retribution", skill = 12, min_skill = 230 },
  [185] = { id = 185, en = "Gate of Tartarus", skill = 12, min_level = 75 },
  [186] = { id = 186, en = "Vidohunir", skill = 12, min_level = 75 },
  [187] = { id = 187, en = "Garland of Bliss", skill = 12, min_level = 75 },
  [188] = { id = 188, en = "Omniscience", skill = 12, min_level = 75 },
  [189] = { id = 189, en = "Cataclysm", skill = 12, min_skill = 290 },
  [190] = { id = 190, en = "Myrkr", skill = 12, min_level = 85 },
  [191] = { id = 191, en = "Shattersoul", skill = 12, min_skill = 357, min_level = 96 },

  -- Archery
  [192] = { id = 192, en = "Flaming Arrow", skill = 25, min_skill = 5 },
  [193] = { id = 193, en = "Piercing Arrow", skill = 25, min_skill = 40 },
  [194] = { id = 194, en = "Dulling Arrow", skill = 25, min_skill = 80 },
  [196] = { id = 196, en = "Sidewinder", skill = 25, min_skill = 175 },
  [197] = { id = 197, en = "Blast Arrow", skill = 25, min_skill = 200 },
  [198] = { id = 198, en = "Arching Arrow", skill = 25, min_skill = 225 },
  [199] = { id = 199, en = "Empyreal Arrow", skill = 25, min_skill = 250 },
  [200] = { id = 200, en = "Namas Arrow", skill = 25, min_level = 75 },
  [201] = { id = 201, en = "Refulgent Arrow", skill = 25, min_skill = 290 },
  [202] = { id = 202, en = "Jishnu's Radiance", skill = 25, min_level = 85 },
  [203] = { id = 203, en = "Apex Arrow", skill = 25, min_skill = 357, min_level = 96 },
  [204] = { id = 204, en = "Sarv", skill = 25, min_level = 99 },

  -- Marksmanship
  [208] = { id = 208, en = "Hot Shot", skill = 26, min_skill = 5 },
  [209] = { id = 209, en = "Split Shot", skill = 26, min_skill = 40 },
  [210] = { id = 210, en = "Sniper Shot", skill = 26, min_skill = 80 },
  [212] = { id = 212, en = "Slug Shot", skill = 26, min_skill = 175 },
  [213] = { id = 213, en = "Blast Shot", skill = 26, min_skill = 200 },
  [214] = { id = 214, en = "Heavy Shot", skill = 26, min_skill = 225 },
  [215] = { id = 215, en = "Detonator", skill = 26, min_skill = 250 },
  [216] = { id = 216, en = "Coronach", skill = 26, min_level = 75 },
  [217] = { id = 217, en = "Trueflight", skill = 26, min_level = 75 },
  [218] = { id = 218, en = "Leaden Salute", skill = 26, min_level = 75 },
  [219] = { id = 219, en = "Numbing Shot", skill = 26, min_skill = 290 },
  [220] = { id = 220, en = "Wildfire", skill = 26, min_level = 85 },
  [221] = { id = 221, en = "Last Stand", skill = 26, min_skill = 357, min_level = 96 },
  [222] = { id = 222, en = "Terminus", skill = 26, min_level = 99 },
}
