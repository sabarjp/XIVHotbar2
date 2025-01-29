-- Load and initialize the include file.
xivhotbar_keybinds_job['Base'] = {

  -- Hotbar #1 Primary JAs
  { 'battle 1 1',  'ja',     'Fight',                                                                        't',     'Fight' },
  { 'battle 1 2',  'ja',     'Heel',                                                                         'me',    'Heel' },
  { 'battle 1 3',  'ja',     'Stay',                                                                         'me',    'Stay' },
  { 'battle 1 4',  'ja',     'Sic',                                                                          'me',    'Sic' },
  { 'battle 1 4',  'bstpet', '1',                                                                            'me',    'Pet 1' },
  { 'battle 1 5',  'bstpet', '2',                                                                            'me',    'Pet 2' },
  { 'battle 1 6',  'bstpet', '3',                                                                            'me',    'Pet 3' },
  { 'battle 1 7',  'bstpet', '4',                                                                            'me',    'Pet 4' },
  { 'battle 1 8',  'bstpet', '5',                                                                            'me',    'Pet 5' },
  { 'battle 1 9',  'bstpet', '6',                                                                            'me',    'Pet 6' },

  { 'battle 1 10', 'ja',     'Feral Howl',                                                                   't',     'Howl' },
  { 'battle 1 11', 'ja',     'Killer Instinct',                                                              'me',    'Killer' },
  { 'battle 1 12', 'ja',     'Unleash',                                                                      'me',    'Unleash' },

  -- Hotbar #2 weapon skills


  -- Hotbar #3  Pet Specific
  { 'battle 3 1',  'ja',     'Call Beast',                                                                   'me',    'CallBeast' },
  { 'battle 3 2',  'ja',     'Bestial Loyalty',                                                              'me',    'Loyalty',  'ffxiv/blu/toad_oil' },
  { 'battle 3 3',  'ja',     'Spur',                                                                         'me',    'Spur' },
  { 'battle 3 4',  'ja',     'Snarl',                                                                        'me',    'Snarl' },
  { 'battle 3 5',  'ja',     'Reward',                                                                       'pet',   'Reward' },
  { 'battle 3 6',  'ja',     'Run Wild',                                                                     'me',    'R.Wild' },
  { 'battle 3 9',  'ja',     'Charm',                                                                        'stnpc', 'Charm' },
  { 'battle 3 10', 'ja',     'Gauge',                                                                        't',     'Gauge' },
  { 'battle 3 11', 'ja',     'Tame',                                                                         't',     'Tame' },

  { 'battle 3 12', 'ja',     'Familiar',                                                                     'me',    'Familiar', '2HR' },

  -- Hotbar #4  Mostly Subs
  { 'battle 4 11', 'ja',     'Leave',                                                                        'me',    'Leave' },


  -- Hotbar #5 Pet Foods
  { 'battle 5 1',  'macro',  'input /equip ammo "Pet Food Alpha";wait 1;input /ja "Reward" <pet>',           '',      'Alpha',    'ffxiv/blu/pom_cure' },
  { 'battle 5 2',  'macro',  'input /equip ammo "Pet Food Beta";wait 1;input /ja "Reward" <pet>',            '',      'Beta',     'ffxiv/blu/pom_cure' },
  { 'battle 5 3',  'macro',  'input /equip ammo "Pet Food Gamma";wait 1;input /ja "Reward" <pet>',           '',      'Gamma',    'ffxiv/blu/pom_cure' },
  { 'battle 5 4',  'macro',  'input /equip ammo "Pet Food Delta";wait 1;input /ja "Reward" <pet>',           '',      'Delta',    'ffxiv/blu/pom_cure' },
  { 'battle 5 5',  'macro',  'input /equip ammo "Pet Food Epsilon";wait 1;input /ja "Reward" <pet>',         '',      'Epsilon',  'ffxiv/blu/pom_cure' },
  { 'battle 5 6',  'macro',  'input /equip ammo "Pet Food Zeta";wait 1;input /ja "Reward" <pet>',            '',      'Zeta',     'ffxiv/blu/pom_cure' },
  { 'battle 5 7',  'macro',  'input /equip ammo "Pet Food Eta";wait 1;input /ja "Reward" <pet>',             '',      'Eta',      'ffxiv/blu/pom_cure' },
  { 'battle 5 8',  'macro',  'input /equip ammo "Pet Food Theta";wait 1;input /ja "Reward" <pet>',           '',      'Theta',    'ffxiv/blu/pom_cure' },
  { 'battle 5 9',  'macro',  'input /equip ammo "Pet Poultice";wait 1;input /ja "Reward" <pet>',             '',      'Poultice', 'ffxiv/blu/pom_cure' },
  --{'battle 5 10', 'macro', 'input /equip ammo "Pet Food XYZ";input /ja "Reward" <pet>', '', ''},
  --{'battle 5 11', 'macro', 'input /equip ammo "Pet Food XYZ";input /ja "Reward" <pet>', '', ''},
  --{'battle 5 12', 'macro', 'input /equip ammo "Pet Food XYZ";input /ja "Reward" <pet>', '', ''},

  -- Hotbar #6 Jug Pets
  -- Leveling Jugs
  -- {'battle 6 1', 'macro', 'input /equip ammo "Carrot Broth";wait 1;input /ja "Bestial Loyalty" <me>', '', 'Hare', 'ffxiv/blu/whistle'},
  -- {'battle 6 2', 'macro', 'input /equip ammo "F. Carrot Broth";wait 1;input /ja "Bestial Loyalty" <me>', '', 'Steffi', 'ffxiv/blu/whistle'},
  -- {'battle 6 3', 'macro', 'input /equip ammo "Fish Oil Broth";wait 1;input /ja "Bestial Loyalty" <me>', '', 'Carrie', 'ffxiv/blu/whistle'},
  -- {'battle 6 4', 'macro', 'input /equip ammo "Warm Meat Broth";wait 1;input /ja "Bestial Loyalty" <me>', '', 'Siravarde', 'ffxiv/blu/whistle'},
  -- {'battle 6 5', 'macro', 'input /equip ammo "L. Carrot Broth";wait 1;input /ja "Bestial Loyalty" <me>', '', 'Lulush', 'ffxiv/blu/whistle'},

  -- 99+ Jugs
  -- Fluffy Bredo, Mag Def Down
  { 'battle 6 1',  'macro',  'input /equip ammo "Poisonous Broth";wait 1;input /ja "Bestial Loyalty" <me>',  '',      'Bredo',    'ffxiv/blu/whistle' },
  -- Swooping Zhivago, general all-arounder
  { 'battle 6 2',  'macro',  'input /equip ammo "Windy Greens";wait 1;input /ja "Bestial Loyalty" <me>',     '',      'Zhivago',  'ffxiv/blu/whistle' },
  -- Generous Arthur, general tank, massive atk/def down
  { 'battle 6 3',  'macro',  'input /equip ammo "Dire Broth";wait 1;input /ja "Bestial Loyalty" <me>',       '',      'Arthur',   'ffxiv/blu/whistle' },
  -- Energized Sefina, aoe eva down, def down
  { 'battle 6 4',  'macro',  'input /equip ammo "Gassy Sap";wait 1;input /ja "Bestial Loyalty" <me>',        '',      'Sefina',   'ffxiv/blu/whistle' },
  -- Daring Roland, treasure hunter, dispel, terror
  { 'battle 6 5',  'macro',  'input /equip ammo "Feculent Broth";wait 1;input /ja "Bestial Loyalty" <me>',   '',      'Roland',   'ffxiv/blu/whistle' },
  -- Jovial Edwin, pld tank
  { 'battle 6 6',  'macro',  'input /equip ammo "Pungent Broth";wait 1;input /ja "Bestial Loyalty" <me>',    '',      'Edwin',    'ffxiv/blu/whistle' },
  -- Rhyming Shizuna, rage / berserk
  { 'battle 6 7',  'macro',  'input /equip ammo "Lyrical Broth";wait 1;input /ja "Bestial Loyalty" <me>',    '',      'Shizuna',  'ffxiv/blu/whistle' },
  -- Vivacious Gaston, cleave, debuff, atk buff
  { 'battle 6 8',  'macro',  'input /equip ammo "Spumante Broth";wait 1;input /ja "Bestial Loyalty" <me>',   '',      'Gaston',   'ffxiv/blu/whistle' },
  -- Vivacious Vickie, monk, def down, haste/def/counter/guard boost
  { 'battle 6 9',  'macro',  'input /equip ammo "Tant. Broth";wait 1;input /ja "Bestial Loyalty" <me>',      '',      'Vickie',   'ffxiv/blu/whistle' },
  -- Bouncing Bertha, aoe
  { 'battle 6 10', 'macro',  'input /equip ammo "Bubbly Broth";wait 1;input /ja "Bestial Loyalty" <me>',     '',      'Bertha',   'ffxiv/blu/whistle' },
  -- Sultry Patrice, aoe tank
  { 'battle 6 11', 'macro',  'input /equip ammo "Putrescent Broth";wait 1;input /ja "Bestial Loyalty" <me>', '',      'Patrice',  'ffxiv/blu/whistle' },
  -- Fatso Fargann, atk down, tp drain
  { 'battle 6 12', 'macro',  'input /equip ammo "C. Plasma Broth";wait 1;input /ja "Bestial Loyalty" <me>',  '',      'Fargann',  'ffxiv/blu/whistle' },
}

-- SUBJOBS
xivhotbar_keybinds_job['WHM'] = {
  -- Some spells moved to General example instead:
  -- Teleports / Recalls / Raises / Re-Raises
  -- Protect(ra) / Shell(ra)
  -- Aquaveil
  -- Sneak / Invisible / Deodorize
  -- Job Abilities
  { 'battle 4 9',  'ja', 'Divine Seal', 'me',    'Divine',   'ffxiv/whm/divine_benison' },
  -- Enfeeblement
  -- {'battle 3 2', 'ma', 'Paralyze', 'stnpc', 'Para','ffxiv/other/paralyze'},
  -- {'battle 3 3', 'ma', 'Slow', 'stnpc', 'Slow','ffxiv/other/slow'},
  -- {'battle 3 4', 'ma', 'Silence', 'stnpc', 'Silence','ffxiv/role/interject'},
  -- {'battle 3 1', 'ma', 'Dia II', 'stnpc', 'Dia II', 'Dia','ffxiv/whm/dia'},
  -- {'battle 3 1', 'ma', 'Dia', 'stnpc', 'Dia','ffxiv/whm/dia'},
  -- {'battle 3 9', 'ma', 'Repose', 'stnpc', 'Repose','ffxiv/role/repose'},
  { 'battle 4 2',  'ma', 'Flash',       'stnpc', 'Flash',    'ffxiv/pld/flash' },
  -- Barspells
  -- {'battle 3 1', 'ma', 'Barsleepra', 'me', 'Sleepra', ''},
  -- {'battle 3 2', 'ma', 'Barpoisonra', 'me', 'Poisonra', ''},
  -- {'battle 3 3', 'ma', 'Barparalyzra', 'me', 'Paralyzra', ''},
  -- {'battle 3 1', 'ma', 'Barstonra', 'me', 'Stonra', 'Barstonra'},
  -- {'battle 3 2', 'ma', 'Barwatera', 'me', 'Watera', 'Barwatera'},
  -- {'battle 3 3', 'ma', 'Baraera', 'me', 'Aera', 'Baraera'},
  -- {'battle 3 4', 'ma', 'Barfira', 'me', 'Fira', 'Barfira'},
  -- {'battle 3 4', 'ma', 'Barblindra', 'me', 'Blindra', ''},
  -- {'battle 3 5', 'ma', 'Barblizzara', 'me', 'Blizzara', 'Barblizzara'},
  -- {'battle 3 5', 'ma', 'Barsilencera', 'me', 'Silencera'},
  -- {'battle 3 6', 'ma', 'Barthundra', 'me', 'Thundra', 'Barthundra'},
  -- {'battle 3 6', 'ma', 'Barvira', 'me', 'Vira'},
  -- {'battle 3 9', 'ma', 'Barpetra', 'me', 'Petra'},
  -- Atk
  -- {'battle 3 9', 'ma', 'Holy', 'stnpc', 'Holy','ffxiv/whm/holy'}, -- mastery
  -- Regen
  { 'battle 4 11', 'ma', 'Regen',       'stpc',  'Regen',    'ffxiv/whm/regen' },
  { 'battle 4 11', 'ma', 'Regen II',    'stpc',  'Regen2',   'ffxiv/whm/regen' },
  -- Cure
  { 'battle 4 1',  'ma', 'Cure',        'stpc',  'Cure',     'ffxiv/whm/cure' },
  { 'battle 4 1',  'ma', 'Cure II',     'stpc',  'Cure2',    'ffxiv/whm/cure_II' },
  { 'battle 4 1',  'ma', 'Cure III',    'stpc',  'Cure3',    'ffxiv/whm/cure_III' },
  { 'battle 4 1',  'ma', 'Cure IV',     'stpc',  'Cure4',    'ffxiv/sch/physick' },
  -- Cura
  -- {'battle 1 10', 'ma', 'Cura', 'me', 'Cura','ffxiv/whm/assize'},
  -- Curaga
  { 'battle 4 10', 'ma', 'Curaga',      'stpc',  'Curaga',   'ffxiv/whm/medica' },
  { 'battle 4 10', 'ma', 'Curaga II',   'stpc',  'Curaga2',  'ffxiv/whm/medica_II' },
  { 'battle 4 10', 'ma', 'Curaga III',  'stpc',  'Curaga3',  'ffxiv/whm/dia',           'ffxiv/whm/medica_III' }, -- mastery
  -- Supportive
  { 'battle 4 3',  'ma', 'Poisona',     'stpc',  'Poisona',  'ffxiv/ast/003114' },
  { 'battle 4 4',  'ma', 'Paralyna',    'stpc',  'Paralyna', 'ffxiv/ast/003113' },
  { 'battle 4 5',  'ma', 'Blindna',     'stpc',  'Blindna',  'ffxiv/ast/003147' },
  -- {'battle 3 4', 'ma', 'Silena', 'stpc', 'Silena','ffxiv/ast/003111'},
  -- {'battle 3 6', 'ma', 'Blink', 'me', 'Blink','ffxiv/whm/blink'},
  -- {'battle 3 7', 'ma', 'Stoneskin', 'me', 'StnSkin','ffxiv/whm/stoneskin'},
  { 'battle 4 6',  'ma', 'Cursna',      'stpc',  'Cursna',   'ffxiv/ast/003146' },
  { 'battle 4 7',  'ma', 'Erase',       'stpc',  'Erase',    'ffxiv/role/erase' },
  -- {'battle 3 6', 'ma', 'Viruna', 'stpc', 'Viruna','ffxiv/ast/003112'},
  -- {'battle 3 4', 'ma', 'Stona', 'stpc', 'Stona','ffxiv/ast/003115'},
  { 'battle 4 12', 'ma', 'Haste',       'stpc',  'Haste',    'ffxiv/sge/krasis' },
  -- {'battle 3 9', 'ma', 'Auspice', 'me', 'Ausp','ffxiv/whm/temperance'},  -- mastery
}

xivhotbar_keybinds_job['RDM'] = {
  { 'battle 4 1', 'ma', 'Cure',       'stpc', 'Cure 1' },
  { 'battle 4 1', 'ma', 'Cure II',    'stpc', 'Cure 2' },
  { 'battle 4 1', 'ma', 'Cure III',   'stpc', 'Cure 3' },
  { 'battle 4 1', 'ma', 'Cure IV',    'stpc', 'Cure 4' },
  { 'battle 4 2', 'ma', 'Refresh',    'stpc', 'Refresh' },
  { 'battle 4 3', 'ma', 'Sneak',      'stpc', 'Sneak' },
  { 'battle 4 4', 'ma', 'Invisible',  'stpc', 'Invis' },
  { 'battle 4 5', 'ma', 'Dispel',     't',    'Dispel' },
  { 'battle 4 6', 'ma', 'Phalanx',    'me',   'Phalanx' },
  { 'battle 4 7', 'ja', 'Haste',      'stpc', 'Haste' },
  { 'battle 4 8', 'ma', 'Ice Spikes', 'me',   'I.Spikes' },
  { 'battle 4 9', 'ma', 'Dia',        't',    'Dia2' },
  --{ 'battle 4 9', 'ma', 'Dia II',     't',    'Dia2' },
}

xivhotbar_keybinds_job['NIN'] = {
  -- Shadows
  { 'battle 4 1',  'ma', 'Utsusemi: Ichi', 'me',    'Utsu:Ichi', 'ffxiv/nin/dream_within_a_dream' },
  { 'battle 4 2',  'ma', 'Utsusemi: Ni',   'me',    'Utsu:Ni',   'ffxiv/nin/phantom_kamaitachi' },
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
  { 'battle 4 3',  'ma', 'Kurayami: Ichi', 'stnpc', 'Kura',      'ffxiv/blu/glower' },      -- blind
  { 'battle 4 4',  'ma', 'Hojo: Ichi',     't',     'Hojo',      'ffxiv/ast/redraw' },      -- slow
  { 'battle 4 4',  'ma', 'Hojo: Ni',       't',     'Hojo',      'ffxiv/ast/redraw' },      -- slow
  { 'battle 4 5',  'ma', 'Dokumori: Ichi', 'stnpc', 'Doku',      'ffxiv/blu/exuviation' },  -- poison
  { 'battle 4 6',  'ma', 'Jubaku: Ichi',   'stnpc', 'Jubaku',    'ffxiv/blu/faze' },        -- paralyze
  -- Stances
  { 'battle 4 11', 'ja', 'Yonin',          'me',    'Yonin',     'ffxiv/nin/shade_shift' }, -- tanky
  { 'battle 4 12', 'ja', 'Innin',          'me',    'Innin',     'ffxiv/nin/assassinate' }, -- dps
}

xivhotbar_keybinds_job['WAR'] = {
  { 'battle 4 1', 'ja', 'Provoke',   'stnpc', 'Voke',   'ffxiv/war/defiance' },
  { 'battle 4 2', 'ja', 'Berserk',   'me',    'Brsrk',  'ffxiv/war/berserk' },
  { 'battle 4 3', 'ja', 'Defender',  'me',    'Dfnd',   'ffxiv/war/shake_it_off' },
  { 'battle 4 4', 'ja', 'Warcry',    'me',    'Wrcry',  'ffxiv/war/inner_beast' },
  { 'battle 4 5', 'ja', 'Aggressor', 'me',    'Aggrsr', 'ffxiv/war/onslaught' },
}

xivhotbar_keybinds_job['DRG'] = {
  { 'battle 4 1', 'ja', 'Jump',           't',  'Jump',    'ffxiv/drg/jump' },
  { 'battle 4 2', 'ja', 'High Jump',      't',  'HiJump',  'ffxiv/drg/high_jump' },
  { 'battle 4 3', 'ja', 'Ancient Circle', 'me', 'Ancient', 'ffxiv/rpr/arcane_crest' },
  { 'battle 4 4', 'ja', 'Super Jump',     't',  'SuJump',  'ffxiv/drg/elusive_jump' }, -- mastery
}

xivhotbar_keybinds_job['DNC'] = {
  -- Sambas
  { 'battle 4 10', 'ja', 'Haste Samba',       'me',    'Haste',    'ffxiv/dnc/pirouette' },
  { 'battle 4 11', 'ja', 'Drain Samba',       'me',    'Drain',    'ffxiv/dnc/emboite' },
  { 'battle 4 11', 'ja', 'Drain Samba II',    'me',    'Drain2',   'ffxiv/dnc/emboite' },
  -- {'battle 3 3', 'ja', 'Aspir Samba', 'me', 'Aspir','ffxiv/dnc/jete'},
  -- Waltzes
  { 'battle 4 1',  'ja', 'Curing Waltz',      'stpc',  'CurW',     'ffxiv/dnc/curing_waltz' },
  { 'battle 4 1',  'ja', 'Curing Waltz II',   'stpc',  'CurW2',    'ffxiv/dnc/curing_waltz' },
  { 'battle 4 1',  'ja', 'Curing Waltz III',  'stpc',  'CurW3',    'ffxiv/dnc/curing_waltz' },
  { 'battle 4 2',  'ja', 'Divine Waltz',      'stpc',  'Divine',   'ffxiv/dnc/improvised_finish' },
  { 'battle 4 3',  'ja', 'Healing Waltz',     'stpc',  'Healing',  'ffxiv/dnc/shield_samba' },
  { 'battle 4 12', 'ja', 'Contradance',       'me',    'Contra',   'ffxiv/dnc/tillana' }, -- mastery
  -- Steps
  { 'battle 4 4',  'ja', 'Quickstep',         't',     'Quick',    'ffxiv/dnc/en_avant' },
  { 'battle 4 5',  'ja', 'Box Step',          't',     'Box',      'ffxiv/dnc/bladeshower' },
  -- {'battle 3 9', 'ja', 'Stutter Step', 'stnpc', 'Stutter','ffxiv/dnc/fountainfall'},
  -- Flourishes
  { 'battle 4 6',  'ja', 'Animated Flourish', 'stnpc', 'Voke',     'ffxiv/dnc/closed_position' },
  { 'battle 4 7',  'ja', 'Violent Flourish',  'stnpc', 'Stun',     'ffxiv/dnc/starfall_dance' },
  { 'battle 4 8',  'ja', 'Reverse Flourish',  'me',    'Reverse',  'ffxiv/dnc/reverse_cascade' },
  { 'battle 4 9',  'ja', 'Building Flourish', 'me',    'Building', 'ffxiv/dnc/flourish' },
  -- Jigs
  -- {'battle 3 8', 'ja', 'Spectral Jig', 'me', 'Spectral','ffxiv/dnc/fan_dance_IV'},
  -- {'battle 3 8', 'ja', 'Chocobo Jig', 'me', 'Chocobo','ffxiv/dnc/entrechat'}, -- mastery
}

xivhotbar_keybinds_job['SAM'] = {
  { 'battle 4 1', 'ja', 'Hasso',          'me', 'Hasso',   'ffxiv/sam/ikishoten' },
  { 'battle 4 2', 'ja', 'Meditate',       'me', 'Mdtate',  'ffxiv/sam/meditate' },
  { 'battle 4 3', 'ja', 'Sekkanoki',      'me', 'Sekka',   'ffxiv/sam/higanbana' },
  { 'battle 4 4', 'ja', 'Seigan',         'me', 'Seigan',  'ffxiv/sam/tengentsu' },
  { 'battle 4 5', 'ja', 'Third Eye',      'me', '3rd Eye', 'ffxiv/sam/third_eye' },
  { 'battle 4 6', 'ja', 'Warding Circle', 'me', 'Warding', 'ffxiv/gnb/demon_slaughter' },
}

xivhotbar_keybinds_job['COR'] = {
  { 'battle 4 1',  'ja', "Double-Up",      'me', 'Dbl Up', 'ffxiv/ast/play' },
  { 'battle 4 2',  'ja', "Corsair's Roll", 'me', 'COR',    'classes/ast' }, -- exp
  { 'battle 4 3',  'ja', "Ninja Roll",     'me', 'NIN',    'classes/nin' }, -- eva
  { 'battle 4 4',  'ja', "Hunter's Roll",  'me', 'HUN',    'classes/acr' }, -- acc & ra acc
  { 'battle 4 5',  'ja', "Chaos Roll",     'me', 'CHS',    'classes/rpr' }, -- phys atk
  { 'battle 4 7',  'ja', "Magus's Roll",   'me', 'MGS',    'classes/whm' }, -- mag def
  -- {'battle 3 7', 'ja', "Healer's Roll", 'me', 'HLR','classes/hlr'}, -- cure potency
  { 'battle 4 11', 'ja', "Drachen Roll",   'me', 'DRC',    'classes/lnc' }, -- pet & ra acc
  -- {'battle 3 9', 'ja', "Choral Roll", 'me', 'CRL','classes/brd'}, -- spell interrupt
  -- {'battle 3 10', 'ja', "Monk's Roll", 'me', 'MNK','classes/mnk'}, -- subtle blow
  { 'battle 4 10', 'ja', "Beast Roll",     'me', 'BST',    'classes/war' }, -- pet atk
  { 'battle 4 3',  'ja', "Samurai Roll",   'me', 'SAM',    'classes/sam' }, -- store TP
  -- {'battle 3 3', 'ja', "Quick Draw", 'me', 'QkDraw','classes/mch'},
  { 'battle 4 9',  'ja', "Evoker's Roll",  'me', 'EVO',    'classes/smn' }, -- MP regen
  { 'battle 4 6',  'ja', "Rogue's Roll",   'me', 'RGE',    'classes/rge' }, -- crit
  -- {'battle 3 4', 'ja', "Warlock's Roll", 'me', 'WLK','classes/thm'}, -- magic acc
  { 'battle 4 2',  'ja', "Fighter's Roll", 'me', 'FTR',    'classes/mar' }, -- double atk
  -- Mastery only
  -- {'battle 3 6', 'ja', "Puppet Roll", 'me', 'PUP','classes/pug'}, -- pet matk & pet macc
  { 'battle 4 8',  'ja', "Gallant's Roll", 'me', 'GAL',    'classes/pld' }, -- def
  -- {'battle 3 8', 'ja', "Wizard's Roll", 'me', 'WIZ','classes/blm'}, -- matk
  { 'battle 4 12', 'ja', "Random Deal",    'me', 'Randm',  'ffxiv/ast/draw' },
}

xivhotbar_keybinds_job['THF'] = {
  { 'battle 4 3', 'ja', 'Steal',        't',  'Steal', 'ffxiv/nin/dream_within_a_dream' },
  { 'battle 4 1', 'ja', 'Sneak Attack', 'me', 'SAtk',  'ffxiv/nin/spinning_edge' },
  { 'battle 4 6', 'ja', 'Flee',         'me', 'Flee',  'ffxiv/nin/role/peloton' },
  { 'battle 4 2', 'ja', 'Trick Attack', 'me', 'TAtk',  'ffxiv/nin/trick_attack' },
  { 'battle 4 4', 'ja', 'Mug',          't',  'Mug',   'ffxiv/nin/mug' },
  { 'battle 4 5', 'ja', 'Hide',         'me', 'Hide',  'ffxiv/nin/hide' },
}

xivhotbar_keybinds_job['RUN'] = {
  { 'battle 4 1',  'ja', 'Vallation', 'me', 'Vall.' },
  { 'battle 4 2',  'ja', 'Pflug',     'me', 'Pflug' },
  { 'battle 4 3',  'ja', 'Ignis',     'me', 'Fire' },
  { 'battle 4 4',  'ja', 'Gelus',     'me', 'Ice' },
  { 'battle 4 5',  'ja', 'Flabra',    'me', 'Wind' },
  { 'battle 4 6',  'ja', 'Tellus',    'me', 'Earth' },
  { 'battle 4 7',  'ja', 'Sulpor',    'me', 'Thundr' },
  { 'battle 4 8',  'ja', 'Unda',      'me', 'Water' },
  { 'battle 4 9',  'ja', 'Lux',       'me', 'Light' },
  { 'battle 4 10', 'ja', 'Tenebrae',  'me', 'Dark' },
}

-- WEAPONSKILL SETS
xivhotbar_keybinds_job['Axe'] = {
  { 'battle 2 1',  'ws', 'Avalanche Axe', 't', 'Avlnche' },
  { 'battle 2 1',  'ws', 'Ruinator',      't', 'Ruinator' }, -- war drk bst rng run  -- Merit

  { 'battle 2 2',  'ws', 'Spinning Axe',  't', 'Spinning' }, -- war drk run bst
  { 'battle 2 2',  'ws', 'Primal Rend',   't', 'Primal' },   -- bst   -- Mythic

  { 'battle 2 3',  'ws', 'Calamity',      't', 'Calamity' }, -- war bst

  { 'battle 2 4',  'ws', 'Raging Axe',    't', 'Raging' },
  { 'battle 2 4',  'ws', 'Blitz',         't', 'Blitz' }, -- bst   -- Prime

  { 'battle 2 5',  'ws', 'Rampage',       't', 'Rampage' },

  { 'battle 2 6',  'ws', 'Decimation',    't', 'Decimate' }, -- war drk bst rng run

  { 'battle 2 7',  'ws', 'Gale Axe',      't', 'Gale' },
  { 'battle 2 7',  'ws', 'Cloudsplitter', 't', 'Cloudsplt' }, -- war bst  -- Empy

  { 'battle 2 8',  'ws', 'Mistral Axe',   't', 'Mistral' },   -- war bst

  { 'battle 2 9',  'ws', 'Bora Axe',      't', 'Bora' },      -- war drk run bst

  { 'battle 2 10', 'ws', 'Smash Axe',     't', 'Smash' },

  -- Relic (only usable with specific weapon equips) #10
  { 'battle 2 11', 'ws', 'Onslaught',     't', 'Onslaught' }, -- bst relic

}

xivhotbar_keybinds_job['Scythe'] = {
  -- Heavy Hit
  { 'battle 2 1', 'ws', 'Slice',            't', 'Slice' },
  { 'battle 2 2', 'ws', 'Vorpal Scythe',    't', 'Vorpal' },
  { 'battle 2 3', 'ws', 'Spiral Hell',      't', 'Spiral' }, -- war drk bst
  -- Multi-Hit
  { 'battle 2 4', 'ws', 'Cross Reaper',     't', 'Cross' },
  -- Darkness
  { 'battle 2 5', 'ws', 'Dark Harvest',     't', 'DHvst' },
  -- Merit Point #8
  { 'battle 2 6', 'ws', 'Entropy',          't', 'Entropy' }, -- war drk bst
  -- Empyrean (Abyssea only)  #9
  { 'battle 2 7', 'ws', 'Quietus',          't', 'Quietus' },
  -- AoE Ws #11
  { 'battle 2 8', 'ws', 'Spinning Scythe',  't', 'Spinning' },
  -- Stun WS #12
  { 'battle 2 9', 'ws', 'Nightmare Scythe', 't', 'Nmare' },
}

return xivhotbar_keybinds_job
