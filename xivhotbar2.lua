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
_addon.author = 'Sabarjp, Fethur', 'Edeon, Akirane', 'Technyze'
_addon.version = '0.3'
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

-- Load theme options according to settings --
local settings
local theme
local theme_options

first_0x050 = false



-- Addon Dependencies --
htb_skillchains = require('lib/skillchains')
htb_bloodpacts = require('lib/bloodpacts')
htb_blue_spells = require('lib/blue_spells')
htb_database = require('priv_res/database')

player = require('lib/player')
ui = require('lib/ui')

local keyboard = require('lib/keyboard_mapper')

local move_box = require('lib/move_box')

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
  keyboard:set_bindings(settings.Keybinds)
  keyboard:parse_keybinds()

  htb_database:import()
  ui:setup(theme_options)
  ui:set_player(player)

  move_box:init(theme_options)
  local windower_player = windower.ffxi.get_player()
  local windower_info = windower.ffxi.get_info()

  local server = resources.servers[windower_info.server]
      and resources.servers[windower_info.server].en
      or "PrivateServer_" .. tostring(windower_info.server)

  if theme_options.enable_weapon_switching == true then
    -- unlikely to be available unless the world has already been loaded in
    local items = windower.ffxi.get_items()
    if items ~= nil then
      if not (items.equipment.main_bag == 0 and items.equipment.main == 0) then
        set_weapon_type(false, items.equipment.main_bag, items.equipment.main)
      end
      if not (items.equipment.range_bag == 0 and items.equipment.range == 0) then
        set_weapon_type(true, items.equipment.range_bag, items.equipment.range)
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
  skillchains:initialize()

  ui:load_player_hotbar(player:get_hotbar_info())
  ui.hotbar.ready = true
  ui.hotbar.initialized = true
  state.ready = true
end

-- some things can't be accessed until world is loaded
function on_world_load()
  if ui.theme.dev_mode then log("Zoning. Reloading Hotbar.") end

  if theme_options.enable_weapon_switching == true then
    local items = windower.ffxi.get_items()
    set_weapon_type(false, items.equipment.main_bag, items.equipment.main)
    set_weapon_type(true, items.equipment.range_bag, items.equipment.range)
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

  local windower_player = windower.ffxi.get_player()

  if resources.jobs[windower_player.sub_job_id] == nil then -- If character has no subjob
    ui:update_mp(windower_player.vitals.mp)
    ui:update_tp(windower_player.vitals.tp)
    player:update_job(windower_player.main_job_id, resources.jobs[windower_player.main_job_id].ens, 0, 'NON')
    player:update_level(windower_player.main_job_level, 0)
    player:update_pet(pet_name)
  else
    ui:update_mp(windower_player.vitals.mp)
    ui:update_tp(windower_player.vitals.tp)
    player:update_job(windower_player.main_job_id, resources.jobs[windower_player.main_job_id].ens,
      windower_player.sub_job_id, resources.jobs[windower_player.sub_job_id].ens)
    player:update_level(windower_player.main_job_level, windower_player.sub_job_level)
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
    local x, y = move_box:get_pos(index)
    hotbar.OffsetX = x
    hotbar.OffsetY = y
  end
end


local function print_help()
  log("Commands:")
  log("move: Enables moving the hotbars by dragging them, also writes the changes to settings.xml if used again.")
  log("reload: Reloads the hotbar, if you have made changes to the hotbar-file, this is faster for loading.")
  log("mount: either dismounts if mounted, or mounts the indicated mount")
end

-- ON COMMAND --
windower.register_event('addon command', function(command, ...)
  command = command and command:lower() or 'help'
  local args = { ... }

  if command == 'reload' then
    if ui.theme.dev_mode then log('Reloading Hotbar.') end
    reload_hotbar()
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
      windower.chat.input('/mount raptor <me>')
    else
      windower.chat.input('/mount ' .. args[1] .. ' <me>')
    end
  elseif command == 'execute' then
    -- special command that is triggered by a windower keybind into an action
    -- on this addon
    change_active_hotbar(tonumber(args[1]))
    if tonumber(args[2]) <= theme_options.columns then
      trigger_action(tonumber(args[2]))
    end
  elseif command == 'move' then
    state.demo = not state.demo
    if state.demo then
      log("Layout mode enabled!")
      log("Click, then drag an action onto another slot to change its location.")
      log("Click between the rows, then drag to move the hotbars.")
      log("To save the changes, type '//htb move' then hit enter.")
      print('XIVHOTBAR2: Layout mode enabled')
      move_box:enable()
    else
      save_hotbar(settings.Hotbar.Offsets.First, 1)
      save_hotbar(settings.Hotbar.Offsets.Second, 2)
      save_hotbar(settings.Hotbar.Offsets.Third, 3)
      save_hotbar(settings.Hotbar.Offsets.Fourth, 4)
      save_hotbar(settings.Hotbar.Offsets.Fifth, 5)
      save_hotbar(settings.Hotbar.Offsets.Sixth, 6)

      config.save(settings)
      print('XIVHOTBAR2: Layout mode disabled, writing new positions to settings.xml.')
      move_box:disable()
    end
  elseif command == 'sc' then
    -- debugging for skillchain detection
    local target = windower.ffxi.get_mob_by_target('t')
    if target then
      local combos = skillchains:get_potential_skillchains(target.id)
      local mb_elements = skillchains:get_magic_burst_elements(target.id)

      if combos then
        windower.add_to_chat(8, '--------COMBOS-------')
        for key, _ in pairs(combos) do
          windower.add_to_chat(8, tostring(key))
        end
      end

      if mb_elements then
        windower.add_to_chat(8, '--------MB-------')
        for key, _ in pairs(mb_elements) do
          windower.add_to_chat(8, tostring(key))
        end
      end

      windower.add_to_chat(8, '--------POT-------')
      local potential = skillchains:get_potential_skillchains(target.id)
      printTable(potential)

      if args[1] then
        local props = {}
        for i, value in ipairs(args) do
          table.insert(props, args[i])
        end
        skillchains:attempt_skillchain(target.id, props)
      end
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
        ui:light_up_action(x, y, hotbar, action)
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
      return_value = move_box:move_hotbars(type, x, y, delta, blocked)
    else
      return_value = mouse_hotbars(type, x, y, delta, blocked)
    end
  end

  return return_value
end)

-- ON PRERENDER --
local frame_counter = 0
windower.register_event('prerender', function()
  frame_counter = frame_counter + 1

  if ui.hotbar.ready == false then
    return
  end

  if ui.feedback.is_active then
    ui:show_feedback()
  end

  if ui.is_setup and ui.hotbar.hide_hotbars == false then
    moved_row_info = move_box:get_move_box_info()
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

    -- Only execute the expensive recast logic every 3 ticks
    if frame_counter % 3 == 0 then
      ui:check_recasts(player:get_hotbar_info())
    end

    ui:check_hover()
  end
end)

-- ON MP CHANGE --
windower.register_event('mp change', function(new, old)
  player.vitals.mp = new
  ui:update_mp(new)
end)

-- OM TP CHANGE --
windower.register_event('tp change', function(new, old)
  player.vitals.tp = new
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
  local windower_player = windower.ffxi.get_player()
  if windower_player ~= nil then
    defaults = require('defaults')
    defaults.Keybinds = keyboard.default_keybinds
    settings = config.load(defaults)
    keyboard:cast_all_to_strings(settings)
    config.save(settings)

    -- Load theme options according to settings --
    theme = require('theme')
    theme_options = theme.apply(settings)
    player.id = windower_player.id
    initialize()
    coroutine.sleep(2)
  end
end)

windower.register_event('login', function()
  local windower_player = windower.ffxi.get_player()
  if windower_player ~= nil then
    windower.send_command('lua load xivhotbar2')

    defaults = require('defaults')
    defaults.Keybinds = keyboard.default_keybinds
    settings = config.load(defaults)
    keyboard:cast_all_to_strings(settings)
    config.save(settings)

    -- Load theme options according to settings --
    theme = require('theme')
    theme_options = theme.apply(settings)
    player.id = windower_player.id

    initialize()
  end
end)

windower.register_event('logout', function()
  settings = nil
  theme = nil
  theme_options = nil
  state = {
    ready = false,
    demo = false,
    inventory_ready = false,
    inventory_loading = false
  }
  loaded = false
  first_load_done = false
  player = nil
  keyboard = nil
  move_box = nil
  skillchains:destroy()
  ui:destroy()
  htb_database:destroy()
end)

windower.register_event('unload', function()
  settings = nil
  theme = nil
  theme_options = nil
  state = {
    ready = false,
    demo = false,
    inventory_ready = false,
    inventory_loading = false
  }
  loaded = false
  first_load_done = false
  player = nil
  keyboard = nil
  move_box = nil
  skillchains:destroy()
  ui:destroy()
  htb_database:destroy()
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
  if id == 0x050 then -- Equip/Unequip
    local packet = packets.parse('incoming', original)
    local slot = packet['Equipment Slot']

    -- slot 0 main, slot 2 ranged
    if slot == 0 or slot == 2 then
      local evt_inv_index = packet['Inventory Index']
      local evt_bag_index = packet['Inventory Bag']

      -- index > 0 means equipping
      if evt_inv_index ~= 0 then
        local weapon_changed = false
        local items = windower.ffxi.get_items()
        if slot == 0 then
          weapon_changed = set_weapon_type(false, evt_bag_index, items.equipment.main)
        elseif slot == 2 then
          weapon_changed = set_weapon_type(true, evt_bag_index, items.equipment.range)
        end

        if not zoning and weapon_changed then
          if ui.theme.dev_mode then log("Weapon Changed. Reloading Hotbar.") end
          reload_hotbar()
        end

        return
        -- index = 0 means unequipping
      else
        local weapon_changed = false
        if slot == 0 then
          if player.current_weapon ~= 0 then
            player:update_weapon_type(0)
            weapon_changed = true
          end
        elseif slot == 2 then
          if player.current_range_weapon ~= 0 then
            player:update_range_weapon_type(0)
            weapon_changed = true
          end
        end

        if not zoning and weapon_changed then
          if ui.theme.dev_mode then log("Weapon Unequipped. Reloading Hotbar.") end
          reload_hotbar()
        end

        return
      end
    end
  end
end)

-- Returns whether or not the weapon type was changed
function set_weapon_type(is_ranged, bag, index)
  local item = resources.items[windower.ffxi.get_items(bag, index).id]

  if item ~= nil then
    local new_skill_type = item.skill

    if theme_options.enable_weapon_switching == true then
      if new_skill_type ~= nil then
        if is_ranged then
          if player.current_range_weapon ~= new_skill_type then
            player:update_range_weapon_type(new_skill_type)
            return true -- Weapon type was changed
          end
        else
          if player.current_weapon ~= new_skill_type then
            player:update_weapon_type(new_skill_type)
            return true -- Weapon type was changed
          end
        end
      end
    end
  end

  return false -- Weapon type was not changed
end

windower.register_event('add item', 'remove item', function(id, bag, index, count)
  if state.ready == true then
    ui:update_inventory_count()                    -- update inv count
    player:update_inventory_items()                -- updates player's item arrays
    player:get_action_manager():update_all_items() -- updates items on the hot bar
  end
end)

-- Updates on job change (moogle) and waits for abilities to be updated.
windower.register_event('incoming chunk', function(id, original, modified, injected, blocked)
  if state.ready == true then
    if id == 0x0AC and changing_job == true then
      changing_job = false
      if old_main ~= new_main or old_sub ~= new_sub then
        player:update_job(new_main, resources.jobs[new_main].ens, new_sub, resources.jobs[new_sub].ens)
        if ui.theme.dev_mode then log("Changing Job (Moogle)") end
        reload_hotbar()
      end
    elseif id == 0x01B then
      local windower_player = windower.ffxi.get_player()
      old_main = windower_player.main_job_id
      old_sub = windower_player.sub_job_id
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
    if player.main_job_id == 16 or player.sub_job_id == 16 then
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
    if player.main_job_id == 16 or player.sub_job_id == 16 then
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
        if ui.theme.dev_mode then log("Updating blu spells") end
        player:update_blue_magic(set_blu_spells)
      end
    end
  end
end)

-- Reloads hotbar if new weaponskill is learned.
windower.register_event('action message', function(actor_id, target_id, actor_index, target_index, message_id)
  if message_id == 45 then
    if actor_id == player.id then
      if ui.theme.dev_mode then log("Learned Weaponskill. Reloading Hotbar.") end
      reload_hotbar()
    end
  end
end)

-- Reloads hotbar if new spell is learned.
windower.register_event('action message', function(actor_id, target_id, actor_index, target_index, message_id)
  if message_id == 23 then
    if actor_id == player.id then
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
    old_level = player.main_job_level
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
          if player.pet_name ~= packet['Pet Name'] then
            if ui.theme.dev_mode then log("Pet Summoned/Changed " .. packet['Pet Name'] .. ". Reloading Hotbar.") end
            reload_hotbar(packet['Pet Name'])
          end
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
  if string.find(text, windower.ffxi.get_player().name) and string.find(text, " learns a new spell") then
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


-----------------------------------------------------------------------------
--- HELPERS / UTILITY FUNCTIONS
-----------------------------------------------------------------------------
function printTable(tbl, indent)
  indent = indent or 0
  local indentString = string.rep("  ", indent)

  for key, value in pairs(tbl) do
    if type(value) == "table" then
      windower.add_to_chat(8, indentString .. tostring(key) .. ":")
      printTable(value, indent + 1)
    else
      windower.add_to_chat(8, indentString .. tostring(key) .. ": " .. tostring(value))
    end
  end
end

--[[
  shorten_name(name, availableWidth)

  This function shortens an ability name to fit within a specified maximum display width,
  where different characters have varying widths.

  The function works as follows:
    1. It calculates the total width of the given ability name.
    2. If the width is already within the available width, it returns the original name.
    3. If the width exceeds the limit, it processes each word:
       - Preserves consonants and the first vowel while respecting the width limit.
       - Dynamically balances the width allocation across multiple words.
       - Ensures the final shortened name fits within the specified constraint.
       - Prioritizes rank or quality indicators like roman numerals and modifiers.

  Parameters:
    - name (string): The ability name to be shortened.
    - availableWidth (number): The maximum width allowed for the shortened name.

  Example behavior:
    - shorten_name("Poison Breath", 6) → "PoiBre"
    - shorten_name("Cocoon", 6) → "Cocoon"
    - shorten_name("Curaga III", 6) → "Curag3"
    - shorten_name("Plate Mail +2", 6) → "PlaM+2"
]]
function shorten_name(name, availableWidth)
  -- Width tiers
  local tier1Chars = { I = true, i = true, j = true, l = true }
  local tier2Chars = { J = true, L = true, f = true, r = true, t = true }
  local tier4Chars = {
    S = true,
    T = true,
    U = true,
    V = true,
    X = true,
    Y = true,
    Z = true,
    b = true,
    d = true,
    h = true,
    k = true,
    n = true,
    p = true,
    q = true
  }
  local tier5Chars = { M = true, W = true, m = true, w = true }

  -- Roman numeral to arabic converter
  local romanToArabic = { I = 1, II = 2, III = 3, IV = 4, V = 5, VI = 6, VII = 7, VIII = 8, IX = 9, X = 10 }

  -- Function to determine the width of a character
  local function charWidth(char)
    if tier1Chars[char] then
      return 0.443
    elseif tier2Chars[char] then
      return 0.722
    elseif tier4Chars[char] then
      return 1.165
    elseif tier5Chars[char] then
      return 1.329
    else
      return 1.00 -- Default width for everything else
    end
  end

  -- Function to calculate the total width of a given string
  local function calculateWidth(str)
    local totalWidth = 0
    for char in str:gmatch(".") do
      totalWidth = totalWidth + charWidth(char)
    end
    return totalWidth
  end

  -- Shortens a word while considering the width budget
  local function shortenWord(word, maxWidth)
    local result = ""
    local widthUsed = 0

    for i = 1, #word do
      local char = word:sub(i, i)
      local width = charWidth(char)

      -- Only add the character if it fits within the remaining width
      if widthUsed + width <= maxWidth then
        result = result .. char
        widthUsed = widthUsed + width
      else
        break
      end
    end

    return result
  end

  -- Function to handle special cases for ranks or modifiers
  local function extractRankOrModifier(words)
    local lastWord = words[#words]

    -- Check for roman numerals or modifiers
    if romanToArabic[lastWord] then
      return "" .. romanToArabic[lastWord], #lastWord -- Return arabic numeral and width used
    elseif lastWord:match("^[%+%-]%d+$") then
      return lastWord, #lastWord                      -- Return modifier as-is
    end
    return nil, 0                                     -- No special case found
  end

  -- Split name into words
  local words = {}
  for word in name:gmatch("%S+") do
    table.insert(words, word)
  end

  -- Handle special case for rank or modifier
  local specialSuffix, suffixWidth = extractRankOrModifier(words)
  if specialSuffix then
    table.remove(words)                                             -- Remove the suffix from the main shortening process
    availableWidth = availableWidth - calculateWidth(specialSuffix) -- Reserve space for the suffix
  end

  -- Calculate initial width
  local initialWidth = calculateWidth(name)
  if initialWidth <= availableWidth then
    return name -- If the width is already under the limit, return as-is
  end

  local shortenedName = ""
  local remainingWidth = availableWidth

  if #words == 1 then
    -- Single-word case: use the full width budget
    local shortenedWord = shortenWord(words[1], remainingWidth)
    shortenedName = shortenedWord
  else
    -- Multi-word case: dynamically allocate widths based on remaining budget
    for i, word in ipairs(words) do
      local isLastWord = (i == #words)
      local maxWidth = isLastWord and remainingWidth or (remainingWidth / (#words - i + 1))
      local shortenedWord = shortenWord(word, maxWidth)

      if i == 1 then
        shortenedName = shortenedWord -- Keep the first word as is
      else
        -- Convert the first character of subsequent words to uppercase (camel case)
        shortenedName = shortenedName .. shortenedWord:sub(1, 1):upper() .. shortenedWord:sub(2)
      end

      remainingWidth = remainingWidth - calculateWidth(shortenedWord)
    end
  end

  -- Append special suffix if present
  if specialSuffix then
    shortenedName = shortenedName .. specialSuffix
  end

  return shortenedName
end

--[[
  get_tgt_cmd_for_targets(targets, target_preference)

  This function will take a targetting array and return the target string that can target
  all of the valid targets. The target array is used in abilities and items windower output
  to indicate what can be targeted, E.g. targets['Self'] indicates self is targetable.

  The target string to me returned is appropriate to use between angle brackets for
  targeting, such as <me>, <t>, etc.

  The optional target_preference param is used to change the default target preference of 'st'
  to anything else, most typically, 't'.
]]
function get_tgt_cmd_for_targets(targets, target_preference)
  local target = 'st'

  if target_preference ~= nil then
    target = target_preference
  end


  if targets == nil then
    return target
  end


  -- Highest priority: Self-only targeting
  if targets['Self'] and not (targets['Player'] or targets['Party'] or targets['Ally'] or targets['Enemy'] or targets['Object'] or targets['Corpse']) then
    target = 'me'

    -- Second priority: Friendly targeting (Player/Party/Ally), but no enemies or objects
  elseif (targets['Player'] or targets['Party'] or targets['Ally']) and not (targets['Enemy'] or targets['Object'] or targets['Corpse']) then
    target = 'stpc'

    -- Third priority: Enemy targeting, but no objects or corpses
  elseif (targets['Enemy'] or targets['NPC']) and not (targets['Object'] or targets['Corpse']) then
    target = 'stnpc'
  end

  return target
end
