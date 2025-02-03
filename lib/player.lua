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

local action_manager = require('lib/action_manager')
local player = {}


player.name = ''
player.main_job = ''
player.sub_job = ''
player.server = ''
player.pet_name = ''
player.finishing_moves = 0

player.main_job_level = 0
player.sub_job_level = 0
player.vitals = {}
player.vitals.mp = 0
player.vitals.tp = 0
player.id = 0
player.current_weapon = 0
player.current_range_weapon = 0
player.buffs = {}
player.has_free_spell = false
player.has_penury = false
player.has_parsimony = false
player.has_apogee = false
player.has_trance = false
player.has_sekko = false
player.set_blue_magic = nil -- nil here means that we do not know yet, otherwise, acts as a simple list of set spell ids
player.items = {}

-- quick lookup for item count
player.item_count = {}

function player:get_items()
  return self.items
end

function player:get_finishing_moves()
  return self.finishing_moves
end

function player:get_hotbar_info_without_vitals()
  local hotbar = action_manager.hotbar
  local active_environment = action_manager.hotbar_settings.active_environment
  return hotbar, active_environment
end

function player:get_hotbar_info()
  local hotbar = action_manager.hotbar
  local active_environment = action_manager.hotbar_settings.active_environment
  local vitals = windower.ffxi.get_player().vitals
  return hotbar, active_environment, vitals
end

function player:get_action_manager()
  return action_manager
end

-- initialize player
function player:initialize(windower_player, server, theme_options)
  self.name           = windower_player.name
  self.main_job_id    = windower_player.main_job_id
  self.sub_job_id     = windower_player.sub_job_id
  self.main_job       = windower_player.main_job
  self.sub_job        = windower_player.sub_job
  self.main_job_level = windower_player.main_job_level
  self.sub_job_level  = windower_player.sub_job_level
  self.server         = server
  self.buffs          = windower_player.buffs
  self.id             = windower_player.id
  self.vitals.mp      = windower_player.vitals.mp
  self.vitals.tp      = windower_player.vitals.tp
  self:update_costs()
  self:load_default_stance()
  action_manager:initialize(theme_options)
  action_manager:update_file_path(player.name, player.main_job)
end

function player:remove_action(remove_table)
  action_manager:remove_action(self, remove_table)
end

-- update player jobs
function player:update_job(main_id, main, sub_id, sub)
  self.set_blue_magic = nil
  self.main_job = main
  self.sub_job = sub
  self.main_job_id = main_id
  self.sub_job_id = sub_id
  action_manager:update_file_path(player.name, player.main_job)
end

-- update pet
function player:update_pet(name)
  self.pet_name = name
end

-- update finishing moves
function player:update_finishing_moves(buff_id)
  if buff_id == 381 then
    self.finishing_moves = 1
  elseif buff_id == 382 then
    self.finishing_moves = 2
  elseif buff_id == 383 then
    self.finishing_moves = 3
  elseif buff_id == 384 then
    self.finishing_moves = 4
  elseif buff_id == 385 then
    self.finishing_moves = 5
  elseif buff_id == 588 then
    self.finishing_moves = 6
  end
end

function player:load_default_stance()
  for _, v in ipairs(self.buffs) do
    if v == 358 then
      action_manager:update_stance(211)
    elseif v == 359 then
      action_manager:update_stance(212)
    elseif v == 401 then
      action_manager:update_stance(234)
    elseif v == 402 then
      action_manager:update_stance(235)
    end
  end
end

function player:update_blue_magic(blue_spells)
  self.set_blue_magic = blue_spells
end

function player:get_blue_magic()
  if self.set_blue_magic then
    return self.set_blue_magic
  else
    -- not available yet, we _might_ be able to get the raw list if we main blu
    if windower.ffxi.get_player().main_job_id == 16 then
      local mjobdata = windower.ffxi.get_mjob_data()
      if mjobdata and mjobdata.spells then
        return mjobdata.spells
      end
    end
  end

  return {}
end

function player:update_costs()
  local has_free_spell = false
  local has_penury = false
  local has_parsimony = false
  local has_apogee = false
  local has_trance = false
  local has_sekko = false

  for _, v in ipairs(self.buffs) do
    if v == 47 or v == 229 then
      -- manafont, manawell
      has_free_spell = true
    elseif v == 360 then
      has_penury = true
    elseif v == 361 then
      has_parsimony = true
    elseif v == 583 then
      has_apogee = true
    elseif v == 376 then
      has_trance = true
    elseif v == 408 then
      has_sekko = true
    end
  end

  self.has_free_spell = has_free_spell
  self.has_penury = has_penury
  self.has_parsimony = has_parsimony
  self.has_apogee = has_apogee
  self.has_trance = has_trance
  self.has_sekko = has_sekko
end

function player:add_buff(buff_id)
  for _, v in ipairs(self.buffs) do
    if v == buff_id then
      buff_id = nil -- already present
      break
    end
  end
  if buff_id then
    table.insert(self.buffs, buff_id)
  end
  self:update_costs()
end

function player:remove_buff(buff_id)
  for i, v in ipairs(self.buffs) do
    if v == buff_id then
      table.remove(self.buffs, i)
      break
    end
  end
  self:update_costs()
end

function player:reset_finishing_moves()
  self.finishing_moves = 0
end

-- update player level
function player:update_level(main_level, sub_level)
  self.main_job_level = main_level
  self.sub_job_level = sub_level
end

function player:get_main_job_level()
  return self.main_job_level
end

-- load hotbar for current player and job combination
function player:load_hotbar()
  action_manager:reset_hotbar()
  action_manager:load(self)
end

function player:swap_actions(swap_table)
  action_manager:swap_actions(player, swap_table)
end

function player:update_weapon_type(skill_type)
  player.current_weapon = skill_type
end

function player:update_range_weapon_type(skill_type)
  player.current_range_weapon = skill_type
end

function player:load_job_ability_actions(buff_id)
  action_manager:update_stance(buff_id)
  action_manager:load(self)
end

-- toggle bar environment
function player:toggle_environment()
  action_manager:toggle_environment()
end

-- set bar environment to battle
function player:set_battle_environment(in_battle)
  local environment = 'field'
  if in_battle then environment = 'battle' end

  action_manager.hotbar_settings.active_environment = environment
end

-- change active hotbar
function player:change_active_hotbar(new_hotbar)
  action_manager:change_active_hotbar(new_hotbar)
end

function player:insert_action(args)
  action_manager:insert_action(player.sub_job, args)
end

function player:determine_summoner_id(pet_name)
  for buff_id, buff_name in pairs(buff_table) do
    if buff_name == pet_name then
      return buff_id
    end
  end
  return 0
end

function player:get_active_hotbar()
  return action_manager.hotbar_settings.active_hotbar
end

-- Actually execute action from given slot
function player:execute_action(slot)
  action = action_manager:get_action(slot)

  if action == nil then return end

  if action.type == 'ct' then
    local command = '/' .. action.action

    if action.target ~= nil and action.target ~= "" then
      command = command .. ' <' .. action.target .. '>'
    end

    windower.chat.input(command)
    return
  elseif action.type == 'macro' then -- Single line macro in the JOB.lua file. Seperated by semicolons.
    windower.chat.input('//' .. action.action)
  elseif action.type == 'gs' then    -- Gear Swap Addon
    windower.chat.input('//gs ' .. action.action)
  elseif action.type == 's' then     -- Send Addon
    windower.chat.input('//send ' .. action.action)
  elseif action.type == 'input' then
    windower.chat.input('//input ' .. action.action)
  else
    local confirmed_st = false
    if action_manager.theme_options.confirm_subtarget_if_necessary then
      local st = windower.ffxi.get_mob_by_target('st')
      if st then
        windower.send_command('setkey enter down')
        coroutine.sleep(0.1)
        windower.send_command('setkey enter up')
        confirmed_st = true
      end
    end
    if not confirmed_st then
      windower.chat.input('/' .. action.type .. ' "' .. action.action .. '" <' .. action.target .. '>') -- This is for JA, WS and MA
    end
  end
end

--------------------------------------------------------------------
-- Auto item functions
--------------------------------------------------------------------
function player:update_inventory_items()
  self.items = {}
  self.item_count = {}

  local inv_bag = windower.ffxi.get_items(0)
  local temp_bag = windower.ffxi.get_items(3)

  local function add_from_bag(bag, items, items_count)
    for _, item in ipairs(bag) do
      if item.id and item.id ~= 0 then
        local res_item = resources.items[item.id]

        if res_item.targets and next(res_item.targets) then
          local target = get_tgt_cmd_for_targets(res_item.targets)

          table.insert(items, {
            name = res_item.en,
            target = target
          })

          if items_count[res_item.en] then
            items_count[res_item.en] = items_count[res_item.en] + item.count
          else
            items_count[res_item.en] = item.count
          end
        end
      end
    end
  end

  if temp_bag then
    add_from_bag(temp_bag, self.items, self.item_count)
  end

  if inv_bag then
    add_from_bag(inv_bag, self.items, self.item_count)
  end
end

function player:get_item_from_filter(filter)
  if filter then
    if tonumber(filter) then
      -- number means to explicitly use an item slot instead
      local matched_item = self.items[tonumber(filter)]
      if matched_item then
        return matched_item
      end
    else
      -- no number means to filter by name, getting first match
      local matched_item

      for _, item in ipairs(self.items) do
        if string.find(item.name, filter) then
          matched_item = item
          break
        end
      end
      return matched_item
    end
  end
end

return player
