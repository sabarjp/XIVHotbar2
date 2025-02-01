## Introduction
This forked project continues the work of Technyze, SirEdeonX, and Akirane. It mainly contains features/bug fixes for retail FF11.

# Features

## Improvements
Why use this fork over any other hotbar?

* Updated through 2025
* More complete examples
* Beastmaster pet ability support (autodetect jug pet skills, track charges)
* Robust Dancer support (shows usability of TP moves)
* Robust Scholar arts support (shows usability of addendum spells, better stance detection)
* Robust Beastmaster support (show usability of sic, support /bstpet)
* Robust Blue Mage support
* Ranged and Melee WS both work for ranged jobs
* Spells and abilities have the same priority now, listed from least priority to highest priority.
* Skillchain and magic burst highlights.
* Usable items with count.
* Auto item slots: automatically placing usable items into specified slots.
* Subtarget over-ride: if a sub-target is being done, pressing an action acts as if the enter key was pressed.

## Hide Unusable skills
Skills that cannot be used, such as from level syncing, level capping, a pet dying, etc, will not show up on the hot bar.

**Abilities:**
If an ability is added to a JOB.lua file it will not appear on the hotbar until the player has reached the required level to obtain the ability. In level capped situation if you lose access to the ability it will disappear from the hotbar.

**Weaponskills:**
If a weaponskill is added to a JOB.lua file it will not show up on the hotbar unless that weaponskill has been learned in-game. In level capped situations if you lose access to the weaponskill it will disappear from the hotbar.

## Dimmed Skills

**Spells**
Spells on cooldown or that you do not have enough MP to cast will be dimmed. In addition, spells that are only available from scholar and that do not have an addendum requirement met will be dimmed as well.

**Weaponskills**
Weapon skills will be dimmed until you have enough TP.

**Abilities**
Abilities on cooldown will be dimmed.

## Unlearned Spells:
Spells that are on the bar, but not known yet, are dimmed and have an icon to indicate they can be learned.

## Sharing Hotbar Slots:
Abilities that share a hotbar slot will auto-select the last usable ability. For example, if Stone II and Stone IV share the same hotbar slot, then Stone IV (if usable) will have priority to appear, then Stone II will appear instead, and so on.

This requires spells be ordered from lowest priority, to highest priority. As an example, magic sharing a slot should have Stone, then Stone II, and so on. Job abilities sharing a slot would work the same way, for example, Shining Strike then Seraph Strike below it.

This works seamlessly with the level syncing. 

## Spell Learning Notification
When a player has a spell setup on their hotbar, and are high enough level to use that spell, but have not learned that spell yet a small glowing scroll icon will appear in the top right corner of the spell. This disappears once learning that spell. If multiple spells are sharing the slot, and you are eligible to learn a shared (but not visible) spell, then an "upgrade arrow" icon will appear.

## Weaponswitching and Weaponskills:
Hotbar skills can be conditionally bound based on equipped weapon. Note that this MUST be enabled in the settings.xml, and this is OFF BY DEFAULT since it can behave with some bugs.

Example
```
-- only show if a weapon is equipped
xivhotbar_keybinds_job['Sword'] = {
  {'battle 1 1', 'ws', 'Fast Blade', 't', 'FastBlade'},
}
```

Note: Occasionally weapons and hotbar weaponskills might get out of sync. Easy fix for this is to unequip the weapon and reequip it.

Note: If playing Ranger, XIVHotbar2 with prioritize weapon changes to the range slot over main slot. This is a temporary solution to allow rangers to use weaponswitching with Marksmanship and Archery and not have their main hand weapons interfere. 

# Pet Jobs

## Summoner
A summon's abilities will only show up on the hotbar when the summon is successfully summoned. Additionally,  abilities will remove themself from the hotbar when the pet is released, dies or mp is insufficient. Also, pet commands: release, attack etc. do not appear on hotbar unless a summon is present.

* All Blood Pact: Ward abilities share a cooldown and All Blood Pact: Rage abilities share a cooldown on the hotbar.
* Pet commands do not show up on hotbar unless player has an active pet.
* If the hotbar slot uses `ja` to cast a pet ability, then it only show on the bar if its a usable skill.
* If the hotbar slot uses `pet` to cast a pet ability, then it will always show on the bar, regardless if its a usable skill.

Example:
```
-- only binds these slots if Carbuncle is out
xivhotbar_keybinds_job['Carbuncle'] = {
	-- uses ja, only appears on the bar if carbuncle knows the skill and you are the right level
	{'battle 1 2', 'ja',  'Healing Ruby II', 'stpc', 'Heal2', 'summons/carbuncle'},
	-- uses pet, always appears on the bar
	{'battle 1 2', 'pet',  'Healing Ruby II', 'me', 'Heal2', 'summons/carbuncle'},
}
```

NOTE: When reloading the hotbar, the game loses track of your summoned pet. When it engages an enemy or is re-summoned, it should re-detect.

## Beastmaster
A beastmaster's pet abilities will only show up on the hotbar when the pet is successfully called or charmed. Additionally, abilities will remove themself from the hotbar when the pet is released, dies, or lost through zoning. Also, pet commands: release, attack etc. do not appear on hotbar unless a pet is present.

* Pet commands do not show up on hotbar unless player has an active pet.
* If the hotbar slot uses `bstpet` to cast a pet ability, then it only show on the bar if its a usable skill. `bstpet` is a special macro action for beastmaster, and will automatically change the icon and tooltip to match whatever the beastmaster jug pet knows.
* If the hotbar slot uses `ja` to cast a pet ability, then it only show on the bar if its a usable skill.
* If the hotbar slot uses `pet` to cast a pet ability, then it will always show on the bar, regardless if its a usable skill.

Example:
```
-- always show these bindings
xivhotbar_keybinds_job['Base'] = {
	-- bstpet will automagically show the correct skills on the bar for different jug pets
	{'battle 1 1', 'bstpet', '1', 'me', 'Ability 1'},
	{'battle 1 2', 'bstpet', '2', 'me', 'Ability 2'},
	{'battle 1 3', 'bstpet', '3', 'me', 'Ability 3'},
	{'battle 1 4', 'bstpet', '4', 'me', 'Ability 4'},
	{'battle 1 5', 'bstpet', '5', 'me', 'Ability 5'},
	{'battle 1 6', 'bstpet', '6', 'me', 'Ability 6'},
	-- uses pet, always appears on the bar
	{'battle 1 7', 'pet',  'Foot Kick', 'me', 'Kick'},
}

-- only show these bindings for the "Carrot Broth" jug pet
xivhotbar_keybinds_job['HareFamiliar'] = {
	{'battle 1 1', 'ja', 'Wild Carrot', 'me', 'Carrot'},
}

-- only show these bindings if charming the monster named "Pugil"
xivhotbar_keybinds_job['Pugil'] = {
	{'battle 1 1', 'ja', 'Sic','me', 'Sic'},
}
```

NOTE: When reloading the add-on, or if your pet dies far from you, the game may lose track of your pet.
NOTE: Jug pet recast works off charges. Right now the code assumes a 30 second charge build time, making this dynamic is a future change.


# Getting Started
1. Download the addon from here. Put the addon in your Windower 4/addons folder and make sure the addons folder name is jsut 'XIVHotbar2'. Next, inside the 'data' folder within the 'XIVHotbar2' folder create a folder with your character(s) name.
   
2. Inside your 'name-of-character' folder create a general.lua and JOB.lua for each job you want to setup. Additionally, I have premade templates made for most jobs you can copy over to your character folder. The premade templates I have made are in the Data/Technyze folder. The RDM,WHM,THF,PLD are the more thorough jobs I have set up and should be the first ones to reference for any help. <br> 

The General.lua is the second page on the hotbar that is consistent across all jobs and it can be switched to by pressing the backslash key '\'. <br>
Highly recommend downloading notepad++ for editing these files. As you can keep all these .lua files open in tabs for each job pretty much indefinitely even through computer restarts, and thus you dont have to constantly browse to find and open them again. Easily alt-tabbing between your game and notepad++ to edit your actions on your hotbar is also a very nice.

```
Location: Windower 4/addons/xivhotbar2/data/<name-of-character>/general.lua
and
Location: Windower 4/addons/xivhotbar2/data/<name-of-character>/<job>.lua
``` 

3. Add the load command to your windower init.txt
```
Location: Windower 4/scripts/init.txt
```
```
Command: lua load xivhotbar2
```
4. Opening the game and logging into your character for the first time will generate a settings.xml (in xivhotbar2/data) based on the defaults.lua file (Do not edit the defaults.lua file). 
Only edit your settings through the settings.xml file. A list of available options to edit is detailed below in the "UI Changes" section. 
```
Location: Windower 4/addons/xivhotbar2/data/settings.xml
```
5. You can setup all your keybinds in the keybinds.lua file.
```
Location: Windower 4/addons/xivhotbar2/data/keybinds.lua
```
6. You can move your hotbars around in-game with the '//htb move' command. To save your new hotbar locations simply use the '//htb move' command again.
```
Command: //htb move
```
Note: When saving your hotbar positions with the '//htb move' command the new locations are saved in the settings.xml file at the bottom inside new xml tags 'Your-Character-Name' -> 'Hotbar' -> 'Offsets'.
I recommend after finalizing your hotbar posistions to copy them over to the offset tags inside the 'Global' tag to keep hotbar positions consistent between characters. The 'First' tag refers to the first hotbar. Other tags for the other hotbars will appear once they've been moved. Once you finalize your positions and transfer them to the offsets inside the global tags you can delete the 'Your-Character-Name' section entirely. This is assuming you want your hotbar to be in the same posistion and have the same settings for all characters all the time.

```
<your-character-name>										<Global>													
	<Hotbar>													<Hotbar>
		<Offsets>													<Offsets>
			<First>														<First>
				<OffsetX>740</OffsetX>   	Transfer Offsets 				<OffsetX>HERE</OffsetX>
				<OffsetY>530</OffsetY>   	---------------->				<OffsetY>HERE</OffsetY>
			</First>													</First>
		</Offsets>													</Offsets>
	</Hotbar>													</Hobtar>
</your-character-name>										</Global>
```

## Migrating from XIVHotbar

If you've used previous versions of XIVHotbar, simply download this version and transfer over your Data/Your-Character-Name folder. All your previous setup actions will load normally to their respective hotbars. However, prepare to setup hotbar locations and other various settings again.

# Understanding the JOB.lua and General.lua files

Setting up your desired actions on XIVHotbar2 follows the exact format as XIVHotbar. If you have not used XIVHotbar before I recommend reading the information below and looking at the premade templates in the XIVHotbar2/Data/Technyze folder. 

When loading the addon or switching main jobs, this addon will search for the JOB.lua that is consistent with your current main job in-game inside your 'Your-Character-Name' folder.

## Hotbar Action Format

```lua
xivhotbar_keybinds_job['Table Type'] = { 
	{'Slot Designation', 'Action Type', 'Action Name', 'Target Type', 'Action Title', 'Action Image'},
}
```
1. **Table Type:** 
   - 'Base': Base is the name designation for a table that is associated with your current main job. Actions associated with your main job should be inside this table. 
   - 'Root': Root is the name designation for a table that is associated with your general hotbar. Actions you want shared between all jobs should be inside this table with the environment set to 'field' for each action.
   - 'Job': If table name is a job abbreviation (WAR, WHM etc.) then this is a table designated for your sub job actions. Actions associated with your subjob should be inside this table.
   - 'Weapon Type': If table name is a weapon type then this table is designated for actions associated to your current main hand weapon equipped. Current supported weapon types names are: Hand-to-hand, Dagger, Sword, Great Sword, Axe, Great Axe, Scythe, Polearm, Katana, Great Katana, Club, Staff, Bow, Marksmanship. This is case-sensitive. Weaponswitching must be enabled in settings.xml.
   - 'Stances': Stances refer to various different modes that certain jobs can put themself in. Such as Scholar in Light-Arts mode versus Dark-Arts Mode or even for Summoner Carbuncle Mode, Ifrit Mode, etc. All summon names are supported but are case-sensitive. Other currently supported stances are Light-Arts and Dark-Arts for Scholar. 
2. **Slot Designation**: 'Environment Hotbar# Slot#' - All three values must be present inside quotation marks for every action.
	- Environment:[battle|b|field|f] - 'b' and 'f' can be used as shorthand. 'Battle' refers to the 'Main' hotbar bar and 'Field' refers to the 'General' hotbar.
	- Hotbar#:[1|2|3|4|5|6] 
	- Slot#[1|2|3|4|5|6|7|8|9|10|11|12]
3. **Action Type:** [ma|ja|ws|input|macro|bstpet|pet] - Note: Try to use 'ja' for pet commands/actions, as it will work with recast timers and such.S  
4. **Action Name:** Exact spelling of Spell/Ability/Weaponskill etc in-game. Not case-sensitive. Cannot be blank. 
5. **Target Type:** [me|t|st|stpc|stnpc|bt|pet] - Can be blank if action type is input/macro.
6. **Action Title:** The name you want displayed on the hotbar slot for this specific action. Can be blank.
7. **Action Image:** Can be blank/removed. If blank/removed action will display the default image if available in the images/icons folder. Otherwise specify the file name of the image in the images/icons/custom folder. 

##### Examples
See the examples folder for many examples of various hotbars.

# UI Changes 
A bunch more settings have been made available, as well as some existing settings being moved and some removed.

- <b>Costs:</b> Displays the MP cost of each action on each slot if it is a spell
- <b>Keys:</b> Displays the hotkey associated with each slot.
- <b>Recasts:</b> Displays the recast time for each action on each slot if action is on cooldown.
- <b>ActionName:</b> A display of each name that has been given to each action on each slot.
- <b>Environment:</b> A display of the current Environment (Page) the player is on ('Main','General'). Previously called: ('1','2')
- <b>Hotbar Numbers:</b> Displays a number next to each hotbar (1,2,3,4,5,6)
- <b>Inventory:</b> Displays current inventory and max inventory size (Changes color as the bag inventory get more full)
- <b>ActionDescription:</b> On mouse hover displays information about each action ('ma','ws','ja','pet'). 

You can currently change the following in the settings.xml file:<br>
**General -> HideHotbarNumbers:** Set to true/false to hide the numbers (1,2,3,4,5,6) next to each hotbar. <br>
**General -> HideEnvironment:** Set to true/false to hide the environment text. <br>
**General -> HideInventoryCount:** Set to true/false to hide inventory count <br>
**General -> EnableWeaponSwitching:** Set to true/false to enable weapon switching. <br>

**Hotbar ->** HideActionCost, HideActionName, HideEmptySlots, HideRecastText, ShowActionDescription<br>
**Hotbar -> Misc -> Disabled:** Opacity<br>
**Hotbar -> Misc -> Feedback:** Opacity, Speed<br>
**Hotbar -> Offsets -> First:** OffsetX, OffsetY, Vertical<br>
**Hotbar -> Offsets -> Second:** OffsetX, OffsetY, Vertical<br>
**Hotbar -> Offsets -> Third:** OffsetX, OffsetY, Vertical<br>
**Hotbar -> Offsets -> Fourth:** OffsetX, OffsetY, Vertical<br>
**Hotbar -> Offsets -> Fifth:** OffsetX, OffsetY, Vertical<br>
**Hotbar -> Offsets -> Sixth:** OffsetX, OffsetY, Vertical<br>
**Hotbar -> Style:** HotbarCount, HotbarLength, HotbarSpacing, OffsetX, OffsetY, SlotAlpha, SlotIconScale, SlotSpacing<br>
**Hotbar -> Theme:** Frame, Slot<br>

**Texts ->** Costs: Font, Size <br>
**Texts -> Costs -> Pos:** Offset X, Offset Y<br>
**Texts -> Costs -> Color:** Alpha, Red, Green, Blue<br>
**Texts -> Costs -> Stroke:** Alpha, Red, Green, Blue, Stroke Width<br>

**Texts -> Keys:** Font, Size <br>
**Texts -> Pos:** Offset X, Offset Y<br>
**Texts -> Color:** Alpha, Red, Green, Blue <br>
**Texts -> Stroke:** Alpha, Red, Green, Blue, Stroke Width<br>

**Texts -> Recasts:** Font, Size <br>
**Texts -> Recasts -> Pos:** Offset X, Offset Y <br>
**Texts -> Recasts -> Color:** Alpha, Red, Green, Blue <br>
**Texts -> Recasts -> Stroke:** Alpha, Red, Green, Blue, Stroke Width<br>

**Texts -> ActionName:** Font, Size <br>
**Texts -> ActionName -> Pos:** Offset X, Offset Y <br>
**Texts -> ActionName -> Color:** Alpha, Red, Green, Blue <br>
**Texts -> ActionName -> Stroke:** Alpha, Red, Green, Blue, Stroke Width<br>
**Texts -> ActionName -> Background:** Enable, Opacity<br>

**Texts -> Environment:** Battle Text, Field Text, Font, Size, Italics, <br>
**Texts -> Environment -> Pos:** HookOntoBar, HookOffsetX, HookOffsetY, Pos X, Pos Y, OffsetX, OffsetY (Set HookOntoBar to 0 set a custom position) Note: Offset adjusts the General/Field text position relative to the Battle/Main text.<br>
**Texts -> Environment -> Color:** Alpha, Red, Green, Blue <br>
**Texts -> Environment -> Stroke:** Width, Alpha, Red, Green, Blue<br>

**Texts -> HotbarNumbers:** Font, Size, Italics <br>
**Texts -> HotbarNumbers -> Pos:** OffsetX, OffsetY, VertOffsetX, VertOffsetY<br>
**Texts -> HotbarNumbers -> Color:** Alpha, Red, Green, Blue <br>
**Texts -> HotbarNumbers -> Stroke:** Alpha, Red, Green, Blue, Stroke Width <br>

**Texts -> Inventory ->** Font, Italics, Size <br>
**Texts -> Inventory -> Background:** Enable, Opacity <br>
**Texts -> Inventory -> Color:** Alpha, Red, Green, Blue <br>
**Texts -> Inventory -> Stroke:** Alpha, Red, Green, Blue, Width <br>
**Texts -> Inventory -> Pos:** Unlock(True/False), PosX, PosY, OffsetX, OffsetY [Set Unlock to True to move position] <br>

**Texts -> ActionDescription:** Font, Size, Italic <br>
**Texts -> ActionDescription -> Color:** Alpha, Red, Green, Blue <br>
**Texts -> ActionDescription -> Stroke:** Width, Alpha, Red, Green, Blue <br>
**Texts -> ActionDescription -> Background:** Enable/Disable, Opacity <br>

**Overlays -> DisableScroll:** True/False to disable the scroll overlay for unlearned spells.

**Controls -> ToggleBattleMode:** This is the Direct Input Keyboard (DIK) integer value for the keyboard key to switch between Main/Battle and General/Field Environments. By default this is set to 43 which is the backslash key. Reference the 'integer' column [here](https://community.bistudio.com/wiki/DIK_KeyCodes#:~:text=Each%20key%20on%20any%20keyboard,its%20position%20is%20always%20identical.) for DIK Codes to set a different key for this.<br>

**Dev -> DevMode:** Set to true/false to allow additional functionality during development. Recommended to keep this false unless you want your chat spammed with messages. If you submit a bug report I may request you to enable this to help narrow down any issues.<br>
<br>

## Images

The addon will try to use default images from FF11 when possible. The image icon used can be overwritten. Many images are provided with the addon, look at the example files to see how they are used.

# Support

## First Steps Troubleshooting Issues:

If you run into any glitches with the hotbar. First troubleshooting step is to reload the hotbar (/htb reload). After that try reloading the addon (//lua reload xivhotbar2).

If you run into issues with weaponswitching: Unequip weapon and reequip your weapons. 

Otherwise please report the bug with as much details as possible so I can try to replicate it!

# Known Issues 
- Weapons may not be detected, especially on login. Change weapons to fix.
- Sometimes when learning a spell the hotbar will make a brief flicker. 
- Icons occasionally flicker after zoning
- Recast timers for scholar do not show the actual recast time, but instead show time until full charges available.
- Beastmaster ready commands assume a 30 second charge, so the recast time is set accordingly. Icons can still be clicked if the timer is wrong.
- Hotbar does not account for the scholar skills Tabula Rasa or Enlightenment, so the wrong spells may be dimmed. They can still be clicked, however.
- TP moves, dancer moves, and charges do not show a spell cost