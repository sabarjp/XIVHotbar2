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
end

function action_manager:init_action_tables()
  init_action_table(mainjob_actions)
  init_action_table(subjob_actions)
  init_action_table(petname_actions)
  init_action_table(weaponskill_actions)
  init_action_table(general_actions)
  init_action_table(stance_actions)
end

-- build action
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

-- add given action to a hotbar
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

  -- convert bst cmds to real cmds
  if (file_table[2] == "bstpet") then
    local ability_name = usable_pet_abilities_name[tonumber(file_table[3])]
    file_table[2] = "ja"
    file_table[3] = ability_name
    file_table[5] = ability_name
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
end

function action_manager:update_stance(buff_id)
  current_stance = buff_id
end

function action_manager:get_stance()
  return current_stance or ""
end

-- create a default hotbar
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
    -- Check if job ability is learned.
    return is_job_ability_learned(action_name)
  elseif action_type == 'bstpet' then
    -- Check if Beastmaster pet ability is usable.
    return is_pet_ability_usable(action_name)
  elseif action_type == 'ws' then
    -- Check if weapon skill is learned.
    return is_weaponskill_learned(action_name)
  elseif action_type == 'ct' or action_type == 'pet' or action_type == 'input' or action_type == 'macro' or action_type == 'gs' then
    -- Always allow these action types.
    return true
  else
    -- Reject unrecognized action types.
    return false
  end
end

function meets_spell_level_req(spell_name_en)
  -- TODO: prefer our global player
  local windower_player = windower.ffxi.get_player()

  for key, val in pairs(spells) do
    if spells[key]['en'] == spell_name_en then
      if spells[key]['levels'][windower_player.main_job_id] == nil then                                          -- Check to see if current main job even has a level associated with spell
        if windower_player.sub_job_level == nil or spells[key]['levels'][windower_player.sub_job_id] == nil then -- Otherwise check to see if current sub job even has a level associated with spell
          return false
        elseif windower_player.sub_job_level < spells[key]['levels'][windower_player.sub_job_id] then            -- Check to see if sub job level is lower than spell level
          return false
        else
          return true
        end
      elseif windower_player.main_job_level < spells[key]['levels'][windower_player.main_job_id] then -- Check to see if main job level is lower than spell level
        return false
      else
        return true
      end
    end
  end
end

function is_spell_learned(spell_name_en)
  for k, v in pairs(learned_spells_name) do
    if v == spell_name_en then
      --These are spells that player meets level and learned requirement
      return true
    end
  end

  return false
end

-- ONLY USED TO CHECK IF SPELL IS GREYED OUT
function is_spell_usable(spell_name_en, player)
  local spell = nil
  for key, val in pairs(spells) do
    if spells[key]['en'] == spell_name_en then
      spell = spells[key]
    end
  end

  local usable_by_job = is_spell_usable_by_a_job(spell, player)
  local usable_by_blu = is_blu_spell_set(spell, player)

  return (usable_by_job and usable_by_blu)
end

-- help determine if blue magic is set
function is_blu_spell_set(spell, player)
  -- check if blue magic
  if spell['type'] == 'BlueMagic' then
    if player.set_blue_magic == nil then
      -- in this scenario, we haven't gotten a packet to know what is set yet,
      -- so we will just assume everything is set until then.
      return true
    end

    for k, v in pairs(player.set_blue_magic) do
      if v == spell['id'] then
        return true
      end
    end
    return false
  else
    return true
  end
end

-- helps determine which job or subjob is capable of casting a spell, this mostly applies
-- to scholar which has spell casting restrictions due to the addenda.
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

function is_job_ability_learned(ability_name_en)
  for key, val in pairs(ability_list) do
    if ability_list[key]['en'] == ability_name_en then
      for k, v in pairs(learned_abilities_id) do
        if v == ability_list[key]['id'] then
          return true
        end
      end
      return false
    end
  end
end

-- ONLY USED TO CHECK IF SPELL IS GREYED OUT
-- helps determine if an ability can be used, for abilities that are conditional. example are dancer tp moves, dancer finishers.
function is_job_ability_usable(ability_name_en, player)
  local current_tp = windower.ffxi.get_player().vitals.tp

  for key, val in pairs(ability_list) do
    if ability_list[key]['en'] == ability_name_en then
      if ability_list[key]['tp_cost'] >= 0 then
        -- this has a tp cost, so need to see if we have enough!
        if current_tp < ability_list[key]['tp_cost'] then
          return false
        end
      end

      if ability_list[key]['id'] == 209 or ability_list[key]['id'] == 313 then -- wild flourish/striking flourish
        if player:get_finishing_moves() < 2 then
          return false
        end
      elseif ability_list[key]['id'] == 314 then -- ternary flourish
        if player:get_finishing_moves() < 3 then
          return false
        end
      elseif ability_list[key]['type'] == 'Flourish1' or ability_list[key]['type'] == 'Flourish2' or ability_list[key]['type'] == 'Flourish3' then -- other flourishes
        if player:get_finishing_moves() < 1 then
          return false
        end
      end
    end
  end

  return true --assume otherwise we are OK
end

function is_pet_ability_usable(ability_index)
  -- really just need to see if index exists
  local ndx = tonumber(ability_index)
  if ndx >= 1 and ndx <= #usable_pet_abilities_name then
    return true
  end
  return false
end

function is_weaponskill_learned(ws_name_en)
  for key, val in pairs(ws_list) do
    if ws_list[key]['en'] == ws_name_en then
      for k, v in pairs(learned_ws_id) do
        if v == ws_list[key]['id'] then
          return true
        end
      end
      return false
    end
  end
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
        table.insert(learned_spells_name, spells[key]['en'])
      end
    end
  elseif theme_options.playing_on_horizon == false then
    spells = spell_list
    for key, val in pairs(spell_list) do
      if windower.ffxi.get_spells()[spells[key]['id']] == true then
        table.insert(learned_spells_name, spells[key]['en'])
      end
    end
  end

  -- Create Learned Abilities List
  abilities = ability_list
  for key, val in pairs(windower.ffxi.get_abilities().job_abilities) do
    for k, v in pairs(abilities) do
      if val == k then
        table.insert(learned_abilities_id, abilities[k]['id'])
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

  -- Create Learned Weaponskills List
  weaponskills = ws_list
  for key, val in pairs(windower.ffxi.get_abilities().weapon_skills) do
    for k, v in pairs(weaponskills) do
      if val == k then
        table.insert(learned_ws_id, weaponskills[k]['id'])
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

-- build a custom action
function action_manager:build_custom(action, alias, icon)
  return self:build(CUSTOM_TYPE, action, nil, alias, icon)
end

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
