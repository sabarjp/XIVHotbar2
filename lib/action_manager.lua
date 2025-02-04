--[[
        Copyright © 2020, SirEdeonX, Akirane, Technyze
        All rights reserved.

        Redistribution and use in source and binary forms, with or without
        modification, are permitted provided that the following conditions are met:


            * Redistributions of source code must retain the above copyright
              notice, this list of conditions and the following disclaimer.
            * Redistributions in binary form must reproduce the above copyright
              notice, this list of conditions and the following disclaimer in the
              documentation and/or other materials provided with the distribution.
            * Neither the name of xivhotbar nor the
              names of its contributors may be used to endorse or promote products
              derived from this software without specific prior written permission.

        THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
        ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
        WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
        DISCLAIMED. IN NO EVENT SHALL SirEdeonX OR Akirane BE LIABLE FOR ANY
        DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
        (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
        LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
        ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
        (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
        SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
]]

local file_manager = require('lib/file_manager')
local spell_list = require('priv_res/spells')
local horizon_spell_list = require('priv_res/horizon_spells')
local ws_list = require('priv_res/weapon_skills')
local ability_list = require('priv_res/job_abilities')
local ability_level_list = require('priv_res/job_abilities_levels')
local weaponskill_level_list = require('priv_res/weapon_skills_levels')

local spells = {}       -- populated after binds are parsed
local abilities = {}    -- populated after binds are parsed
local weaponskills = {} -- populated after binds are parsed

local action_manager = {}
local mainjob_actions = {}
local subjob_actions = {}
local petname_actions = {}
local general_actions = {}
local stance_actions = {}
local weaponskill_actions = {}
local current_stance = nil
local learned_spells_name = {}
local learned_ws_id = {}
local learned_abilities_id = {}
local usable_pet_abilities_name = {}
local item_slots = {} -- we need to track item slots so we can update them dynamically

-- global that is used by the UI to indicate where learnable abilities exist
not_learned_spells_row_slot = {}

buff_table = {
  -- Scholar
  [211] = 'Light Arts',
  [212] = 'Dark Arts',
  [234] = 'Addendum: White',
  [235] = 'Addendum: Black',
  -- Avatars
  [1001] = 'Carbuncle',
  [1002] = 'Ifrit',
  [1003] = 'Shiva',
  [1004] = 'Leviathan',
  [1005] = 'Ramuh',
  [1006] = 'Fenrir',
  [1007] = 'Diabolos',
  [1008] = 'Alexander',
  [1009] = 'Cait Sith',
  [1010] = 'Garuda',
  [1011] = 'Odin',
  [1012] = 'Titan',
  [1013] = 'Atomos',

}


weaponskill_actions.xivhotbar_keybinds_job = {}
subjob_actions.xivhotbar_keybinds_job = {}
petname_actions.xivhotbar_keybinds_job = {}

action_manager.theme_options = {}
action_manager.hotbar = {}
action_manager.hotbar_settings = {}
action_manager.hotbar_settings.max = 1
action_manager.hotbar_settings.active_hotbar = 1
action_manager.hotbar_settings.active_environment = 'battle'
-- tracks usable inventory items for autoitem slots
action_manager.items = {}

_job_fileG = {}
_job_fileG.xivhotbar_keybinds_job = {}
_general_fileG = {}
_general_fileG.xivhotbar_keybinds_general = {}

weaponskill_types = {
  [1] = "Hand-to-hand",
  [2] = "Dagger",
  [3] = "Sword",
  [4] = "Great Sword",
  [5] = "Axe",
  [6] = "Great Axe",
  [7] = "Scythe",
  [8] = "Polearm",
  [9] = "Katana",
  [10] = "Great Katana",
  [11] = "Club",
  [12] = "Staff",
  [25] = "Bow",
  [26] = "Marksmanship",
}

-- reverse lookup tables
-- these tables map english names to ids so we can get O(1) operations when parsing massive amounts
-- of keybinds, should significantly speed up access
local en_to_spell_id = {}
local en_to_ability_id = {}
local en_to_weaponskill_id = {}

for spell_id, spell_data in pairs(resources.spells) do
  en_to_spell_id[spell_data.en] = spell_id
end

for ability_id, ability_data in pairs(resources.job_abilities) do
  en_to_ability_id[ability_data.en] = ability_id
end

for weapon_skill_id, weapon_skill_data in pairs(resources.weapon_skills) do
  en_to_weaponskill_id[weapon_skill_data.en] = weapon_skill_id
end

local function create_table(_new_table, _table_key)
  setmetatable(_new_table, {
    __index = function(g, k)
      local t = rawget(rawget(g, table_key), k)
      if not t then
        t = {}
        rawset(rawget(g, table_key), k, t)
      end
      return t
    end,
    __newindex = function(g, k, v)
      local t = rawget(rawget(g, table_key), k)
      if t and type(v) == 'table' then
        for k, v in pairs(v) do
          t[k] = v
        end
      end
    end
  })
end

local keybinds_job_table = {
  __index = function(g, k)
    local t = rawget(rawget(g, 'xivhotbar_keybinds_job'), k)
    if not t then
      t = {}
      rawset(rawget(g, 'xivhotbar_keybinds_job'), k, t)
    end
    return t
  end,
  __newindex = function(g, k, v)
    local t = rawget(rawget(g, 'xivhotbar_keybinds_job'), k)
    if t and type(v) == 'table' then
      for k, v in pairs(v) do
        t[k] = v
      end
    end
  end
}

local general_keybinds_table = {
  __index = function(g, k)
    local t = rawget(rawget(g, 'xivhotbar_keybinds_general'), k)
    if not t then
      t = {}
      rawset(rawget(g, 'xivhotbar_keybinds_general'), k, t)
    end
    return t
  end,
  __newindex = function(g, k, v)
    local t = rawget(rawget(g, 'xivhotbar_keybinds_general'), k)
    if t and type(v) == 'table' then
      for k, v in pairs(v) do
        t[k] = v
      end
    end
  end
}

-- Initialize keybinds tables
setmetatable(_job_fileG, keybinds_job_table)
setmetatable(_general_fileG, general_keybinds_table)
local CUSTOM_TYPE = 'ct'

local function init_action_table(actions_table)
  actions_table.environment = {}
  actions_table.hotbar = {}
  actions_table.slot = {}
  actions_table.type = {}
  actions_table.action = {}
  actions_table.target = {}
  actions_table.alias = {}
  actions_table.icon = {}
  actions_table.custom_description = {}
end

function action_manager:init_action_tables()
  init_action_table(mainjob_actions)
  init_action_table(subjob_actions)
  init_action_table(petname_actions)
  init_action_table(weaponskill_actions)
  init_action_table(general_actions)
  init_action_table(stance_actions)
end

-- Build action
function action_manager:build(type, action, target, alias, icon)
  local new_action  = {}

  new_action.type   = type
  new_action.action = action
  new_action.target = target

  if alias == nil then alias = ' ' end
  new_action.alias = alias

  if icon == '' then icon = nil end
  if icon ~= nil then
    new_action.icon = icon
  end

  return new_action
end

function action_manager:get_item_slot_data()
  return item_slots
end

-- Add given action to a hotbar
local function add_action(am, action, environment, hotbar, slot)
  status = true
  if environment == 'b' then environment = 'battle' elseif environment == 'f' then environment = 'field' end
  --if slot == 10 then slot = 0 end

  if am.hotbar[environment] == nil then
    windower.console.write('XIVHOTBAR: invalid hotbar (environment)')
    status = false
  end

  if (tonumber(hotbar) > am.hotbar_rows) then
    status = false
  elseif am.hotbar[environment]['hotbar_' .. hotbar] == nil then
    windower.console.write('XIVHOTBAR: invalid hotbar (hotbar number)')
    status = false
  end
  if status == true then
    if am.hotbar[environment]['hotbar_' .. hotbar]['slot_' .. slot] == nil then
      am.hotbar[environment]['hotbar_' .. hotbar]['slot_' .. slot] = {}
      status = false
    end

    am.hotbar[environment]['hotbar_' .. hotbar]['slot_' .. slot] = action
  end
end

local function reindex_action_table(actions_table)
  local function reindex_table(original_table)
    local sequential_table = {}
    for _, value in pairs(original_table) do
      table.insert(sequential_table, value)
    end
    return sequential_table
  end

  actions_table.environment = reindex_table(actions_table.environment)
  actions_table.hotbar = reindex_table(actions_table.hotbar)
  actions_table.slot = reindex_table(actions_table.slot)
  actions_table.type = reindex_table(actions_table.type)
  actions_table.action = reindex_table(actions_table.action)
  actions_table.target = reindex_table(actions_table.target)
  actions_table.alias = reindex_table(actions_table.alias)
  actions_table.icon = reindex_table(actions_table.icon)
end

local function fill_action_table(file_table, file_key, actions_table)
  -- Slot_key is 'battle 1 2' in a job/general file.
  -- file_table is each slot that contains a list of string. Example (First Key): file_table = {'battle 1 1', 'ma', 'Cure', 'stpc', 'Cure'}
  -- file_key is the number for that slot. Example (First Key): 1
  local slot_key = T(file_table[1]:split(' ')) -- Splits 'battle 1 1' into a list {'battle','1','1'}

  if (file_table[2] == "bstpet") then
    -- Convert bstpet cmds to real cmds
    local ability_name = usable_pet_abilities_name[tonumber(file_table[3])]
    file_table[2] = "ja"
    file_table[3] = ability_name
    file_table[5] = shorten_name(ability_name, get_max_char_width(action_manager.theme_options.slot_width))
  elseif (file_table[2] == "autoblu") then
    -- Convert autoblu cmds to real cmds
    local blu_spells = player:get_blue_magic()
    if blu_spells then
      local blue_spell = blu_spells[tonumber(file_table[3])]
      if blue_spell then
        local ability = resources.spells[tonumber(blue_spell)]
        if ability then
          local ability_name = ability.en

          file_table[2] = "ma"
          file_table[3] = ability_name
          file_table[4] = get_tgt_cmd_for_targets(ability.targets)
          file_table[5] = shorten_name(ability_name, get_max_char_width(action_manager.theme_options.slot_width))
        end
      end
    end
  elseif (file_table[2] == 'autoitem') then
    -- Note: AUTO ITEM is tricky due to the dynamic nature of detecting the items.
    local filter = file_table[3] or ""
    local item = player:get_item_from_filter(filter)

    table.insert(item_slots, {
      auto = true,
      item = item and item.name,
      filter = file_table[3],
      location = {
        environment = slot_key[1],
        hotbar = slot_key[2],
        slot = slot_key[3]
      }
    })

    if item then
      file_table[2] = 'item'
      file_table[3] = item.name
      file_table[4] = item.target
      file_table[5] = shorten_name(item.name, get_max_char_width(action_manager.theme_options.slot_width))
    end
  elseif (file_table[2] == 'item') then
    table.insert(item_slots, {
      auto = false,
      item = file_table[3],
      filter = nil,
      location = {
        environment = slot_key[1],
        hotbar = slot_key[2],
        slot = slot_key[3]
      }
    })
  end

  -- Auto-fill target, if needed
  if (file_table[4] == 'auto' or file_table[4] == nil) and file_table[3] then
    local targets
    local action_name = file_table[3]:lower()
    local pref

    -- note that we can only auto-target certain things
    if file_table[2] == 'ma' then
      targets = htb_database['ma'][action_name].targets
      pref = 'st'
    elseif file_table[2] == 'ja' then
      targets = htb_database['ja'][action_name].targets
      pref = 't'
    elseif file_table[2] == 'ws' then
      targets = htb_database['ws'][action_name].targets
      pref = 't'
    elseif file_table[2] == 'item' then
      targets = htb_database['items'][action_name].targets
      pref = 't'
    end

    if targets then
      file_table[4] = get_tgt_cmd_for_targets(targets, pref)
    else
      file_table[4] = 'st'
    end
  end

  -- Auto-fill alias, if needed
  if (file_table[5] == 'auto' or file_table[5] == nil) and file_table[3] then
    file_table[5] = shorten_name(file_table[3], get_max_char_width(action_manager.theme_options.slot_width))
  end

  actions_table.environment[file_key] = slot_key[1]   --environment is either battle or field
  actions_table.hotbar[file_key]      = slot_key[2]   --hotbar number
  actions_table.slot[file_key]        = slot_key[3]   --slot number in above hotbar
  actions_table.type[file_key]        = file_table[2] -- type of attack: ma, ws, input, macro etc.
  actions_table.action[file_key]      = file_table[3] -- name of action: dia, slow, provoke, etc.
  actions_table.target[file_key]      = file_table[4] -- target: t, st, stnpc, etc
  actions_table.alias[file_key]       = file_table[5] -- display name for each slot/skill

  if (file_table[6] ~= nil) then                      -- if last slot of file_table is not empty/blank then...
    actions_table.icon[file_key] = file_table[6]      -- name of icon image in images/icons/custom folder
  else
    actions_table.icon[file_key] = ''
  end

  if (file_table[7] ~= nil) then
    actions_table.custom_description = file_table[7] -- custom description / tooltip
  else
    actions_table.custom_description = ''
  end
end

function action_manager:update_stance(buff_id)
  current_stance = buff_id
end

function action_manager:get_stance()
  return current_stance or ""
end

-- Create a default hotbar
local function create_default_hotbar()
  windower.console.write('XIVHotbar: no hotbar found. Creating a default hotbar.')
  --add default actions to the new hotbar
  action_manager:add_action(action_manager:build_custom('attack on', 'Attack', 'attack'), 'field', 1, 1)
  action_manager:add_action(action_manager:build_custom('check', 'Check', 'check'), 'field', 1, 2)
  action_manager:add_action(action_manager:build_custom('returntrust all', 'No Trusts', 'return-trust'), 'field', 1, 9)
  action_manager:add_action(action_manager:build_custom('heal', 'Heal', 'heal'), 'field', 1, 0)
  action_manager:add_action(action_manager:build_custom('check', 'Check', 'check'), 'battle', 1, 9)
  action_manager:add_action(action_manager:build_custom('attack off', 'Disengage', 'disengage'), 'battle', 1, 0)
end

local function parse_general_binds(hotbar)
  for key, val in pairs(hotbar['Root']) do
    if action_req_check(hotbar['Root'][key]) == true then
      fill_action_table(hotbar['Root'][key], key, general_actions)
      reindex_action_table(general_actions)
    end
  end
end

-- This function will check if an action has its requirements met before adding it
-- to the live hotbars. This involves validating various conditions based on the
-- action type (e.g., magic abilities, job abilities, weapon skills, etc.) and
-- ensures that only valid actions are registered for use.
-- The function processes input as an array where:
--   action_array[1]: Specifies the hotbar slot (e.g., "slot 1 2").
--   action_array[2]: Defines the action type (e.g., 'ma', 'ja', 'ws').
--   action_array[3]: Represents the action name or ID.
--
-- Key considerations include:
--   - Ensuring the character meets level requirements for spells/abilities.
--   - Verifying if spells/abilities are learned.
--   - Handling hotbar slot conflicts and previous actions logically.
--   - Special handling for unlearned spells and their tier lists.
--   - Support for diverse action types (magic, job abilities, etc.).
-- Top-level function to check if an action meets its requirements before being added to live hotbars.
-- Function to check if an action meets its requirements before being added to live hotbars.
-- Function to check if an action meets its requirements before being added to live hotbars.
function action_req_check(action_array)
  local action_type = action_array[2] -- Action type (e.g., 'ma', 'ja', 'ws').
  local action_name = action_array[3] -- Specific action name or identifier.
  local slot = action_array[1]        -- Slot identifier (e.g., 'battle 3 8').

  -- Ensure static variables are initialized.
  previous_slot_key = previous_slot_key or nil
  last_eligible_spell = last_eligible_spell or nil -- Track the last eligible spell.

  -- Reset state when moving to a new slot.
  if slot ~= previous_slot_key then
    previous_slot_key = slot
    last_eligible_spell = nil
  end

  -- Ensure spell meets level requirements and is learned, if applicable.
  if action_type == 'ma' then
    if not meets_spell_level_req(action_name) then
      return false
    end

    if is_spell_learned(action_name) then
      -- Update the last eligible spell for this slot, since we will now examine the next.
      last_eligible_spell = action_name
      return true
    else
      -- Spell is valid, but not learned, so add it to the data structure that maps to the
      -- scroll icon to indicate it is learnable
      -- Add or update the mapping for the slot
      not_learned_spells_row_slot[slot] = action_name

      -- if we already had an eligible spell in the slot, then we will be using that instead of
      -- the unlearned yet learnable one, if nothing else was in this slot, then no harm in putting
      -- the unlearned one here as a placeholder with the scroll icon.
      if last_eligible_spell then
        return false
      else
        return true
      end
    end
  elseif action_type == 'ja' then
    if not meets_ability_level_req(action_name) then
      return false
    end

    -- Check if job ability is learned.
    return is_job_ability_learned(action_name)
  elseif action_type == 'bstpet' then
    return is_pet_ability_usable(action_name)
  elseif action_type == 'autoblu' then
    return is_blu_spell_usable(action_name)
  elseif action_type == 'autoitem' then
    return is_item_usable(action_name)
  elseif action_type == 'ws' then
    if not meets_weaponskill_level_req(action_name) then
      return false
    end
    -- Check if weapon skill is learned.
    return is_weaponskill_learned(action_name)
  elseif action_type == 'ct' or action_type == 'pet' or action_type == 'input' or action_type == 'macro' or action_type == 'gs' or action_type == 'item' then
    -- Always allow these action types.
    return true
  else
    -- Reject unrecognized action types.
    return false
  end
end

function meets_spell_level_req(spell_name_en)
  if not spell_name_en then return false end

  -- TODO: prefer our global player
  local windower_player = windower.ffxi.get_player()

  -- Use the reverse lookup table to get the spell ID
  local spell_id = en_to_spell_id[spell_name_en]
  if not spell_id then
    return true -- Spell does not exist, but assume true, might be new patch data
  end

  -- Retrieve the spell data
  local spell_data = resources.spells[spell_id]
  if not spell_data then
    return true -- Invalid spell data, but assume true, might be new patch data
  end

  -- Check if the main job has a level requirement for the spell
  local main_job_id = windower_player.main_job_id
  local main_job_level = windower_player.main_job_level
  local main_job_spell_level = spell_data.levels[main_job_id]

  if not main_job_spell_level then
    -- Main job does not have access, check the sub job
    local sub_job_id = windower_player.sub_job_id
    local sub_job_level = windower_player.sub_job_level

    if not sub_job_id or not sub_job_level then
      return false -- No sub job or sub job level data
    end

    local sub_job_spell_level = spell_data.levels[sub_job_id]
    if not sub_job_spell_level then
      return false -- Sub job does not have access to the spell
    end

    -- Check if the sub job level is high enough
    return sub_job_level >= sub_job_spell_level
  else
    -- Check if the main job level is high enough
    return main_job_level >= main_job_spell_level
  end
end

function meets_ability_level_req(ability_name_en)
  if not ability_name_en then return false end

  -- TODO: prefer our global player
  local windower_player = windower.ffxi.get_player()

  -- Use the reverse lookup table to get the ability ID
  local ability_id = en_to_ability_id[ability_name_en]
  if not ability_id then
    return true -- Ability does not exist, have to assume true, might be a new patch
  end

  -- Retrieve the ability data
  local ability_data = ability_level_list[ability_id]
  if not ability_data then
    return true -- Invalid ability data, have to assume true, might be a new patch
  end

  -- Check if the main job has a level requirement for the ability
  local main_job_id = windower_player.main_job_id
  local main_job_level = windower_player.main_job_level
  local main_job_ability_level = ability_data.levels[main_job_id]

  if not main_job_ability_level then
    -- Main job does not have access, check the sub job
    local sub_job_id = windower_player.sub_job_id
    local sub_job_level = windower_player.sub_job_level

    if not sub_job_id or not sub_job_level then
      return false -- No sub job or sub job level data
    end

    local sub_job_ability_level = ability_data.levels[sub_job_id]
    if not sub_job_ability_level then
      return false -- Sub job does not have access to the ability
    end

    -- Check if the sub job level is high enough
    return sub_job_level >= sub_job_ability_level
  else
    -- Check if the main job level is high enough
    return main_job_level >= main_job_ability_level
  end
end

-- Create a mapping from underscored skill names to the known skills since windower skills are in a goofy format
local underscored_to_known_skill_map = {
  hand_to_hand = "Hand-to-Hand",
  dagger = "Dagger",
  sword = "Sword",
  great_sword = "Great Sword",
  axe = "Axe",
  great_axe = "Great Axe",
  scythe = "Scythe",
  polearm = "Polearm",
  katana = "Katana",
  great_katana = "Great Katana",
  club = "Club",
  staff = "Staff",
  automaton_melee = "Automaton Melee",
  automaton_archery = "Automaton Archery",
  automaton_magic = "Automaton Magic",
  archery = "Archery",
  marksmanship = "Marksmanship",
  throwing = "Throwing",
  guard = "Guard",
  evasion = "Evasion",
  shield = "Shield",
  parrying = "Parrying",
}

function meets_weaponskill_level_req(weaponskill_name_en)
  if not weaponskill_name_en then return false end
  local weaponskill_id = en_to_weaponskill_id[weaponskill_name_en]

  -- TODO: prefer our global player
  local windower_player = windower.ffxi.get_player()
  local skills = windower_player.skills
  local main_job_level = windower_player.main_job_level

  -- Retrieve the weaponskill data directly using the skill_id
  local skill_data = weaponskill_level_list[weaponskill_id]
  if not skill_data then
    return true -- If no data exists for this skill_id, assume it is always available
  end

  local min_level = skill_data.min_level
  local min_skill = skill_data.min_skill

  -- Check if player meets the minimum level requirement (if applicable)
  if min_level and main_job_level < min_level then
    return false
  end

  -- Use the skill ID to find the relevant skill level in the player's skills
  local skill_name = nil
  for underscored_name, readable_name in pairs(underscored_to_known_skill_map) do
    if readable_name == resources.skills[skill_data.skill].en then
      skill_name = underscored_name
      break
    end
  end

  if not skill_name then
    return false
  end

  local player_skill = skills[skill_name] or 0

  -- Check if player meets the minimum skill requirement
  if min_skill and player_skill < min_skill then
    return false
  end

  -- If all checks pass, return true
  return true
end

-- Checks if a spell is learned.
-- O(1) access
function is_spell_learned(spell_name_en)
  return learned_spells_name[spell_name_en] == true
end

-- ONLY USED TO CHECK IF SPELL IS GREYED OUT.
-- O(1) access
function is_spell_usable(spell_name_en, player)
  -- Use the reverse lookup table to get the spell ID
  local spell_id = en_to_spell_id[spell_name_en]
  if not spell_id then
    return true -- Spell does not exist, assume true, might be a new patch
  end

  -- Retrieve the spell data
  local spell = resources.spells[spell_id]
  if not spell then
    return true -- Invalid spell data, assume true, might be a new patch
  end

  -- Check if the spell is usable by the player's job or Blue Mage spell set
  local usable_by_job = is_spell_usable_by_a_job(spell, player)
  local usable_by_blu = is_blu_spell_set(spell, player)

  -- Return true only if both conditions are met
  return usable_by_job and usable_by_blu
end

-- Help determine if blue magic is set.
-- O(1) access
function is_blu_spell_set(spell, player)
  -- check if blue magic
  if spell['type'] == 'BlueMagic' then
    local blu_spells = player:get_blue_magic_map()
    if blu_spells == nil then
      -- in this scenario, we haven't gotten a packet to know what is set yet,
      -- so we will just assume everything is set until then.
      return true
    end

    return blu_spells[spell['id']]
  else
    return true
  end
end

-- Helps determine which job or subjob is capable of casting a spell, this mostly applies
-- to scholar which has spell casting restrictions due to the addenda.
--
-- O(1) access, assuming player properties (main_job_id, etc.) and spell data (levels, requirements) are accessed in constant time.
-- The only additional overhead comes from the nested conditions, which don't depend on input size.
function is_spell_usable_by_a_job(spell, player)
  -- Cache player data to avoid redundant calls
  local main_job_id = player.main_job_id
  local main_job_level = player.main_job_level
  local sub_job_id = player.sub_job_id
  local sub_job_level = player.sub_job_level

  local function can_cast(job_id, job_level)
    local spell_level = spell['levels'][job_id]
    if spell_level and job_level >= spell_level then
      if job_id ~= 20 then
        return true -- Not a scholar spell, castable
      else
        -- Scholar-specific checks
        if (spell['requirements'] % 8) >= 4 then
          if current_stance == 234 and spell['type'] == 'WhiteMagic' then
            return true
          end
          if current_stance == 235 and spell['type'] == 'BlackMagic' then
            return true
          end
        else
          return true -- Doesn't need addendum, castable
        end
      end
    end
    return false
  end

  -- Check main job and sub job
  return can_cast(main_job_id, main_job_level) or can_cast(sub_job_id, sub_job_level)
end

-- Helps determine if a job ability is learned.
-- O(1) access
function is_job_ability_learned(ability_name_en)
  -- Use the reverse lookup table to get the ability ID
  local ability_id = en_to_ability_id[ability_name_en]
  if not ability_id then
    return true -- Ability does not exist, assume its a patch skill
  end

  -- Check if the ability ID is in the learned abilities set
  return learned_abilities_id[ability_id] == true
end

-- ONLY USED TO CHECK IF SPELL IS GREYED OUT
-- Helps determine if an ability can be used, for abilities that are conditional. example are dancer tp moves, dancer finishers.
-- O(1) access.
function is_job_ability_usable(ability_name_en, player)
  local current_tp = windower.ffxi.get_player().vitals.tp

  -- Use the reverse lookup table to get the ability ID
  local ability_id = en_to_ability_id[ability_name_en]
  if not ability_id then
    return true -- Ability does not exist, assume its a patch skill
  end

  local ability = ability_list[ability_id]
  if ability then
    if ability['tp_cost'] >= 0 then
      -- this has a tp cost, so need to see if we have enough!
      if current_tp < ability['tp_cost'] then
        return false
      end
    end

    if ability_id == 209 or ability_id == 313 then -- wild flourish/striking flourish
      if player:get_finishing_moves() < 2 then
        return false
      end
    elseif ability_id == 314 then -- ternary flourish
      if player:get_finishing_moves() < 3 then
        return false
      end
    elseif ability['type'] == 'Flourish1' or ability['type'] == 'Flourish2' or ability['type'] == 'Flourish3' then -- other flourishes
      if player:get_finishing_moves() < 1 then
        return false
      end
    end
  end

  return true --assume otherwise we are OK
end

-- Checks that the pet ability by index exists.
-- O(1) access.
function is_pet_ability_usable(ability_index)
  local ndx = tonumber(ability_index)
  if ndx >= 1 and ndx <= #usable_pet_abilities_name then
    return true
  end
  return false
end

-- Checks that the blu spell by index exists.
-- O(1) access.
function is_blu_spell_usable(ability_index)
  local ndx = tonumber(ability_index)
  if ndx >= 1 and ndx <= #player:get_blue_magic() then
    return true
  end
  return false
end

-- Checks that an item is usable, used for autoitem with the filter.
-- O(1) access or O(n) access, depending on the filter.
function is_item_usable(item_filter)
  if player:get_item_from_filter(item_filter) then
    return true
  end
  return false
end

-- Checks if a weapon skill has been learned.
-- O(1) access.
function is_weaponskill_learned(ws_name_en)
  -- Use the reverse lookup table to get the ws ID
  local ws_id = en_to_weaponskill_id[ws_name_en]

  if not ws_id then
    return true -- Ability does not exist, assume its a patch skill
  end

  return learned_ws_id[ws_id] == true
end

local function parse_binds(theme_options, player, job_root)
  learned_abilities_id = {}
  learned_spells_name = {}
  learned_ws_id = {}
  missing_actions = {}
  usable_pet_abilities_name = {}
  not_learned_spells_row_slot = {}

  -- Create Learned Spells List
  if theme_options.playing_on_horizon == true then
    spells = horizon_spell_list
    for key, val in pairs(horizon_spell_list) do
      if windower.ffxi.get_spells()[spells[key]['id']] == true then
        learned_spells_name[spells[key]['en']] = true
      end
    end
  elseif theme_options.playing_on_horizon == false then
    spells = spell_list
    for key, val in pairs(spell_list) do
      if windower.ffxi.get_spells()[spells[key]['id']] == true then
        learned_spells_name[spells[key]['en']] = true
      end
    end
  end

  -- Create Learned Abilities List
  abilities = ability_list
  for key, val in pairs(windower.ffxi.get_abilities().job_abilities) do
    for k, ability_data in pairs(ability_list) do
      if val == k then
        learned_abilities_id[ability_data.id] = true
      end
    end
  end

  -- Create Pet Abilities List specifically for the 'bstpet' command
  pet_abilities = ability_list
  for key, val in pairs(windower.ffxi.get_abilities().job_abilities) do
    for k, v in pairs(abilities) do
      if val == k then
        if abilities[k]['prefix'] == "/pet" then
          if abilities[k]['type'] ~= "PetCommand" then
            table.insert(usable_pet_abilities_name, abilities[k]['en'])
          end
        end
      end
    end
  end

  -- Blue magic is not done here, it has to be done globally since blue magic can change at any time.

  -- Current items is not done here, it has to be done globally since items can change at any time.

  -- Create Learned Weaponskills List
  weaponskills = ws_list
  for key, val in pairs(windower.ffxi.get_abilities().weapon_skills) do
    for k, ws_data in pairs(weaponskills) do
      if val == k then
        learned_ws_id[ws_data.id] = true
      end
    end
  end

  -- MAIN JOB -- FILL TABLE
  for key, val in pairs(job_root['Base']) do                         -- Goes through each slot in the 'Base' job. Key is number sequenced. Values is list of strings.
    if action_req_check(job_root['Base'][key]) == true then
      fill_action_table(job_root['Base'][key], key, mainjob_actions) -- job_root['Base'][key] is each line in the BASE section of the JOB.lua file
      reindex_action_table(mainjob_actions)
    end
  end

  -- SUB JOB -- FILL TABLE
  if (job_root[player.sub_job] ~= nil) then
    for key, val in pairs(job_root[player.sub_job]) do
      if action_req_check(job_root[player.sub_job][key]) == true then
        fill_action_table(job_root[player.sub_job][key], key, subjob_actions)
        reindex_action_table(subjob_actions)
      end
    end
  else
    for key, val in pairs(subjob_actions.environment) do
      self:remove_action()
    end
    subjob_actions = {}
  end

  -- PET NAME -- FILL TABLE
  if (job_root[player.pet_name] ~= nil) then
    for key, val in pairs(job_root[player.pet_name]) do
      if action_req_check(job_root[player.pet_name][key]) == true then
        fill_action_table(job_root[player.pet_name][key], key, petname_actions)
        reindex_action_table(petname_actions)
      end
    end
  else
    for key, val in pairs(petname_actions.environment) do
      self:remove_action()
    end
    petname_actions = {}
  end

  -- STANCE -- FILL TABLE
  local stances = {}
  table.insert(stances, current_stance)

  -- special condition: SCH addenda active means light/dark arts also active!
  if (current_stance == 234) then
    table.insert(stances, 211)
  elseif (current_stance == 235) then
    table.insert(stances, 212)
  end

  local stance_ndx = 1
  for k, s in pairs(stances) do
    if (job_root[buff_table[s]] ~= nil) then
      local stance_table = job_root[buff_table[s]]
      for key, val in pairs(stance_table) do
        if action_req_check(stance_table[key]) == true then
          fill_action_table(stance_table[key], stance_ndx, stance_actions)
          stance_ndx = stance_ndx + 1
        end
      end
    end
  end

  -- WEAPON SWITCHING -- FILL TABLE
  local weapons = {}
  table.insert(weapons, player.current_weapon)
  table.insert(weapons, player.current_range_weapon)

  if (theme_options.enable_weapon_switching == true) then
    local weaponskill_ndx = 1
    for k, w in ipairs(weapons) do
      if (weaponskill_types[w] ~= nil) then
        if (job_root[weaponskill_types[w]] ~= nil) then
          for key, val in ipairs(job_root[weaponskill_types[w]]) do
            if action_req_check(job_root[weaponskill_types[w]][key]) == true then
              fill_action_table(job_root[weaponskill_types[w]][key], weaponskill_ndx, weaponskill_actions)
              weaponskill_ndx = weaponskill_ndx + 1
            end
          end
        end
      end
    end
  end
end

function action_manager:initialize(theme_options)
  self.theme_options       = theme_options
  self.hotbar_settings.max = theme_options.hotbar_number
  self.hotbar_rows         = theme_options.rows
end

function action_manager:destroy()
  self.theme_options = {}

  self.hotbar = {}
  self.hotbar_settings = {}
  self.hotbar_settings.max = 1
  self.hotbar_settings.active_hotbar = 1
  self.hotbar_settings.active_environment = 'battle'

  self.items = {}

  self.hotbar_rows = {}

  spells = {}
  abilities = {}
  weaponskills = {}

  mainjob_actions = {}
  subjob_actions = {}
  petname_actions = {}
  general_actions = {}
  stance_actions = {}
  weaponskill_actions = {}

  current_stance = nil
  learned_spells_name = {}
  learned_ws_id = {}
  learned_abilities_id = {}
  usable_pet_abilities_name = {}
  item_slots = {}

  not_learned_spells_row_slot = {}

  weaponskill_actions.xivhotbar_keybinds_job = {}
  subjob_actions.xivhotbar_keybinds_job = {}
  petname_actions.xivhotbar_keybinds_job = {}

  _job_fileG = {}
  _job_fileG.xivhotbar_keybinds_job = {}
  _general_fileG = {}
  _general_fileG.xivhotbar_keybinds_general = {}
end

function action_manager:reset_hotbar()
  self.hotbar = {
    ['battle'] = {},
    ['field'] = {}
  }

  for h = 1, self.hotbar_settings.max, 1 do
    self.hotbar.field['hotbar_' .. h] = {}
    self.hotbar.battle['hotbar_' .. h] = {}
  end

  self.hotbar_settings.active_hotbar = 1
end

function action_manager:update_all_items()
  -- update items
  for _, item_def in ipairs(item_slots) do
    local slot = self.hotbar[item_def.location.environment]['hotbar_' .. item_def.location.hotbar]
        ['slot_' .. item_def.location.slot]
    if slot then
      if item_def.auto then
        -- remove the auto item, so we can re-define it
        self.hotbar[item_def.location.environment]['hotbar_' .. item_def.location.hotbar]['slot_' .. item_def.location.slot] = nil

        local filter = item_def.filter or ""
        local item = player:get_item_from_filter(filter)

        if item then
          local new_action = {
            target = item.target,
            type = 'item',
            action = item.name,
            alias = shorten_name(item.name, get_max_char_width(self.theme_options.slot_width))
          }

          self.hotbar[item_def.location.environment]['hotbar_' .. item_def.location.hotbar]['slot_' .. item_def.location.slot] =
              new_action
        end
      else
        -- manual item, nothing to do
      end
    end
  end

  ui:update_item_counts()
end

-- build a custom action
function action_manager:build_custom(action, alias, icon)
  return self:build(CUSTOM_TYPE, action, nil, alias, icon)
end

-- This is done when the MOVE interface is enabled.
function action_manager:swap_actions(player, swap_table)
  local s_row  = swap_table.source.row
  local s_slot = swap_table.source.slot
  local d_row  = swap_table.dest.row
  local d_slot = swap_table.dest.slot

  if self.hotbar_settings.active_environment == 'battle' then
    if (self.hotbar['battle']['hotbar_' .. s_row]['slot_' .. s_slot] ~= nil) then
      if (self.hotbar['battle']['hotbar_' .. d_row]['slot_' .. d_slot] == nil) then
        self.hotbar['battle']['hotbar_' .. d_row]['slot_' .. d_slot] = table.copy(
          self.hotbar['battle']['hotbar_' .. s_row]['slot_' .. s_slot], true)
        self.hotbar['battle']['hotbar_' .. s_row]['slot_' .. s_slot] = nil

        -- Write the changes after swapping the actions
        local dest_action = self.hotbar['battle']['hotbar_' .. d_row]['slot_' .. d_slot]
        file_manager:write_changes(dest_action, d_row, d_slot, s_row, s_slot, 'b')
      else
        temp_slot = table.copy(self.hotbar['battle']['hotbar_' .. s_row]['slot_' .. s_slot], true)
        self.hotbar['battle']['hotbar_' .. s_row]['slot_' .. s_slot] = table.copy(
          self.hotbar['battle']['hotbar_' .. d_row]['slot_' .. d_slot], true)
        self.hotbar['battle']['hotbar_' .. d_row]['slot_' .. d_slot] = temp_slot

        -- Write the changes after swapping the actions
        local dest_action = self.hotbar['battle']['hotbar_' .. d_row]['slot_' .. d_slot]
        local source_action = self.hotbar['battle']['hotbar_' .. s_row]['slot_' .. s_slot]
        file_manager:write_changes(source_action, s_row, s_slot, d_row, d_slot, 'b')
        file_manager:write_changes(dest_action, d_row, d_slot, s_row, s_slot, 'b')
      end
    else
      print("XIVHOTBAR2: Cannot swap icons if the dragged icon is empty!")
    end
  else -- field
    if (self.hotbar['field']['hotbar_' .. s_row]['slot_' .. s_slot] ~= nil) then
      if (self.hotbar['field']['hotbar_' .. d_row]['slot_' .. d_slot] == nil) then
        self.hotbar['field']['hotbar_' .. d_row]['slot_' .. d_slot] = table.copy(
          self.hotbar['field']['hotbar_' .. s_row]['slot_' .. s_slot], true)
        self.hotbar['field']['hotbar_' .. s_row]['slot_' .. s_slot] = nil

        -- Write the changes after swapping the actions
        local dest_action = self.hotbar['field']['hotbar_' .. d_row]['slot_' .. d_slot]
        file_manager:write_changes(dest_action, d_row, d_slot, s_row, s_slot, 'f')
      else
        temp_slot = table.copy(self.hotbar['field']['hotbar_' .. s_row]['slot_' .. s_slot], true)
        self.hotbar['field']['hotbar_' .. s_row]['slot_' .. s_slot] = table.copy(
          self.hotbar['field']['hotbar_' .. d_row]['slot_' .. d_slot], true)
        self.hotbar['field']['hotbar_' .. d_row]['slot_' .. d_slot] = temp_slot

        -- Write the changes after swapping the actions
        local dest_action = self.hotbar['field']['hotbar_' .. d_row]['slot_' .. d_slot]
        local source_action = self.hotbar['field']['hotbar_' .. s_row]['slot_' .. s_slot]
        file_manager:write_changes(source_action, s_row, s_slot, d_row, d_slot, 'f')
        file_manager:write_changes(dest_action, d_row, d_slot, s_row, s_slot, 'f')
      end
    else
      print("XIVHOTBAR: Cannot swap icons if the dragged icon is empty!")
    end
  end
end

-- This is done when the MOVE interface is enabled.
function action_manager:remove_action(player, remove_table)
  local row = remove_table.source.row
  local slot = remove_table.source.slot

  if self.hotbar_settings.active_environment == 'battle' then
    if (self.hotbar['battle']['hotbar_' .. row]['slot_' .. slot] ~= nil) then
      file_manager:write_remove(self.hotbar['battle']['hotbar_' .. row]['slot_' .. slot], row, slot, 'b')
      self.hotbar['battle']['hotbar_' .. row]['slot_' .. slot] = nil
    end
  else
    if (self.hotbar['battle']['hotbar_' .. row]['slot_' .. slot] ~= nil) then
      file_manager:write_remove(self.hotbar['field']['hotbar_' .. row]['slot_' .. slot], row, slot, 'f')
      self.hotbar['field']['hotbar_' .. row]['slot_' .. slot] = nil
    end
  end
end

function action_manager:insert_action(player_subjob, args)
  if not args[6] then
    print(
      'XIVHOTBAR2: Invalid arguments: set <mode> <hotbar> <slot> <action_type> <action> <target (optional)> <alias (optional)> <icon (optional)>')
    return
  end
  local prio = args[1]:lower()
  local row = tonumber(args[2]) or 0
  local slot = tonumber(args[3]) or 0
  local action_type = args[4]:lower()
  local action = args[5]
  local target = args[6] or nil
  local alias = args[7] or nil
  local icon = args[8] or nil
  if target ~= nil then target = target:lower() end
  local environment_to_send = function()
    if self.hotbar_settings.active_environment == 'field' then return 'f' else return 'b' end
  end

  local new_action = action_manager:build(action_type, action, target, alias, icon)

  file_manager:insert_action(new_action, prio, player_subjob, environment_to_send(), row, slot)
end

function action_manager:update_file_path(player_name, player_job)
  file_manager:update_file_path(player_name, player_job)
end

function action_manager:add_actions(action_table)
  for key in pairs(action_table.environment) do
    add_action(self,
      action_manager:build(
        action_table.type[key],
        action_table.action[key],
        action_table.target[key],
        action_table.alias[key],
        action_table.icon[key]
      ),
      action_table.environment[key],
      action_table.hotbar[key],
      action_table.slot[key]
    )
  end
end

function action_manager:toggle_environment()
  if self.hotbar_settings.active_environment == 'battle' then
    self.hotbar_settings.active_environment = 'field'
  else
    self.hotbar_settings.active_environment = 'battle'
  end
end

function action_manager:get_action(slot)
  return self.hotbar[self.hotbar_settings.active_environment]['hotbar_' .. self.hotbar_settings.active_hotbar]
      ['slot_' .. slot]
end

-- change active hotbar
function action_manager:change_active_hotbar(new_hotbar)
  self.hotbar_settings.active_hotbar = new_hotbar

  if self.hotbar_settings.active_hotbar > self.hotbar_settings.max then
    self.hotbar_settings.active_hotbar = 1
  end
end

-- This function is responsible for actually loading the LUA file definitions
-- and transforming them to be ready to be mapped to the hotbars.
function action_manager:load(player)
  -- First time load of the inventory
  player:update_inventory_items()

  action_manager:init_action_tables() -- Create/Initialize MainJob, SubJob, Stance, Weaponskill, Stance Tables

  local basepath = windower.addon_path .. 'data/' .. player.name .. '/'
  local job_file = loadfile(basepath .. player.main_job .. '.lua')
  local general_file = loadfile(basepath .. 'General.lua')
  if job_file == nil then
    print(string.format("XIVHOTBAR2: Couldn't find the job file %s.lua!", player.main_job))
  else
    setfenv(job_file, _job_fileG) --Set a function's (JOB.lua) enviroment(global) into a table(_job_fileG)

    local job_root = job_file()   -- Runs the player.main_job.lua file. Saves its return value in root. Return value is table: Keys are ['JOB'], Value is another table

    if not job_root then          -- if root is nil (JOB.lua has no table), then reinitialize below variables and RETURN
      _job_fileG.xivhotbar_keybinds_job = {}
      _job_fileG._binds = {}
      return
    end
    _job_fileG.xivhotbar_keybinds_job = {}
    _job_fileG.xivhotbar_keybinds_job[job_root] = _job_fileG.xivhotbar_keybinds_job[job_root] or 'Root'


    parse_binds(self.theme_options, player, job_root)

    --ADD Actions for all stances
    action_manager:add_actions(mainjob_actions)
    if (subjob_actions.environment ~= nil) then
      action_manager:add_actions(subjob_actions)
    end
    if (petname_actions.environment ~= nil) then
      action_manager:add_actions(petname_actions)
    end
    if (stance_actions.environment ~= nil) then
      action_manager:add_actions(stance_actions)
    end
    action_manager:add_actions(weaponskill_actions)
  end

  if general_file == nil then
    print("Error, couldn't find file 'General.lua'")
  else
    setfenv(general_file, _general_fileG)
    local general_root = general_file()
    if not general_root then
      _general_fileG.xivhotbar_keybinds_general = {}
      _general_fileG.binds = {}
      return
    end
    _general_fileG.xivhotbar_keybinds_general = {}
    _general_fileG.xivhotbar_keybinds_general[general_root] = _general_fileG.xivhotbar_keybinds_general[general_root] or
        'Root'
    parse_general_binds(general_root)

    action_manager:add_actions(general_actions)
  end
end

return action_manager
