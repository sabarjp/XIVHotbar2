--[[    BSD License Disclaimer
        Copyright © 2020, SirEdeonX, Akirane, Technyze
        All rights reserved.

        Redistribution and use in source and binary forms, with or without
        modification, are permitted provided that the following conditions are met:

            * Redistributions of source code must retain the above copyright
              notice, this list of conditions and the following disclaimer.
            * Redistributions in binary form must reproduce the above copyright
              notice, this list of conditions and the following disclaimer in the
              documentation and/or other materials provided with the distribution.
            * Neither the name of ui.xivhotbar/xivhotbar2 nor the
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

--[[
-- Big thanks to:
-- - Akaden & Rubenator: For the inspiration to the moving icons/hotbars part
-- - Maverickdfz:        Inspiration to the mouse actions
--]]

_addon.name = 'XIVHotbar2'
_addon.author = 'Edeon, Akirane', 'Technyze'
_addon.version = '0.1'
_addon.language = 'english'
_addon.commands = { 'xivhotbar', 'htb', 'execute', 'xivhotbar2' }

----------------------------------------
-- End of user defined macro placeholder
----------------------------------------

-- Libs --
config = require('config')
file = require('files')
texts = require('texts')
images = require('images')
tables = require('tables')
packets = require('packets')
resources = require('resources')
require('luau')

-- User settings --
local defaults = require('defaults')
local settings = config.load(defaults)
config.save(settings)
first_0x050 = false

-- Load theme options according to settings --
local theme = require('theme')
local theme_options = theme.apply(settings)


-- Addon Dependencies --
local keyboard = require('lib/keyboard_mapper')
local box = require('lib/move_box')
local player = require('lib/player')
local ui = require('lib/ui')
local xiv
local current_zone = 0
local state = {
  ready = false,
  demo = false,
  inventory_ready = false,
  inventory_loading = false
}
local loaded = windower.ffxi.get_info().logged_in
local first_load_done = false

-------
-- Main
-------
nil_equip_bool = false

-- initialize addon --
function initialize()
  keyboard:parse_keybinds()

  ui:setup(theme_options)
  ui:set_player(player)

  box:init(theme_options)
  windower_player = windower.ffxi.get_player()

  local server = resources.servers[windower.ffxi.get_info().server]
      and resources.servers[windower.ffxi.get_info().server].en
      or "PrivateServer_" .. tostring(windower.ffxi.get_info().server)

  if theme_options.enable_weapon_switching == true then
    -- unlikely to be available unless the world has already been loaded in
    if windower.ffxi.get_items() ~= nil then
      if not (windower.ffxi.get_items().equipment.main_bag == 0 and windower.ffxi.get_items().equipment.main == 0) then
        set_weapon_type(false, windower.ffxi.get_items().equipment.main_bag, windower.ffxi.get_items().equipment.main)
      end
      if not (windower.ffxi.get_items().equipment.range_bag == 0 and windower.ffxi.get_items().equipment.range == 0) then
        set_weapon_type(true, windower.ffxi.get_items().equipment.range_bag, windower.ffxi.get_items().equipment.range)
      end
    end
  end

  local current_mp = windower_player.vitals.mp
  local current_tp = windower_player.vitals.tp

  ui:update_mp(current_mp)
  ui:update_tp(current_tp)

  local pet = windower.ffxi.get_mob_by_target('pet') or nil
  if pet ~= nil then
    player:update_pet(pet.name)
  end

  player:initialize(windower_player, server, theme_options)
  player:load_hotbar()
  keyboard:bind_keys(theme_options.rows, theme_options.columns)

  ui:load_player_hotbar(player:get_hotbar_info())
  ui.hotbar.ready = true
  ui.hotbar.initialized = true
  state.ready = true
end

-- some things can't be accessed until world is loaded
function on_world_load()
  if ui.theme.dev_mode then log("Zoning. Reloading Hotbar.") end

  if theme_options.enable_weapon_switching == true then
    set_weapon_type(false, windower.ffxi.get_items().equipment.main_bag, windower.ffxi.get_items().equipment.main)
    set_weapon_type(true, windower.ffxi.get_items().equipment.range_bag, windower.ffxi.get_items().equipment.range)
  end

  ui.hotbar.hide_hotbars = false
  ui:show(player:get_hotbar_info())

  reload_hotbar()
end

-- trigger hotbar action --
function trigger_action(slot)
  player:execute_action(slot)
  ui:trigger_feedback(player:get_active_hotbar(), slot)
end

-- toggle between field and battle hotbars --
function toggle_environment()
  player:toggle_environment()

  ui:load_player_hotbar(player:get_hotbar_info())
end

-- set battle environment --
function set_battle_environment(in_battle)
  player:set_battle_environment(in_battle)
  ui:load_player_hotbar(player:get_hotbar_info())
end

-- reload hotbar --
function reload_hotbar(using_pet_name)
  if ui.theme.dev_mode then log("Reloading Hotbar.") end

  coroutine.sleep(1)

  -- the pet name tends to be unreliable, so we pass it in as a param when possible
  local pet_name = using_pet_name or ''
  if using_pet_name == nil then
    local pet = windower.ffxi.get_mob_by_target('pet') or nil
    if pet ~= nil then
      pet_name = pet.name
    end
  end

  if resources.jobs[windower.ffxi.get_player().sub_job_id] == nil then -- If character has no subjob
    ui:update_mp(windower.ffxi.get_player().vitals.mp)
    ui:update_tp(windower.ffxi.get_player().vitals.tp)
    player:update_job(resources.jobs[windower.ffxi.get_player().main_job_id].ens, 'NON')
    player:update_level(windower.ffxi.get_player().main_job_level, 0)
    player:update_pet(pet_name)
  else
    ui:update_mp(windower.ffxi.get_player().vitals.mp)
    ui:update_tp(windower.ffxi.get_player().vitals.tp)
    player:update_job(resources.jobs[windower.ffxi.get_player().main_job_id].ens,
      resources.jobs[windower.ffxi.get_player().sub_job_id].ens)
    player:update_level(windower.ffxi.get_player().main_job_level, windower.ffxi.get_player().sub_job_level)
    player:update_pet(pet_name)
  end

  player:load_hotbar()
  ui:load_player_hotbar(player:get_hotbar_info())
end

-- change active hotbar --
function change_active_hotbar(new_hotbar)
  player:change_active_hotbar(new_hotbar)
end

--------------------
-- Addon Commands -- --
--------------------

-- command to set an action in a hotbar --
function set_action_command(args)
  player:insert_action(args)
  reload_hotbar()
end

function flush_old_keybinds()
  for i = 1, ui.hotbar.rows, 1 do
    for j = 1, ui.hotbar.columns, 1 do
      windower.send_command('htb delete f ' .. i .. ' ' .. j)
    end
  end
  for i = 1, ui.hotbar.rows, 1 do
    for j = 1, ui.hotbar.columns, 1 do
      windower.send_command('htb delete battle ' .. i .. ' ' .. j)
    end
  end
end

-----------------
-- Bind Events --
-----------------

-- ON LOGOUT --
windower.register_event('logout', function()
  coroutine.sleep(3)
  if windower.ffxi.get_player() == nil then
    windower.send_command('lua reload xivhotbar2')
    ui:hide()
    keyboard:unbind_keys(theme_options.rows, theme_options.columns)
  end
end)


local function save_hotbar(hotbar, index)
  if index <= theme_options.rows then
    local x, y = box:get_pos(index)
    hotbar.OffsetX = x
    hotbar.OffsetY = y
  end
end


local function print_help()
  log("Commands:")
  log("move: Enables moving the hotbars by dragging them, also writes the changes to settings.xml if used again.")
  log("reload: Reloads the hotbar, if you have made changes to the hotbar-file, this is faster for loading.")
  log("Dependencies:")
  log("shortcuts: Used for weapon skills.")
end




-- ON COMMAND --
windower.register_event('addon command', function(command, ...)
  command = command and command:lower() or 'help'
  local args = { ... }

  if command == 'reload' then
    if ui.theme.dev_mode then log('Reloading Hotbar.') end
    reload_hotbar()
  elseif command == 'release' then           --Custom change to release pet
    windower.chat.input('/pet release <me>') -- Need to us ct
  elseif command == 'set' then
    set_action_command(args)
  elseif command == 'help' then
    print_help()
  elseif command == 'mount' then
    local player_mount = windower.ffxi.get_player()
    for k = 1, 32 do
      if player_mount.buffs[k] == 252 then
        windower.chat.input('/dismount')
        return
      end
    end
    if args[1] == nil then
      windower.chat.input('/mount crab <me>')
    else
      windower.chat.input('/mount ' .. args[1] .. ' <me>')
    end
  elseif command == 'summon' then
    local avatar_id = player:determine_summoner_id(args[1])
    if (avatar_id == 0) then
      print("Error, couldn't find avatar '" .. args[1] .. "'... Unable to load actions for it.")
    end
    windower.chat.input('/ma ' .. args[1] .. ' <me>')
  elseif command == 'execute' then
    change_active_hotbar(tonumber(args[1]))
    if tonumber(args[2]) <= theme_options.columns then
      trigger_action(tonumber(args[2]))
    end
  elseif command == 'reload' then
    print("Reload 2")
    flush_old_keybinds()
    bind_keys()
    player:load_hotbar()
  elseif command == 'add' then
    player:insert_action(args)
  elseif command == 'zoneid' then
    print(windower.ffxi.get_info().zone)
  elseif command == 'move' then
    state.demo = not state.demo
    if state.demo then
      log("Layout mode enabled!")
      log("Click, then drag an action onto another slot to change its location.")
      log("Click between the rows, then drag to move the hotbars.")
      log("To save the changes, type '//htb move' then hit enter.")
      print('XIVHOTBAR2: Layout mode enabled')
      box:enable()
    else
      save_hotbar(settings.Hotbar.Offsets.First, 1)
      save_hotbar(settings.Hotbar.Offsets.Second, 2)
      save_hotbar(settings.Hotbar.Offsets.Third, 3)
      save_hotbar(settings.Hotbar.Offsets.Fourth, 4)
      save_hotbar(settings.Hotbar.Offsets.Fifth, 5)
      save_hotbar(settings.Hotbar.Offsets.Sixth, 6)

      config.save(settings)
      print('XIVHOTBAR2: Layout mode disabled, writing new positions to settings.xml.')
      box:disable()
    end
  end
end)


-- ON KEY --
windower.register_event('keyboard', function(dik, flags, blocked)
  if ui.hotbar.ready == false or windower.ffxi.get_info().chat_open then
    return
  end

  if ui.hotbar.hide_hotbars then
    return
  end

  if dik == theme_options.controls_battle_mode and flags == true then
    toggle_environment()
  end
end)


local current_hotbar = -1
local current_action = -1



local function mouse_hotbars(type, x, y, delta, blocked)
  return_value = false

  if not ui.hotbar.hide_hotbars then
    if type == 1 then -- Mouse left click
      local hotbar, action = ui:hovered(x, y)
      if (action ~= nil) then
        current_hotbar = hotbar
        current_action = action
        return_value = true
      else
        return_value = false
      end
    elseif type == 2 then -- Mouse left release
      if (current_action ~= -1) then
        local hotbar, action = ui:hovered(x, y)
        if (action ~= nil) then
          if (action == 100) then
            toggle_environment()
          elseif (hotbar == current_hotbar and action == current_action) then
            player:change_active_hotbar(hotbar)
            trigger_action(action)
          end
        end
        current_hotbar = -1
        current_action = -1
        return_value = true
      else
        return_value = false
      end
    elseif type == 0 then -- Mouse move
      local hotbar, action = ui:hovered(x, y)
      if (action ~= nil and hotbar ~= nil) then
        ui:light_up_action(x, y, hotbar, action, player:get_hotbar_info())
        return_value = true
      else
        ui:hide_hover()
        return_value = false
      end
    end
  end

  return return_value
end

-- Mouse Events
windower.register_event('mouse', function(type, x, y, delta, blocked)
  return_value = nil
  if state.ready == true and blocked == false then
    if state.demo == true then
      return_value = box:move_hotbars(type, x, y, delta, blocked)
    else
      return_value = mouse_hotbars(type, x, y, delta, blocked)
    end
  end

  return return_value
end)

-- ON PRERENDER --
windower.register_event('prerender', function()
  if ui.hotbar.ready == false then
    return
  end

  if ui.feedback.is_active then
    ui:show_feedback()
  end

  if ui.is_setup and ui.hotbar.hide_hotbars == false then
    moved_row_info = box:get_move_box_info()
    if (moved_row_info.swapped_slots.active == true) then
      player:swap_actions(moved_row_info.swapped_slots)
      ui:swap_icons(moved_row_info.swapped_slots)
      moved_row_info.swapped_slots.active = false
      ui:load_player_hotbar(player:get_hotbar_info())
    elseif (moved_row_info.row_active == true) then
      ui:move_icons(moved_row_info, ui.theme)
    elseif (moved_row_info.removed_slot.active == true) then
      player:remove_action(moved_row_info.removed_slot)
      moved_row_info.removed_slot.active = false
      ui:load_player_hotbar(player:get_hotbar_info())
    end
    ui:check_recasts(player:get_hotbar_info())
    ui:check_hover()
  end
end)

-- ON MP CHANGE --
windower.register_event('mp change', function(new, old)
  ui:update_mp(new)
end)

-- OM TP CHANGE --
windower.register_event('tp change', function(new, old)
  ui:update_tp(new)
end)

-- ON STATUS CHANGE --
windower.register_event('status change', function(new_status_id)
  -- hide/show bar in cutscenes --
  if ui.hotbar.hide_hotbars == false and new_status_id == 4 then
    ui.hotbar.hide_hotbars = true
    ui:hide()
  elseif ui.hotbar.hide_hotbars and new_status_id ~= 4 then
    ui.hotbar.hide_hotbars = false
    ui:show(player:get_hotbar_info())
  end
end)

-- ON LOGIN/LOAD --
windower.register_event('load', function()
  if windower.ffxi.get_player() ~= nil then
    defaults = require('defaults')
    settings = config.load(defaults)
    config.save(settings)
    -- Load theme options according to settings --
    theme = require('theme')
    theme_options = theme.apply(settings)
    local settings = config.load(defaults)
    config.save(settings)
    player.id = windower.ffxi.get_player().id
    initialize()
    coroutine.sleep(2)
  end
end)

windower.register_event('login', function()
  if windower.ffxi.get_player() ~= nil then
    windower.send_command('lua load xivhotbar2')
    defaults = require('defaults')
    settings = config.load(defaults)
    config.save(settings)
    -- Load theme options according to settings --
    theme = require('theme')
    theme_options = theme.apply(settings)
    local settings = config.load(defaults)
    config.save(settings)
    player.id = windower.ffxi.get_player().id

    initialize()
  end
end)

-- DARK ARTS / LIGHT ARTS / ADD:BLK / ADD:WHT  set "stance"
windower.register_event('action', function(act)
  if state.ready == true then
    if (act.param == 211 or act.param == 212 or act.param == 234 or act.param == 235) then
      if (act.actor_id == player.id and act.category == 0x06) then
        player:load_job_ability_actions(act.param)
        ui:load_player_hotbar(player:get_hotbar_info())
      end
    end
  end
end)

-- World is loaded or zoning
windower.register_event('incoming chunk', function(id, original, modified, injected, blocked)
  local seq = original:unpack('H', 3)

  if (next_sequence and seq >= next_sequence) and loaded then
    next_sequence = nil
    first_load_done = true
    on_world_load()
  end

  if id == 0x00B then -- unload old zone
    --print("dezone")
    loaded = false
    ui.hotbar.hide_hotbars = true
    ui:hide()
  elseif id == 0x00A then -- load new zone
    --print("begin load")
    loaded = false
    zoning = true
  elseif id == 0x01D and not loaded then
    --print("complete load")
    loaded = true
    zoning = false

    if first_load_done == false then
      -- first time load is significantly slower
      next_sequence = (seq + 18) % 0x10000
    else
      on_world_load()
    end
  end
end)

-- Equip / Unequip
windower.register_event('incoming chunk', function(id, original, modified, injected, blocked)
  if id == 0x050 then --Equip/Unequip
    local packet = packets.parse('incoming', original)
    local slot = packet['Equipment Slot']

    -- slot 0 main, slot 2 ranged
    if slot == 0 or slot == 2 then
      local evt_inv_index = packet['Inventory Index']
      local evt_bag_index = packet['Inventory Bag']

      -- index > 0 means equipping
      if evt_inv_index ~= 0 then
        if slot == 0 then
          set_weapon_type(false, evt_bag_index, windower.ffxi.get_items().equipment.main)
        elseif slot == 2 then
          set_weapon_type(true, evt_bag_index, windower.ffxi.get_items().equipment.range)
        end

        if not zoning then
          if ui.theme.dev_mode then log("Weapon Changed. Reloading Hotbar.") end
          reload_hotbar()
        end

        return
        -- 0 index is unequipping
      else
        if slot == 0 then
          player:update_weapon_type(0)
        elseif slot == 2 then
          player:update_range_weapon_type(0)
        end

        if not zoning then
          if ui.theme.dev_mode then log("Weapon Unequiped. Reloading Hotbar.") end
          reload_hotbar()
        end

        return
      end
    end
  end
end)

function set_weapon_type(is_ranged, bag, index)
  local item = resources.items[windower.ffxi.get_items(bag, index).id]
  if item ~= nil then
    local new_skill_type = resources.items[windower.ffxi.get_items(bag, index).id].skill
    if theme_options.enable_weapon_switching == true then
      if new_skill_type ~= nil then
        if is_ranged then
          player:update_range_weapon_type(new_skill_type)
        else
          player:update_weapon_type(new_skill_type)
        end
      end
    end
  end
end

windower.register_event('add item', 'remove item', function(id, bag, index, count)
  if state.ready == true then
    ui:update_inventory_count()
  end
end)

-- Updates on job change (moogle) and waits for abilities to be updated.
windower.register_event('incoming chunk', function(id, original, modified, injected, blocked)
  if state.ready == true then
    if id == 0x0AC and changing_job == true then
      changing_job = false
      if old_main ~= new_main or old_sub ~= new_sub then
        player:update_job(resources.jobs[new_main].ens, resources.jobs[new_sub].ens)
        if ui.theme.dev_mode then log("Changing Job (Moogle)") end
        reload_hotbar()
      end
    elseif id == 0x01B then
      old_main = windower.ffxi.get_player().main_job_id
      old_sub = windower.ffxi.get_player().sub_job_id
      local packet = packets.parse('incoming', original)
      new_main = packet['Main Job']
      new_sub = packet['Sub Job']

      changing_job = true
    end
  end
end)

-- Updates on blu spell setting
windower.register_event('outgoing chunk', function(id, original, modified, injected, blocked)
  if id == 0x102 then
    if windower.ffxi.get_player().main_job_id == 16 or windower.ffxi.get_player().sub_job_id == 16 then
      if ui.theme.dev_mode then log("Set blue magic. Reloading Hotbar.") end
      -- takes time after setting blu magic for abilities to drop off
      coroutine.sleep(1.5)
      reload_hotbar()
    end
  end
end)

-- helper function for packet debugging
local function byte_to_binary(byte)
  local binary = {}
  for i = 7, 0, -1 do
    table.insert(binary, math.floor(byte / (2 ^ i)) % 2)
  end
  return table.concat(binary)
end

-- Updates on blu spell list
windower.register_event('incoming chunk', function(id, original, modified, injected, blocked)
  if id == 0x044 then
    if windower.ffxi.get_player().main_job_id == 16 or windower.ffxi.get_player().sub_job_id == 16 then
      local packet = packets.parse('incoming', original)
      if packet['Job'] == 16 then
        -- Iterate over each character in the string and convert to binary
        local binary_dump = {}
        local set_blu_spells = {}

        -- blu spells live in the region 0x08 through 0x1B
        -- (or decimal 8 through 27)
        for i = 9, 28 do
          local byte = string.byte(original, i)
          --table.insert(binary_dump, byte_to_binary(byte)) -- debugging
          if byte ~= 0x0 then
            table.insert(set_blu_spells, string.byte(original, i) + 512)
          end
          -- Add a line break every 8 bytes
          if i % 4 == 0 then
            table.insert(binary_dump, "\n")
          end
        end
        -- print("  " .. table.concat(binary_dump, "  "))  -- debugging, dump binary
        -- print(table.concat(set_blu_spells, "  ")) -- debugging, dump blu spells
        player:update_blue_magic(set_blu_spells)
      end
    end
  end
end)

-- Reloads hotbar if new weaponskill is learned.
windower.register_event('action message', function(actor_id, target_id, actor_index, target_index, message_id)
  if message_id == 45 then
    if actor_id == windower.ffxi.get_player().id then
      if ui.theme.dev_mode then log("Learned Weaponskill. Reloading Hotbar.") end
      reload_hotbar()
    end
  end
end)

-- Reloads hotbar if new spell is learned.
windower.register_event('action message', function(actor_id, target_id, actor_index, target_index, message_id)
  if message_id == 23 then
    if actor_id == windower.ffxi.get_player().id then
      if ui.theme.dev_mode then log("Learned Spell. Reloading Hotbar.") end
      reload_hotbar()
    end
  end
end)

-- Reloads hotbar when gaining or losing specified buffs
windower.register_event('gain buff', function(id)
  if id == 143 or id == 269 then -- Level Cap / Level Sync, Status Effect
    if ui.theme.dev_mode then log("Level Capped/Sync'd. Reloading Hotbar.") end
    reload_hotbar()
  elseif id == 55 then                                         -- Astral Flow - Status Effect
    reload_hotbar()
  elseif id == 377 then                                        -- Tabula Rasa- Status Effect
    reload_hotbar()
  elseif id == 359 or id == 402 or id == 358 or id == 401 then -- Dark Arts/Add Black/White Arts/Add White for stratagems
    reload_hotbar()
  elseif (id >= 381 and id <= 385) or id == 588 then           -- finishing move 1/2/3/4/5/6+
    player:update_finishing_moves(id)
  elseif id == 47 or id == 360 or id == 361 or id == 229 or id == 583 then
    -- manafont, penury, parsimony, manawell, apogee
    player:add_buff(id)
    ui:update_mp_costs(player:get_hotbar_info())
  elseif id == 376 or id == 408 then
    -- trance, sekkanoki
    player:add_buff(id)
    ui:update_tp_costs(player:get_hotbar_info())
  end
end)

windower.register_event('lose buff', function(id)
  if id == 269 then -- Level Cap / Level Sync - Status Effect
    log("Leve Sync'd Removed. Reloading Hotbar.")
    reload_hotbar()
  elseif id == 55 then                                         -- Astral Flow - Status Effect
    reload_hotbar()
  elseif id == 377 then                                        -- Tabula Rasa - Status Effect
    reload_hotbar()
  elseif id == 359 or id == 402 or id == 358 or id == 401 then -- Dark Arts/Add Black/White Arts/Add White
    reload_hotbar()
  elseif (id >= 381 and id <= 385) or id == 588 then           -- finishing move 1/2/3/4/5/6+
    player:reset_finishing_moves()
  elseif id == 47 or id == 360 or id == 361 or id == 229 or id == 583 then
    -- manafont, penury, parsimony, manawell, apogee
    player:remove_buff(id)
    ui:update_mp_costs(player:get_hotbar_info())
  elseif id == 376 or id == 408 then
    -- trance, sekkanoki
    player:remove_buff(id)
    ui:update_tp_costs(player:get_hotbar_info())
  end
end)

-- This event updates hotbar when you level up or delevel
windower.register_event('incoming chunk', function(id, original, modified, injected, blocked)
  if id == 0x02D then -- Kill Message
    mob_killed = true
    old_level = windower.ffxi.get_player().main_job_level
  elseif mob_killed and id == 0x061 then -- Mob Killed and Char Stats Message
    local packet = packets.parse('incoming', original)
    --print("Packet: ", packet)
    new_level = packet['Main Job Level']

    S { 'ws' }:contains('ws')
    if new_level ~= old_level then
      if ui.theme.dev_mode then log("Leveled up! Reloading Hotbar.") end
      reload_hotbar()
    end

    mob_killed = false
  end
end)






----------------------------- PET EVENT STUFF ----------------------------------------------------

function reload_stance_hotbar()
  player:update_job(resources.jobs[windower.ffxi.get_player().main_job_id].ens,
    resources.jobs[windower.ffxi.get_player().sub_job_id].ens)
  player:update_level(windower.ffxi.get_player().main_job_level, windower.ffxi.get_player().sub_job_level)
  player:load_hotbar()
  ui:load_player_hotbar(player:get_hotbar_info())
end

--This event is reloading hotbar if a pet dies or released
windower.register_event('incoming chunk', function(id, original, modified, injected, blocked)
  local packet = packets.parse('incoming', original)
  if id == 0x068 then                       -- Pet Status Packet Update
    if packet['Owner ID'] == player.id then -- If player.id and pet owner ID are the same
      if packet['Pet Index'] == 0 then      -- If there is no pet. Meaning it died or was released.
        if ui.theme.dev_mode then log("Pet Died or was Released. Reloading Hotbar.") end
        -- takes time after a pet dies for its abilities to drop off
        coroutine.sleep(2.5)
        reload_hotbar('')
      end
    end
  end
end)

--This event is confirming that pet summons cast are not cancel/interupted and pet was succesfully summoned before updating the hotbar with specific pet abilities
windower.register_event('incoming chunk', function(id, original, modified, injected, blocked)
  if state.ready == true then
    local packet = packets.parse('incoming', original)
    if id == 0x068 then                                           -- If the second pet update packet comes in
      if packet['Owner ID'] == windower.ffxi.get_player().id then -- If player.id and pet owner ID are the same
        if packet['Pet Index'] ~= 0 then                          -- If the pet has an index of non zero then pet summoned succesfully
          if ui.theme.dev_mode then log("Pet Summoned " .. packet['Pet Name'] .. ". Reloading Hotbar.") end
          reload_hotbar(packet['Pet Name'])
        end
      end
    end
  end
end)

--Pet status update
windower.register_event('incoming chunk', function(id, original, modified, injected, blocked)
  if state.ready == true then
    local packet = packets.parse('incoming', original)
    if id == 0x068 then
      if packet['Owner ID'] == windower.ffxi.get_player().id then
        ui:update_pet_tp(packet['Pet TP'])
        ui:update_pet_mp(packet['Current MP%'])
      end
    end
  end
end)

windower.register_event('incoming text', function(text)
  if string.find(text, windower.ffxi.get_player().name .. " learns") then
    if ui.theme.dev_mode then log("Learned a new spell. Reloading Hotbar.") end
    reload_hotbar()
  end
end)


--- Reloads hotbar when using GM command. ** For development only **
windower.register_event('incoming chunk', function(id, original, modified, injected, blocked)
  if ui.theme.dev_mode then
    if id == 0x0AC and gm_command == true then
      if ui.theme.dev_mode then log("GM Command. Reloading Hotbar.", count) end
      gm_command = false
      reload_hotbar()
    end
  end
end)

windower.register_event('incoming text', function(text)
  if ui.theme.dev_mode then
    if string.find(text, "!changejob") or string.find(text, "!changesjob") then
      gm_command = true
    end
  end
end)
