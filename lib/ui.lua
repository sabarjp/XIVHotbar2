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
            * Neither the name of hotbar nor the
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

local database = require('priv_res/database') -- TODO: IMPORT FROM RES
local formatter = require('lib/text_formatter')
local keyboard = require('lib/keyboard_mapper')

local ui = {}

local buffs = {}

local text_setup = {
  flags = {
    draggable = false
  }
}

ui.hover_icon = {
  row = nil,
  col = nil,
  prev_row = nil,
  prev_col = nil
}

local environment_text_setup = {
  flags = {
    draggable = false,
  }
}

local inventory_count_setup = {
  flags = {
    draggable = true
  }
}
local sack_count_setup = {
  flags = {
    draggable = false
  }
}

local right_text_setup = {
  flags = {
    right = true,
    draggable = false
  }
}

local playerinv = {}
local is_silenced = false
local is_amnesiad = false
local is_neutralized = false
local is_burst_affinity = false
local is_chain_affinity = false
local is_immanence = false
local can_ws = false
local can_pet_ws = false
local current_mp = 0
local current_pet_mp = 0
local current_tp = 0
local bst_charge_time = 30 --default time per bst cmd charge

-- ui metrics
ui.hotbar_width = 0
ui.hotbar = {
  initialized = false,
  ready = false,
  hide_hotbars = false,
  in_battle = false
}
ui.hotbar_spacing = 0
ui.slot_spacing = 0
ui.pos_x = 0
ui.pos_y = 0
ui.current_row = 0
ui.current_column = 0
ui.current_text_size = 0

ui.image_height = 40
ui.image_width = 40
ui.overlay_image_height = 24
ui.overlay_image_width = 24
ui.player = {}
ui.recasts = {}

local outline_images_setup = {
  draggable = false,
  size = {
    width  = ui.image_width + 6,
    height = ui.image_height + 6
  },
  texture = {
    fit = false
  },
  visible = false
}

local images_setup = {
  draggable = false,
  size = {
    width  = ui.image_width,
    height = ui.image_height
  },
  texture = {
    fit = false
  },
  visible = false
}

local overlay_images_setup = {
  draggable = false,
  size = {
    overlay_width  = ui.overlay_image_width,
    overlay_height = ui.overlay_image_height
  },
  texture = {
    fit = true
  },
  visible = false
}



-- ui variables
ui.feedback_icon = nil
ui.hotbars = {}

-- ui theme options
ui.theme = {}

-- ui control
ui.feedback = {}
ui.feedback.is_active = false
ui.feedback.current_opacity = 0
ui.feedback.max_opacity = 0
ui.feedback.speed = 0

ui.disabled_slots = {}
ui.disabled_slots.actions = {}
ui.disabled_slots.no_vitals = {}
ui.disabled_slots.on_cooldown = {}

ui.outlined_slots = {}

ui.is_setup = false
ui.disabled_icons = {}
ui.current_tick = 0

-- cache the current target
ui.current_target = nil

ui.default_image_paths = {
  ['default'] = windower.addon_path .. '/images/icons/custom/gear3.png',
  ['macro'] = windower.addon_path .. '/images/icons/custom/macro.png',
  ['gs'] = windower.addon_path .. '/images/icons/custom/gearswap.png',
  ['item'] = windower.addon_path .. '/images/icons/custom/item.png',
}

-----------------------
-- Private functions --
-----------------------

--[[ Update buffs
      Checks against the following debuffs:
      1. Sleep/Stun: If one of these are found, interrupt the for loop
        2   = Sleep
        10  = Stun
        19  = Sleep
        28  = Terror
        14/17 = Charm
        193 = Lullaby
      2. Silence/Amnesia(6/16): If both are active, interrupt the for loop
]] --

local function update_buffs(id, data)
  if id == 0x063 then
    if data:byte(0x05) == 0x09 then
      local silenced = false
      local amnesiad = false
      local neutralized = false
      local burst_affinity = false
      local chain_affinity = false
      for i = 1, 32 do
        local buff_id = data:unpack('H', i * 2 + 7)
        if (buff_id == 2 or buff_id == 10 or buff_id == 19 or buff_id == 28 or buff_id == 193 or buff_id == 14 or buff_id == 17) then neutralized = true end
        if (neutralized) then break end
        if (buff_id == 6) then
          silenced = true
        end
        if (buff_id == 164) then chain_affinity = true end
        if (buff_id == 165) then burst_affinity = true end
        if (buff_id == 470) then immanence = true end
        if (buff_id == 16) then amnesiad = true end
        if (silenced and amnesiad) then break end
      end
      is_neutralized = neutralized
      is_silenced = silenced
      is_amnesiad = amnesiad
      is_burst_affinity = burst_affinity
      is_chain_affinity = chain_affinity
      is_immanence = immanence
    end
  end
end

-------------------------------------------------
-- Position related functions
-------------------------------------------------

-- get xy position for a given hotbar and slot
function ui:get_slot_xy(h, i)
  local x, y
  if (self.theme.offsets[tostring(h)] ~= nil) then
    if (self.theme.offsets[tostring(h)].Vertical == true) then
      if (i < math.floor(self.theme.columns / 2) + 1) then
        x = self.theme.offsets[tostring(h)].OffsetX
        y = self.theme.offsets[tostring(h)].OffsetY + ((self.image_width + self.slot_spacing) * (i - 1))
      else
        x = self.theme.offsets[tostring(h)].OffsetX + (self.image_width + self.slot_spacing)
        y = self.theme.offsets[tostring(h)].OffsetY +
            ((self.image_width + self.slot_spacing) * (i - math.floor(self.theme.columns / 2) - 1))
      end
    else
      x = self.pos_x + self.theme.offsets[tostring(h)].OffsetX + ((self.image_width + self.slot_spacing) * (i - 1))
      y = self.theme.offsets[tostring(h)].OffsetY
    end
  else
    x = self.pos_x + ((self.image_width + self.slot_spacing) * (i - 1))
    y = self.pos_y - (((h - 1) * (self.hotbar_spacing - 3)))
  end
  return x, y
end

-- get x position for a given hotbar and slot
function ui:get_slot_x(h, i)
  local x
  if (self.theme.offsets[tostring(h)] ~= nil) then
    if (self.theme.offsets[tostring(h)].Vertical == true) then
      if (i < math.floor(self.theme.columns / 2) + 1) then
        x = self.theme.offsets[tostring(h)].OffsetX
      else
        x = self.theme.offsets[tostring(h)].OffsetX + (self.image_width + self.slot_spacing)
      end
    else
      x = self.pos_x + self.theme.offsets[tostring(h)].OffsetX + ((self.image_width + self.slot_spacing) * (i - 1))
    end
  else
    x = self.pos_x + ((self.image_width + self.slot_spacing) * (i - 1))
  end
  return x
end

-- get y position for a given hotbar and slot
function ui:get_slot_y(h, i)
  local y
  if (self.theme.offsets[tostring(h)] ~= nil) then
    if (self.theme.offsets[tostring(h)].Vertical == true) then
      if (i < math.floor(self.theme.columns / 2) + 1) then
        y = self.theme.offsets[tostring(h)].OffsetY + ((self.image_width + self.slot_spacing) * (i - 1))
      else
        y = self.theme.offsets[tostring(h)].OffsetY +
            ((self.image_width + self.slot_spacing) * (i - math.floor(self.theme.columns / 2) - 1))
      end
    else
      y = self.theme.offsets[tostring(h)].OffsetY
    end
  else
    y = self.pos_y - (((h - 1) * (self.hotbar_spacing - 3)))
  end
  return y
end

-------------------------------------------------
-- Visibility related functions
-------------------------------------------------
---
function ui:toggle_slot_opacity(hotbar, slot, is_enabled)
  if is_enabled == false then
    opacity = self.theme.disabled_slot_opacity
  elseif is_enabled == true then
    opacity = 255
  end

  self.hotbars[hotbar].slot_cost[slot]:alpha(opacity)
  self.hotbars[hotbar].slot_icons[slot]:alpha(opacity)
end

function ui:disable_slot(hotbar_index, index, action)
  if self.disabled_slots.actions[action.action] ~= nil then
    if self.disabled_slots.actions[action.action] == true then
      self:toggle_slot_opacity(hotbar_index, index, false)
    end
  end
  if self.disabled_slots.on_cooldown[action.action] ~= nil then
    if self.disabled_slots.on_cooldown[action.action] == true then
      self:toggle_slot_opacity(hotbar_index, index, false)
    end
  end
  if self.disabled_slots.no_vitals[action.action] ~= nil then
    if self.disabled_slots.no_vitals[action.action] == true then
      self:toggle_slot_opacity(hotbar_index, index, false)
    end
  end
end

function ui:enable_slot(hotbar_index, index, action)
  if self.disabled_slots.actions[action.action] ~= nil then
    if self.disabled_slots.actions[action.action] == false then
      self:toggle_slot_opacity(hotbar_index, index, true)
    end
  end
  if self.disabled_slots.on_cooldown[action.action] ~= nil then
    if self.disabled_slots.on_cooldown[action.action] == false then
      self:toggle_slot_opacity(hotbar_index, index, true)
    end
  end
  if self.disabled_slots.no_vitals[action.action] ~= nil then
    if self.disabled_slots.no_vitals[action.action] == false then
      self:toggle_slot_opacity(hotbar_index, index, true)
    end
  end
end

function ui:outline_path(hotbar_index, index, type)
  if type then
    self.hotbars[hotbar_index].slot_outline[index]:path(windower.addon_path ..
      '/themes/' .. (self.theme.frame_theme:lower()) .. '/outline_' .. type .. '.png')
  else
    self.hotbars[hotbar_index].slot_outline[index]:path(windower.addon_path ..
      '/themes/' .. (self.theme.frame_theme:lower()) .. '/outline.png')
  end

  if self.theme.use_animated_highlights then
    local cycle = self.current_tick % 4
    if cycle == 0 then
      self.hotbars[hotbar_index].slot_outline[index]:repeat_xy(1, 1)
    elseif cycle == 1 then
      self.hotbars[hotbar_index].slot_outline[index]:repeat_xy(-1, 1)
    elseif cycle == 2 then
      self.hotbars[hotbar_index].slot_outline[index]:repeat_xy(-1, -1)
    else
      self.hotbars[hotbar_index].slot_outline[index]:repeat_xy(1, -1)
    end
  end
end

function ui:color_outline(hotbar_index, index, red, blue, green)
  self.hotbars[hotbar_index].slot_outline[index]:color(red, blue, green)
end

function ui:enable_outline(hotbar_index, index, action)
  if self.outlined_slots[action.action] ~= nil then
    if self.outlined_slots[action.action] == true then
      self.hotbars[hotbar_index].slot_outline[index]:show()
    end
  end
end

function ui:disable_outline(hotbar_index, index, action)
  if self.theme.highlight_magic_burst or self.theme.highlight_skill_chain then
    if self.outlined_slots[action.action] ~= nil then
      if self.outlined_slots[action.action] == false then
        self.hotbars[hotbar_index].slot_outline[index]:hide()
      end
    end
  end
end

---------------------------------------------------------------
-- INITIALIZE AND LOAD FUNCTIONS, IN ORDER
---------------------------------------------------------------

function ui:setup(theme_options)
  database:import()
  self.theme                  = theme_options
  self.theme.hide_action_cost = theme_options.hide_action_cost
  self.image_width            = math.floor(self.image_width * self.theme.slot_icon_scale)
  self.image_height           = math.floor(self.image_height * self.theme.slot_icon_scale)
  self.overlay_image_width    = math.floor(self.overlay_image_width * self.theme.slot_icon_scale)
  self.overlay_image_height   = math.floor(self.overlay_image_height * self.theme.slot_icon_scale)
  self.hover_icon             = images.new(table.copy(images_setup, true))
  self:setup_image(self.hover_icon,
    windower.addon_path .. '/themes/' .. (theme_options.frame_theme:lower()) .. '/frame.png')
  self.hover_icon:hide()
  self.hover_icon:size(self.image_width + 2, self.image_height + 2)
  self.hover_icon.row = 0
  self.hover_icon.column = 0
  self.theme.mp_cost_color_red = theme_options.font_color_red_costs_mp
  self.theme.mp_cost_color_green = theme_options.font_color_green_costs_mp
  self.theme.mp_cost_color_blue = theme_options.font_color_blue_costs_mp
  self.theme.tp_cost_color_red = theme_options.font_color_red_costs_tp
  self.theme.tp_cost_color_green = theme_options.font_color_green_costs_tp
  self.theme.tp_cost_color_blue = theme_options.font_color_blue_costs_tp
  self:setup_sizing()
  self:setup_environment()
  self:setup_disabled_icons()
  self:init_all_hotbars_and_slots()
  -- load feedback icon last so it stays above everything else
  self:setup_feedback()
  self.is_setup = true
end

function ui:set_player(player)
  self.player = player
end

function ui:setup_sizing()
  self.playerinv = windower.ffxi.get_items()
  self.active_environment = {}

  self.active_environment['battle'] = {}
  self.active_environment['field'] = {}

  self.active_environment['battle'] = texts.new(table.copy(environment_text_setup), true)
  self.active_environment['field'] = texts.new(table.copy(environment_text_setup), true)

  self:setup_env_text(self.active_environment['battle'], self.theme)
  self:setup_env_text(self.active_environment['field'], self.theme)


  self.hotbar_width = ((40 * self.theme.columns) + self.theme.slot_spacing * (self.theme.columns - 1))
  self.scaled_pos_x = windower.get_windower_settings().ui_x_res
  self.scaled_pos_y = windower.get_windower_settings().ui_y_res
  self.pos_x = 0
  self.pos_y = 0

  self.slot_spacing = self.theme.slot_spacing

  if self.theme.hide_action_names == true then
    self.theme.hotbar_spacing = self.theme.hotbar_spacing - 10
    self.pos_y = self.pos_y + 10
  end

  self.hotbar_spacing = self.theme.hotbar_spacing
end

function ui:setup_env_text(text, theme_options)
  text:bg_alpha(0)
  text:bg_visible(false)
  text:font(theme_options.font_env)
  text:size(theme_options.font_size_env * theme_options.slot_icon_scale)
  text:color(theme_options.font_color_red_env, theme_options.font_color_green_env, theme_options.font_color_blue_env)
  text:stroke_transparency(theme_options.font_stroke_alpha_env)
  text:stroke_color(theme_options.font_stroke_color_red_env, theme_options.font_stroke_color_green_env,
    theme_options.font_stroke_color_blue_env)
  text:stroke_width(theme_options.font_stroke_width_env)
  text:show()
end

function ui:setup_environment()
  local env_pos_x = self:get_slot_x(self.theme.hook_onto_bar, self.theme.columns + 1)
  local env_pos_y = self:get_slot_y(self.theme.hook_onto_bar, 0)

  -- ENVIRONMENT TEXT --
  if self.theme.hide_env == false then
    self.active_environment['battle']:text(self.theme.font_battle_text_env)
    self.active_environment['battle']:pos(env_pos_x + (self.theme.font_hook_offset_x_env * self.theme.slot_icon_scale),
      env_pos_y + (self.theme.font_hook_offset_y_env * self.theme.slot_icon_scale))
    self.active_environment['battle']:size(self.theme.font_size_env * self.theme.slot_icon_scale)
    self.active_environment['battle']:italic(self.theme.font_italics_env)
    self.active_environment['battle']:font(self.theme.font_env)
    self.active_environment['battle']:alpha(self.theme.font_alpha_env)
    self.active_environment['battle']:color(self.theme.font_color_red_env, self.theme.font_color_green_env,
      self.theme.font_color_blue_env)
    self.active_environment['battle']:stroke_transparency(self.theme.font_stroke_alpha_env)
    self.active_environment['battle']:stroke_color(self.theme.font_stroke_color_red_env, self.theme
      .font_stroke_color_green_env, self.theme.font_stroke_color_blue_env)
    self.active_environment['battle']:stroke_width(self.theme.font_stroke_width_env)
    self.active_environment['battle']:show()

    self.active_environment['field']:text(self.theme.font_field_text_env)
    self.active_environment['field']:pos(
      env_pos_x + ((self.theme.font_hook_offset_x_env + self.theme.font_offset_x_env) * self.theme.slot_icon_scale),
      env_pos_y + ((self.theme.font_hook_offset_y_env + self.theme.font_offset_y_env) * self.theme.slot_icon_scale))
    self.active_environment['field']:size(self.theme.font_size_env * self.theme.slot_icon_scale)
    self.active_environment['field']:italic(self.theme.font_italics_env)
    self.active_environment['field']:font(self.theme.font_env)
    self.active_environment['field']:alpha(self.theme.font_alpha_env)
    self.active_environment['field']:color(self.theme.font_color_red_env, self.theme.font_color_green_env,
      self.theme.font_color_blue_env)
    self.active_environment['field']:stroke_transparency(self.theme.font_stroke_alpha_env)
    self.active_environment['field']:stroke_color(self.theme.font_stroke_color_red_env,
      self.theme.font_stroke_color_green_env,
      self.theme.font_stroke_color_blue_env)
    self.active_environment['field']:stroke_width(self.theme.font_stroke_width_env)
    self.active_environment['field']:show()

    if self.theme.hook_onto_bar == 0 then
      self.active_environment['battle']:pos(self.theme.font_pos_x_env, self.theme.font_pos_y_env)
      self.active_environment['battle']:show()

      self.active_environment['field']:pos(self.theme.font_pos_x_env + self.theme.font_offset_x_env,
        self.theme.font_pos_y_env + self.theme.font_offset_y_env)
      self.active_environment['field']:show()
    end
  end


  -- INVENTORY TEXT TEXT --
  self.inventory_count = texts.new(inventory_count_setup)
  self:setup_inv_text(self.inventory_count, self.theme)

  if self.theme.hide_inventory_count == false then
    if self.theme.unlock_pos_inv == true then
      self.inventory_count:pos(self.theme.font_pos_x_inv, self.theme.font_pos_y_inv)
      self:get_inventory_count(self.theme, self.inventory_count, self.playerinv.inventory)
      self.inventory_count:show()
    else
      self.inventory_count:pos(env_pos_x + (self.theme.text_offset_x_inv * self.theme.slot_icon_scale),
        env_pos_y + (self.theme.text_offset_y_inv * self.theme.slot_icon_scale))
      self:get_inventory_count(self.theme, self.inventory_count, self.playerinv.inventory)
      self.inventory_count:show()
    end
  end
end

function ui:get_inventory_count(theme, text_box, bag)
  text_box:text(bag.count .. '/' .. bag.max)
  if (bag.max - bag.count <= 5) then
    text_box:color(240, 0, 0)
  elseif (bag.max - bag.count <= 10) then
    text_box:color(240, 240, 0)
  else
    text_box:color(theme.font_color_red_inv, theme.font_color_green_inv, theme.font_color_blue_inv)
  end
end

function ui:setup_inv_text(text, theme_options)
  text:bg_alpha(theme_options.font_bg_opacity_inv)
  text:bg_visible(theme_options.font_bg_enable_inv)
  text:size(ui.theme.font_size_inv * theme_options.slot_icon_scale)
  text:italic(ui.theme.font_italics_inv)
  text:font(ui.theme.font_inv)
  text:alpha(ui.theme.font_alpha_inv)
  text:stroke_transparency(ui.theme.font_stroke_alpha_inv)
  text:stroke_width(ui.theme.font_stroke_width_inv)
  text:stroke_color(ui.theme.font_stroke_color_red_inv, ui.theme.font_stroke_color_green_inv,
    ui.theme.font_stroke_color_blue_inv)
  text:bg_alpha(ui.theme.font_bg_opacity_inv)
  text:bg_visible(ui.theme.font_bg_enable_inv)
  text:show()
end

function ui:setup_disabled_icons()
  for h = 1, self.theme.rows, 1 do
    self.disabled_icons[#self.disabled_icons + 1] = {}
    for i = 1, self.theme.columns, 1 do
      ui.disabled_icons[h][#self.disabled_icons[h] + 1] = 0
    end
  end
end

-- load the images and text
function ui:init_all_hotbars_and_slots()
  -- create ui elements for hotbars
  for h = 1, self.theme.hotbar_number, 1 do
    self.hotbars[h] = self:init_hotbar(self.theme, h)
    for i = 1, self.theme.columns, 1 do
      self:init_slot(h, i, self.theme)
    end
  end
  self.action_description = texts.new()
  self:setup_action_description_text(self.action_description, self.theme)
end

function ui:init_hotbar(theme_options, number)
  local hotbar             = {}
  hotbar.slot_backgrounds  = {}
  hotbar.slot_icons        = {}
  hotbar.slot_recasts      = {}
  hotbar.slot_frames       = {}
  hotbar.slot_texts        = {}
  hotbar.slot_cost         = {}
  hotbar.slot_recast_texts = {}
  hotbar.slot_keys         = {}
  hotbar.slot_overlay      = {}
  hotbar.slot_outline      = {}
  hotbar.number            = texts.new(table.copy(text_setup), true)


  -- HOTBAR NUMBERS TEXT --
  if self.theme.hide_hotbar_numbers == false then
    self:setup_hotbar_numbers_text(hotbar.number, theme_options)
    hotbar.number:text(tostring(number))
  end

  local slot_x, slot_y = self:get_slot_xy(number, 1)

  if (theme_options.offsets[tostring(number)].Vertical == true) then
    hotbar.number:pos(
      slot_x + (theme_options.text_vert_offset_x_hotbar_nums * theme_options.slot_icon_scale),
      slot_y + (theme_options.text_vert_offset_y_hotbar_nums * theme_options.slot_icon_scale))
  else
    hotbar.number:pos(
      slot_x + (theme_options.text_offset_x_hotbar_nums * theme_options.slot_icon_scale),
      slot_y + (theme_options.text_offset_y_hotbar_nums * theme_options.slot_icon_scale))
  end
  return hotbar
end

function ui:setup_hotbar_numbers_text(text, theme_options)
  text:bg_alpha(0)
  text:bg_visible(false)
  text:italic(theme_options.font_italics_hotbar_nums)
  text:font(theme_options.font_hotbar_nums)
  text:size(theme_options.font_size_hotbar_nums * theme_options.slot_icon_scale)
  text:color(theme_options.font_color_red_hotbar_nums, theme_options.font_color_green_hotbar_nums,
    theme_options.font_color_blue_hotbar_nums)
  text:stroke_transparency(theme_options.font_stroke_alpha_hotbar_nums)
  text:stroke_color(theme_options.font_stroke_color_red_hotbar_nums, theme_options.font_stroke_color_green_hotbar_nums,
    theme_options.font_stroke_color_blue_hotbar_nums)
  text:stroke_width(theme_options.font_stroke_width_hotbar_nums)
  text:show()
end

function ui:init_slot(row, column, theme_options)
  local slot_pos_x, slot_pos_y                = self:get_slot_xy(row, column)
  local right_slot_pos_x                      = slot_pos_x - windower.get_windower_settings().x_res + 16

  self.hotbars[row].slot_backgrounds[column]  = images.new(table.copy(images_setup, true))
  self.hotbars[row].slot_icons[column]        = images.new(table.copy(images_setup, true))
  self.hotbars[row].slot_overlay[column]      = images.new(table.copy(overlay_images_setup, true))
  self.hotbars[row].slot_recasts[column]      = images.new(table.copy(images_setup, true))
  self.hotbars[row].slot_frames[column]       = images.new(table.copy(images_setup, true))

  self.hotbars[row].slot_texts[column]        = texts.new(table.copy(text_setup), true)
  self.hotbars[row].slot_cost[column]         = texts.new(table.copy(text_setup), true)
  self.hotbars[row].slot_recast_texts[column] = texts.new(table.copy(text_setup), true)
  self.hotbars[row].slot_keys[column]         = texts.new(table.copy(text_setup), true)
  self.hotbars[row].slot_outline[column]      = images.new(table.copy(outline_images_setup, true))

  self:setup_image(self.hotbars[row].slot_backgrounds[column],
    windower.addon_path .. '/themes/' .. (theme_options.slot_theme:lower()) .. '/slot.png')
  self:setup_image(self.hotbars[row].slot_icons[column], windower.addon_path .. '/images/other/blank.png')
  self:setup_image(self.hotbars[row].slot_frames[column],
    windower.addon_path .. '/themes/' .. (theme_options.frame_theme:lower()) .. '/frame.png')
  self:setup_overlay_image(self.hotbars[row].slot_overlay[column],
    windower.addon_path .. '/images/icon/custom/scroll.png')
  self:setup_outline_image(self.hotbars[row].slot_outline[column],
    windower.addon_path .. '/images/other/blank.png')


  -- SLOT TITLE TEXT --
  self:setup_names_text(self.hotbars[row].slot_texts[column], theme_options, slot_pos_x, slot_pos_y)

  -- SLOT KEYS TEXT --
  self:setup_keys_text(self.hotbars[row].slot_keys[column], theme_options, slot_pos_x, slot_pos_y)

  -- SLOT COST TEXT --
  self:setup_costs_text(self.hotbars[row].slot_cost[column], theme_options, slot_pos_x, slot_pos_y)

  -- SLOT RECAST TEXT --
  self:setup_recasts_text(self.hotbars[row].slot_recast_texts[column], theme_options, slot_pos_x, slot_pos_y)


  -- SLOT BACKGROUND --
  self.hotbars[row].slot_backgrounds[column]:alpha(theme_options.slot_opacity)
  self.hotbars[row].slot_backgrounds[column]:pos(slot_pos_x, slot_pos_y)


  -- SLOT RECASTS --
  self.hotbars[row].slot_recasts[column]:pos(slot_pos_x, slot_pos_y)
  self.hotbars[row].slot_recasts[column]:alpha(5)

  -- SLOT FRAMES --
  self.hotbars[row].slot_frames[column]:pos(slot_pos_x, slot_pos_y)

  -- SLOT ICONS
  self.hotbars[row].slot_icons[column]:pos(slot_pos_x, slot_pos_y)

  -- SLOT OVERLAY --
  if theme_options.disable_scroll == false then
    self.hotbars[row].slot_overlay[column]:pos(slot_pos_x + (17 * theme_options.slot_icon_scale),
      slot_pos_y - (2 * theme_options.slot_icon_scale))
  end

  -- SLOT OUTLINES --
  self.hotbars[row].slot_outline[column]:pos(slot_pos_x - 3, slot_pos_y - 3)

  if keyboard.hotbar_rows[row] == nil or keyboard.hotbar_rows[row][column] == nil then
    self.hotbars[row].slot_keys[column]:text("")
  else
    self.hotbars[row].slot_keys[column]:text(self:convert_modifier_string(keyboard.hotbar_rows[row][column]))
  end
end

-- Converts short-hand keyboard modifier text to appropriate long-form for display
function ui:convert_modifier_string(text)
  local msg = ''
  for i = 1, #text do
    local v = text:sub(i, i)
    if v == '^' then
      msg = msg .. 'C-'
    elseif v == '%' then
      msg = msg .. ''
    elseif v == '!' then
      msg = msg .. 'A-'
    elseif v == '@' then
      msg = msg .. 'Win-'
    elseif v == '~' then
      msg = msg .. 'S-'
    else
      msg = msg .. string.upper(v)
    end
  end
  return msg
end

function ui:setup_image(image, path)
  image:path(path)
  image:repeat_xy(1, 1)
  image:draggable(false)
  image:fit(false)
  image:alpha(255)
  image:size(ui.image_width, ui.image_height)
  image:show()
end

function ui:setup_overlay_image(image, path)
  image:path(path)
  image:repeat_xy(1, 1)
  image:draggable(false)
  image:fit(false)
  image:alpha(255)
  image:size(ui.overlay_image_width, ui.overlay_image_height)
end

function ui:setup_outline_image(image, path)
  image:path(path)
  image:repeat_xy(1, 1)
  image:draggable(false)
  image:fit(false)
  image:alpha(255)
  image:size(ui.image_width + 6, ui.image_height + 6)
  image:show()
end

function ui:setup_action_description_text(text, theme_options)
  text:bg_alpha(theme_options.font_bg_opacity_descr)
  text:bg_visible(theme_options.font_bg_enable_descr)
  text:italic(theme_options.font_italics_descr)
  text:font(theme_options.font_descr)
  text:size(theme_options.font_size_descr + 5)
  text:alpha(theme_options.font_alpha_descr)
  text:color(theme_options.font_color_red_descr, theme_options.font_color_green_descr,
    theme_options.font_color_blue_descr)
  text:stroke_transparency(theme_options.font_stroke_alpha_descr)
  text:stroke_color(theme_options.font_stroke_color_red_descr, theme_options.font_stroke_color_green_descr,
    theme_options.font_stroke_color_blue_descr)
  text:stroke_width(theme_options.font_stroke_width_descr)
  text:show()
end

function ui:setup_feedback()
  self.feedback_icon = images.new(table.copy(images_setup, true))
  self:setup_image(self.feedback_icon, windower.addon_path .. '/images/other/feedback.png')
  self.feedback.max_opacity = self.theme.feedback_max_opacity
  self.feedback.speed = self.theme.feedback_speed
  self.feedback.current_opacity = self.feedback.max_opacity
  self.feedback_icon:hide()
end

function ui:setup_names_text(text, theme_options, pos_x, pos_y)
  text:bg_alpha(theme_options.font_bg_opacity_names)
  text:bg_visible(theme_options.font_bg_enable_names)
  text:font(theme_options.font_names)
  text:size(theme_options.font_size_names * theme_options.slot_icon_scale)
  text:pos(pos_x + (theme_options.font_offset_x_names * theme_options.slot_icon_scale),
    pos_y + (theme_options.font_offset_y_names * theme_options.slot_icon_scale))
  text:alpha(255)
  text:color(theme_options.font_color_red_names, theme_options.font_color_green_names,
    theme_options.font_color_blue_names)
  text:stroke_transparency(theme_options.font_stroke_alpha_names)
  text:stroke_color(theme_options.font_stroke_color_red_names, theme_options.font_stroke_color_green_names,
    theme_options.font_stroke_color_blue_names)
  text:stroke_width(theme_options.font_stroke_width_names)
  text:show()
end

function ui:setup_keys_text(text, theme_options, pos_x, pos_y)
  text:bg_alpha(0)
  text:bg_visible(false)
  text:font(theme_options.font_keys)
  text:size(theme_options.font_size_keys * theme_options.slot_icon_scale)
  text:pos(pos_x + (theme_options.text_offset_x_keys * theme_options.slot_icon_scale),
    pos_y + (theme_options.text_offset_y_keys * theme_options.slot_icon_scale))
  text:color(theme_options.font_color_red_keys, theme_options.font_color_green_keys, theme_options.font_color_blue_keys)
  text:stroke_transparency(theme_options.font_stroke_alpha_keys)
  text:stroke_color(theme_options.font_stroke_color_red_keys, theme_options.font_stroke_color_green_keys,
    theme_options.font_stroke_color_blue_keys)
  text:stroke_width(theme_options.font_stroke_width_keys)
  text:show()
end

function ui:setup_costs_text(text, theme_options, pos_x, pos_y)
  text:alpha(255)
  text:pos(pos_x + (theme_options.text_offset_x_costs * theme_options.slot_icon_scale),
    pos_y + (theme_options.text_offset_y_costs * theme_options.slot_icon_scale))
  text:bg_alpha(0)
  text:bg_visible(false)
  text:font(theme_options.font_costs)
  text:size(theme_options.font_size_costs * theme_options.slot_icon_scale)
  text:color(theme_options.font_color_red_costs, theme_options.font_color_green_costs,
    theme_options.font_color_blue_costs)
  text:stroke_transparency(theme_options.font_stroke_alpha_costs)
  text:stroke_color(theme_options.font_stroke_color_red_costs, theme_options.font_stroke_color_green_costs,
    theme_options.font_stroke_color_blue_costs)
  text:stroke_width(theme_options.font_stroke_width_costs)
  text:show()
end

function ui:setup_recasts_text(text, theme_options, pos_x, pos_y)
  text:alpha(255)
  text:pos(pos_x + (theme_options.text_offset_x_recasts * theme_options.slot_icon_scale),
    pos_y + (theme_options.text_offset_y_recasts * theme_options.slot_icon_scale))
  text:bg_alpha(0)
  text:bg_visible(false)
  text:italic()
  text:font(theme_options.font_recasts)
  text:size(theme_options.font_size_recasts * theme_options.slot_icon_scale)
  text:color(theme_options.font_color_red_recasts, theme_options.font_color_green_recasts,
    theme_options.font_color_blue_recasts)
  text:stroke_transparency(theme_options.font_stroke_alpha_recasts)
  text:stroke_color(theme_options.font_stroke_color_red_recasts, theme_options.font_stroke_color_green_recasts,
    theme_options.font_stroke_color_blue_recasts)
  text:stroke_width(theme_options.font_stroke_width_recasts)
  text:show()
end

---------------------------------------------------------------
-- DESTROY / UNLOAD
---------------------------------------------------------------

function ui:destroy()
  database:destroy()

  self.hotbar = {
    initialized = false,
    ready = false,
    hide_hotbars = false,
    in_battle = false
  }

  self.hover_icon = {
    row = nil,
    col = nil,
    prev_row = nil,
    prev_col = nil
  }

  self.player = {}
  self.recasts = {}
  self.feedback_icon = nil
  self.hotbars = {}
  self.theme = {}
  self.feedback = {}
  self.feedback.is_active = false
  self.feedback.current_opacity = 0
  self.feedback.max_opacity = 0
  self.feedback.speed = 0
  self.disabled_slots = {}
  self.disabled_slots.actions = {}
  self.disabled_slots.no_vitals = {}
  self.disabled_slots.on_cooldown = {}
  self.outlined_slots = {}
  self.is_setup = false
  self.disabled_icons = {}
  self.current_tick = 0
  self.current_target = nil
end

---------------------------------------------------------------
-- MOVE BAR FUNCTIONS
---------------------------------------------------------------

function ui:swap_icons(swap_table)
  local source_row     = swap_table.source.row
  local source_slot    = swap_table.source.slot
  local dest_row       = swap_table.dest.row
  local dest_slot      = swap_table.dest.slot
  local tempPathSource = self.hotbars[source_row].slot_icons[source_slot]:path()
  local tempTextSource = self.hotbars[source_row].slot_texts[source_slot]:text()
  local tempPathDest   = self.hotbars[dest_row].slot_icons[dest_slot]:path()
  local tempTextDest   = self.hotbars[dest_row].slot_texts[dest_slot]:text()

  self.hotbars[dest_row].slot_texts[dest_slot]:text(tempTextSource)
  self.hotbars[dest_row].slot_icons[dest_slot]:path(tempPathSource)
  self.hotbars[source_row].slot_texts[source_slot]:text(tempTextDest)
  self.hotbars[source_row].slot_icons[source_slot]:path(tempPathDest)
end

function ui:move_icons(moved_row_info, theme_options)
  local off_x = moved_row_info.pos_x
  local off_y = moved_row_info.pos_y
  local r = moved_row_info.box_index
  self.theme.offsets[tostring(r)].OffsetX = off_x
  self.theme.offsets[tostring(r)].OffsetY = off_y
  for i = 1, self.theme.columns, 1 do
    local x, y = self:get_slot_xy(r, i)
    self.hotbars[r].slot_icons[i]:pos(x, y)
    self.hotbars[r].slot_frames[i]:pos(x, y)
    self.hotbars[r].slot_recasts[i]:pos(x, y)
    self.hotbars[r].slot_backgrounds[i]:pos(x, y)
    self.hotbars[r].slot_texts[i]:pos(x + (theme_options.font_offset_x_names * theme_options.slot_icon_scale),
      y + (theme_options.font_offset_y_names * theme_options.slot_icon_scale))
    self.hotbars[r].slot_recast_texts[i]:pos(x + (theme_options.text_offset_x_recasts * theme_options.slot_icon_scale),
      y + (theme_options.text_offset_y_recasts * theme_options.slot_icon_scale))
    self.hotbars[r].slot_keys[i]:pos(x + (theme_options.text_offset_x_keys * theme_options.slot_icon_scale),
      y + (theme_options.text_offset_y_keys * theme_options.slot_icon_scale))
    self.hotbars[r].slot_cost[i]:pos(x + (theme_options.text_offset_x_costs * theme_options.slot_icon_scale),
      y + (theme_options.text_offset_y_costs * theme_options.slot_icon_scale))
  end
  local slot_x, slot_y = self:get_slot_xy(r, 1)
  if (self.theme.offsets[tostring(r)].Vertical == true) then
    self.hotbars[r].number:pos(
      slot_x + (theme_options.text_vert_offset_x_hotbar_nums * theme_options.slot_icon_scale),
      slot_y + (theme_options.text_vert_offset_y_hotbar_nums * theme_options.slot_icon_scale))
  else
    self.hotbars[r].number:pos(
      slot_x + (theme_options.text_offset_x_hotbar_nums * theme_options.slot_icon_scale),
      slot_y + (theme_options.text_offset_y_hotbar_nums * theme_options.slot_icon_scale))
  end
  if (r == self.theme.hook_onto_bar) then
    local env_pos_x = self:get_slot_x(self.theme.hook_onto_bar, self.theme.columns + 1)
    local env_pos_y = self:get_slot_y(self.theme.hook_onto_bar, 0)

    self.active_environment['battle']:pos(
      env_pos_x + (theme_options.font_hook_offset_x_env * theme_options.slot_icon_scale),
      env_pos_y + (theme_options.font_hook_offset_y_env * theme_options.slot_icon_scale))
    self.active_environment['field']:pos(
      env_pos_x +
      ((theme_options.font_hook_offset_x_env + theme_options.font_offset_x_env) * theme_options.slot_icon_scale),
      env_pos_y +
      ((theme_options.font_hook_offset_y_env + theme_options.font_offset_y_env) * theme_options.slot_icon_scale))
    self.inventory_count:pos(env_pos_x + (theme_options.font_hook_offset_x_env * theme_options.slot_icon_scale),
      env_pos_y + (theme_options.font_hook_offset_y_env * theme_options.slot_icon_scale) +
      (35 * theme_options.slot_icon_scale))
  end
end

---------------------------------------------------------------
-- VISIBILITY FUNCTIONS
---------------------------------------------------------------

-- hide all ui components
function ui:hide()
  self.feedback_icon:hide()
  self.inventory_count:hide()
  if (self.active_environment ~= nil) then
    self.active_environment['battle']:hide()
    self.active_environment['field']:hide()
  end
  for h = 1, self.theme.hotbar_number, 1 do
    self.hotbars[h].number:hide()
    for i = 1, self.theme.columns, 1 do
      self.hotbars[h].slot_backgrounds[i]:hide()
      self.hotbars[h].slot_icons[i]:hide()
      self.hotbars[h].slot_overlay[i]:hide()
      self.hotbars[h].slot_outline[i]:hide()
      self.hotbars[h].slot_frames[i]:hide()
      self.hotbars[h].slot_recasts[i]:hide()
      self.hotbars[h].slot_texts[i]:hide()
      self.hotbars[h].slot_cost[i]:hide()
      self.hotbars[h].slot_recast_texts[i]:hide()
      self.hotbars[h].slot_keys[i]:hide()
    end
  end
end

function ui:hide_hover()
  self.hover_icon:hide()
  self.action_description:hide()
end

-- show ui components
function ui:show(player_hotbar, environment)
  if (self.active_environment ~= nil) then
    self.active_environment['battle']:show()
    self.active_environment['field']:show()
  end

  self.inventory_count:show()

  for h = 1, self.theme.rows, 1 do
    for i = 1, self.theme.columns, 1 do
      local slot = i
      local action = player_hotbar[environment]['hotbar_' .. h]['slot_' .. slot]

      self.hotbars[h].slot_icons[i]:show()
      self.hotbars[h].slot_overlay[i]:show()
      self.hotbars[h].number:show()

      if action ~= nil then
        self.hotbars[h].slot_frames[i]:show()
        self.hotbars[h].slot_backgrounds[i]:show()
        self.hotbars[h].slot_texts[i]:show()
        self.hotbars[h].slot_cost[i]:show()
        self.hotbars[h].slot_recast_texts[i]:show()
        self.hotbars[h].slot_keys[i]:show()
      else
        if self.theme.hide_empty_slots == false then self.hotbars[h].slot_backgrounds[i]:show() end
        if self.theme.hide_action_names == false then self.hotbars[h].slot_texts[i]:show() end
        if self.theme.hide_action_cost == false then self.hotbars[h].slot_cost[i]:show() end
        if self.theme.hide_recast_text == false then self.hotbars[h].slot_recast_texts[i]:show() end
        if self.theme.hide_empty_slots == false then self.hotbars[h].slot_keys[i]:show() end
      end
    end
  end
end

------------------------------------------------------
-- Actions UI --
------------------------------------------------------

-- This function loads up the actions from a specific hotbar. This is
-- called after all the preliminary setup has been done to parse and load the
-- files. This function is called on all hotbar reloads and on environment toggle.
function ui:load_player_hotbar(player_hotbar, environment, player_vitals)
  if environment == 'field' then
    self.active_environment['field']:color(255, 255, 255)
    self.active_environment['battle']:color(100, 100, 100)
  else
    self.active_environment['field']:color(100, 100, 100)
    self.active_environment['battle']:color(255, 255, 255)
  end

  -- reset disabled slots
  self.disabled_slots.actions = {}
  self.disabled_slots.no_vitals = {}
  self.disabled_slots.on_cooldown = {}

  for h = 1, self.theme.hotbar_number, 1 do
    for i = 1, self.theme.columns, 1 do
      self:load_action(h, i, environment, player_hotbar[environment]['hotbar_' .. h]['slot_' .. i], player_vitals)
    end
  end
end

-- Load a specific action into a hotbar slot.
function ui:load_action(row, slot, environment, action, player_vitals)
  local action_map = { ['ma'] = 'spells', ['ja'] = 'abilities', ['ws'] = 'weaponskills' }

  self:clear_slot(row, slot)
  self.hotbars[row].slot_overlay[slot]:path(windower.addon_path .. '/images/icons/custom/blank.png') -- Set overlay to blank
  self.hotbars[row].slot_outline[slot]:hide()


  -- if slot is empty, leave it cleared
  if action == nil then
    if self.theme.hide_empty_slots == true then
      self.hotbars[row].slot_backgrounds[slot]:hide()
      self.hotbars[row].slot_keys[slot]:hide()
    else
      self.hotbars[row].slot_backgrounds[slot]:show()
      self.hotbars[row].slot_keys[slot]:show()
    end
  else
    local learnable_spell_name = not_learned_spells_row_slot[environment .. ' ' .. row .. ' ' .. slot]

    if learnable_spell_name then
      if learnable_spell_name == action.action then
        self.hotbars[row].slot_overlay[slot]:path(windower.addon_path .. '/images/icons/custom/scroll.png')
      else
        self.hotbars[row].slot_overlay[slot]:path(windower.addon_path .. '/images/icons/custom/upgrade.png')
      end
    end

    self.hotbars[row].slot_backgrounds[slot]:show()

    -- if slot has a skill (ma, ja or ws)
    if S { 'ma', 'ja' }:contains(action.type) then
      self.hotbars[row].slot_backgrounds[slot]:alpha(200) -- ma/ja will have a more solid background
      local skill = nil
      local slot_image = nil
      if database[action.type][(action.action):lower()] ~= nil then
        skill = database[action.type][(action.action):lower()]

        -- set the icon image
        self.hotbars[row].slot_icons[slot]:path(windower.addon_path ..
          '/images/icons/' .. (string.format("%s/%05d", action_map[action.type], skill.icon)) .. '.png')

        if skill.mpcost ~= nil and skill.mpcost ~= 0 then
          -- make sure its not a scholar JA
          if not (action.type == 'ja' and skill.type == 'Scholar') then
            -- set mp cost (works for bst pets!)
            self.hotbars[row].slot_cost[slot]:color(self.theme.mp_cost_color_red, self.theme.mp_cost_color_green,
              self.theme.mp_cost_color_blue)
            self.hotbars[row].slot_cost[slot]:text(tostring(skill.mpcost))
          end
        end


        if skill.tpcost ~= nil and skill.tpcost ~= 0 then
          -- show cost of JAs that use TP
          self.hotbars[row].slot_cost[slot]:color(self.theme.tp_cost_color_red, self.theme.tp_cost_color_green,
            self.theme.tp_cost_color_blue)
          self.hotbars[row].slot_cost[slot]:text(tostring(skill.tpcost))
        end
      end

      self.hotbars[row].slot_icons[slot]:show()
      self.hotbars[row].slot_overlay[slot]:show()
    elseif action.type == 'ws' then
      local ws = database[action.type][(action.action):lower()]
      self:setup_slot_icons('/images/icons/weapons/' .. string.format("%02d", ws.icon) .. '.png', row, slot)

      -- show cost of WS
      self.hotbars[row].slot_cost[slot]:color(self.theme.tp_cost_color_red, self.theme.tp_cost_color_green,
        self.theme.tp_cost_color_blue)
      self.hotbars[row].slot_cost[slot]:text(tostring(math.max(1000, player_vitals.tp)))
      -- if action is an item/gearswap
    elseif S { 'gs', 'macro' }:contains(action.type) then
      self:setup_default_slot_icons(action.type, row, slot)
    elseif action.type == 'item' then
      local itemCount = player.item_count[action.action]
      if itemCount then
        self.hotbars[row].slot_cost[slot]:text(tostring(itemCount))
      end
      self:setup_item_slot_icons(action.action, row, slot)
    else
      -- If no custom icon is defined, just put on a cog.
      self:setup_default_slot_icons('default', row, slot)
    end

    -- if action is custom
    if action.icon ~= nil then
      self:setup_slot_icons('/images/icons/custom/' .. action.icon .. '.png', row, slot)
    end

    -- loading the overlay image last so it layers on top
    self.hotbars[row].slot_outline[slot]:path(windower.addon_path ..
      '/themes/' .. (self.theme.frame_theme:lower()) .. '/outline.png')

    self.hotbars[row].slot_frames[slot]:show()
    if action.alias and #action.alias > 0 then
      self.hotbars[row].slot_texts[slot]:text(action.alias)
    end
    self.hotbars[row].slot_keys[slot]:show()


    -- hide elements according to settings
    if self.theme.hide_action_names == true then
      self.hotbars[row].slot_texts[slot]:hide()
    else
      self.hotbars[row].slot_texts[slot]:show()
    end
    if self.theme.hide_action_cost == true then
      self.hotbars[row].slot_cost[slot]:hide()
    else
      self.hotbars[row].slot_cost[slot]:show()
    end

    -- update costs based on existing buffs
    self:update_mp_cost(row, slot, action)
    self:update_tp_cost(row, slot, action)
  end
end

function ui:clear_slot(hotbar, slot)
  self.hotbars[hotbar].slot_backgrounds[slot]:alpha(self.theme.slot_opacity)
  self.hotbars[hotbar].slot_frames[slot]:hide()
  self.hotbars[hotbar].slot_icons[slot]:path(windower.addon_path .. '/images/other/blank.png')
  self.hotbars[hotbar].slot_icons[slot]:hide()
  self.hotbars[hotbar].slot_icons[slot]:alpha(255)
  self.hotbars[hotbar].slot_icons[slot]:color(255, 255, 255)
  self.hotbars[hotbar].slot_texts[slot]:text('')
  self.hotbars[hotbar].slot_cost[slot]:alpha(255)
  self.hotbars[hotbar].slot_cost[slot]:text('')
end

function ui:setup_slot_icons(img_path, row, slot)
  self.hotbars[row].slot_icons[slot]:pos(self:get_slot_xy(row, slot))
  self.hotbars[row].slot_icons[slot]:path(windower.addon_path .. img_path)
  self.hotbars[row].slot_icons[slot]:show()
end

function ui:setup_default_slot_icons(type, row, slot)
  self.hotbars[row].slot_icons[slot]:pos(self:get_slot_xy(row, slot))
  self.hotbars[row].slot_icons[slot]:path(self.default_image_paths[type])
  self.hotbars[row].slot_icons[slot]:show()
end

function ui:setup_item_slot_icons(name, row, slot)
  local img_path = '/images/icons/custom/item.png'
  name = name:lower()

  local function fileExists(filename)
    local file = io.open(filename, "r")
    if file then
      file:close()
      return true
    else
      return false
    end
  end

  if database.items[name] ~= nil then
    local id = database.items[name].id

    if id then
      local temp_path = 'images/icons/items/' .. id .. '.bmp'
      if fileExists(windower.addon_path .. temp_path) then
        img_path = 'images/icons/items/' .. id .. '.bmp'
      end
    end
  end

  self.hotbars[row].slot_icons[slot]:pos(self:get_slot_xy(row, slot))
  self.hotbars[row].slot_icons[slot]:path(windower.addon_path .. img_path)
  self.hotbars[row].slot_icons[slot]:show()
end

function ui:update_mp_costs(player_hotbar, environment)
  if player_hotbar ~= nil then
    for h = 1, self.theme.hotbar_number, 1 do
      for i = 1, self.theme.columns, 1 do
        self:update_mp_cost(h, i, player_hotbar[environment]['hotbar_' .. h]['slot_' .. i])
      end
    end
  end
end

function ui:update_tp_costs(player_hotbar, environment)
  if player_hotbar ~= nil then
    for h = 1, self.theme.hotbar_number, 1 do
      for i = 1, self.theme.columns, 1 do
        self:update_tp_cost(h, i, player_hotbar[environment]['hotbar_' .. h]['slot_' .. i])
      end
    end
  end
end

------------------------------------------------------
-- Utility functions for HP/MP/TP/etc related things
------------------------------------------------------

function ui:update_mp(new_mp)
  current_mp = new_mp
end

function ui:update_tp(new_tp)
  current_tp = new_tp
  local player_hotbar, environment = self.player:get_hotbar_info()

  if player_hotbar ~= nil and environment ~= nil and player_hotbar[environment] ~= nil then
    for h = 1, self.theme.hotbar_number, 1 do
      for i = 1, self.theme.columns, 1 do
        self:update_tp_cost(h, i, player_hotbar[environment]['hotbar_' .. h]['slot_' .. i])
      end
    end
  end

  if (current_tp < 1000) then can_ws = false else can_ws = true end
end

function ui:update_pet_tp(current_pet_tp)
  if (current_pet_tp < 1000) then can_pet_ws = false else can_pet_ws = true end
end

function ui:update_pet_mp(new_pet_mp)
  current_pet_mp = new_pet_mp
end

-- helper function to find the real mp cost after buffs
function ui:get_true_mp_cost(skill)
  if skill ~= nil then
    if not (skill.type == 'Monster' and skill.prefix == '/pet') then
      local mp_cost = skill.mpcost

      -- Check for priority buffs
      if self.player.has_free_spell == true then
        -- Priority: Reduce any spell cost to 0
        mp_cost = 0
      elseif self.player.has_penury == true and skill.type == 'WhiteMagic' then
        -- Reduce only white spells to 50%
        mp_cost = math.ceil(mp_cost * 0.5)
      elseif self.player.has_parsimony == true and skill.type == 'BlackMagic' then
        -- Reduce only black spells to 50%
        mp_cost = math.ceil(mp_cost * 0.5)
      end

      -- Check for buffs that increase summoner spell cost
      if self.player.has_apogee == true and (skill.type == 'BloodPactRage' or skill.type == 'BloodPactWard') then
        mp_cost = math.ceil(mp_cost * 1.5)
      end

      return mp_cost
    else
      -- just return the original cost if its a beast master pet skill or
      return skill.mpcost
    end
  else
    return -1
  end
end

-- helper function to find the real tp cost after buffs of a skill
function ui:get_true_tp_cost(skill)
  if skill ~= nil then
    if skill.tpcost ~= nil and skill.tpcost ~= 0 and skill.prefix ~= '/pet' then
      local tp_cost = skill.tpcost

      if self.player.has_trance == true then
        if skill.type == 'Samba' or skill.type == 'Step' or skill.type == 'Waltz' then
          tp_cost = 0
        end
      end

      return tp_cost
    end
  else
    return -1
  end
end

function ui:update_mp_cost(row, slot, action)
  if action == nil then
    return
  end

  -- some ja have mp cost, like blood pacts
  if action.type == 'ma' or action.type == 'ja' then
    local skill = nil
    skill = database[action.type][(action.action):lower()]

    if skill and skill.mpcost ~= nil and skill.mpcost ~= 0 then
      local mp_cost = self:get_true_mp_cost(skill)
      -- update mp cost
      ui.hotbars[row].slot_cost[slot]:text(tostring(mp_cost))
    end
  end
end

function ui:update_tp_cost(row, slot, action)
  if action == nil then
    return
  end

  if action.type == 'ws' then
    -- update WS tp cost
    if self.player.has_sekko == true then
      ui.hotbars[row].slot_cost[slot]:text(tostring(1000))
    else
      ui.hotbars[row].slot_cost[slot]:text(tostring(math.max(1000, current_tp)))
    end
  elseif action.type == 'ja' then
    local skill = nil
    skill = database[action.type][(action.action):lower()]

    if skill and skill.tpcost ~= nil and skill.tpcost ~= 0 and skill.prefix ~= '/pet' then
      local tp_cost = self:get_true_tp_cost(skill)
      -- update tp cost
      ui.hotbars[row].slot_cost[slot]:text(tostring(tp_cost))
    end
  end
end

function ui:update_inventory_count()
  if self.is_setup == true then
    if self.theme.hide_inventory_count == false then
      self.playerinv = windower.ffxi.get_items()
      self:get_inventory_count(self.theme, self.inventory_count, self.playerinv.inventory)
    end
  end
end

--------------------------------------------------------------------
-- Recast timers, disabled updates, and other frame-by-frame things
--------------------------------------------------------------------

-- checks and sets disabled slot state
function ui:check_and_set_disable(action)
  local mp = self.player.vitals.mp

  if action ~= nil and is_neutralized == true then
    self.disabled_slots.actions[action.action] = true
    return true
  elseif action ~= nil then
    if action.type == 'ma' then
      if is_spell_learned(action.action) ~= true then
        self.disabled_slots.actions[action.action] = true
        return true
      elseif is_silenced == true then
        self.disabled_slots.actions[action.action] = true
        return true
      elseif is_spell_usable(action.action, self.player) ~= true then
        self.disabled_slots.actions[action.action] = true
        return true
      elseif mp < self:get_true_mp_cost(database[action.type][(action.action):lower()]) then
        self.disabled_slots.no_vitals[action.action] = true
        return true
      else
        self.disabled_slots.actions[action.action] = false
        return false
      end
    end
    if action.type == 'ws' or action.type == 'ja' or action.type == 'pet' then
      if is_amnesiad == true then
        self.disabled_slots.actions[action.action] = true
        return true
      elseif action.type == 'ws' and can_ws == false then
        self.disabled_slots.actions[action.action] = true
        return true
      elseif is_job_ability_usable(action.action, self.player) ~= true then
        self.disabled_slots.actions[action.action] = true
        return true
      elseif action.type == 'ja' and database[action.type] and database[action.type][(action.action):lower()] and database[action.type][(action.action):lower()].type ~= 'Monster' and mp < self:get_true_mp_cost(database[action.type][(action.action):lower()]) then
        -- print('Action is JA and not monster ' ..
        --   action.action .. ' ' .. database[action.type][(action.action):lower()].type)
        -- mostly for smn, who have JAs with mana cost
        self.disabled_slots.no_vitals[action.action] = true
        return true
      elseif database[action.type] and database[action.type][(action.action):lower()] and database[action.type][(action.action):lower()].oid == "72" and not can_pet_ws then
        -- disable sic when pet tp is too low
        self.disabled_slots.actions[action.action] = true
        return true
      else
        self.disabled_slots.actions[action.action] = false
        return false
      end
    else
      self.disabled_slots.actions[action.action] = false
      return false
    end
  end

  return false
end

-- checks if we're eligible to magic burst this action
function ui:check_if_burstable(action)
  if not action or not self.theme.highlight_magic_burst then
    return false
  end

  if action.type == 'ma' then
    local skill = database[action.type][(action.action):lower()]
    local mb_elements = nil

    if skill and (skill.type ~= "BlueMagic" or (skill.type == "BlueMagic" and is_burst_affinity)) then
      if not skill.targets['Enemy'] then
        return false
      end

      if self.current_target then
        mb_elements = skillchains:get_magic_burst_elements(self.current_target.id)
        return (mb_elements and mb_elements[skill.element]), skill.element
      else
        return false
      end
    end
  elseif action.type == 'ja' then
    local skill = database[action.type][(action.action):lower()]
    local mb_elements = nil

    -- if its a avatar skill, need to use data from other table
    if skill.prefix == '/pet' and skill.type == 'BloodPactRage' then
      local bloodpact = htb_bloodpacts[tonumber(skill.oid)]
      if bloodpact and bloodpact.damage == 'magic' then
        if self.current_target then
          mb_elements = skillchains:get_magic_burst_elements(self.current_target.id)
          return (mb_elements and mb_elements[tonumber(skill.element)]), skill.element
        else
          return false
        end
      end
    end
  end

  return false
end

-- checks if we're eligible to skill chain this action
function ui:check_if_chainable(action)
  if not action or not self.theme.highlight_skill_chain then
    return false
  end

  -- NOT SUPPORTED YET: sch immanence
  if action.type == 'ja' or action.type == 'ws' then
    local skill = database[action.type][(action.action):lower()]

    -- if its a bstpet skill, need to transform to our other table
    if skill.prefix == '/pet' and skill.type == 'Monster' then
      skill = database['bstpet'][(action.action):lower()]
    end

    local potentials = nil

    if skill.sc_a or skill.sc_b or skill.sc_c then
      if self.current_target then
        potentials = skillchains:get_potential_skillchains(self.current_target.id)
      else
        return false
      end
    end

    if potentials and next(potentials) ~= nil then
      if skill.sc_a and potentials[skill.sc_a] then
        return true, potentials[skill.sc_a]
      elseif skill.sc_b and potentials[skill.sc_b] then
        return true, potentials[skill.sc_b]
      elseif skill.sc_c and potentials[skill.sc_c] then
        return true, potentials[skill.sc_c]
      end
    end
  elseif action.type == "ma" then
    local skill = database[action.type][(action.action):lower()]

    if skill then
      if skill.type == "BlueMagic" and is_chain_affinity then
        if not skill.targets['Enemy'] then
          return false
        end

        local blue_sc_data = htb_blue_spells[tonumber(skill.id)]

        if blue_sc_data then
          local potentials = nil
          if blue_sc_data.skillchain_a or blue_sc_data.skillchain_b or blue_sc_data.skillchain_c then
            if self.current_target then
              potentials = skillchains:get_potential_skillchains(self.current_target.id)
            else
              return false
            end
          end

          if potentials and next(potentials) ~= nil then
            if blue_sc_data.skillchain_a and potentials[blue_sc_data.skillchain_a] then
              return true, potentials[blue_sc_data.skillchain_a]
            elseif blue_sc_data.skillchain_b and potentials[blue_sc_data.skillchain_b] then
              return true, potentials[blue_sc_data.skillchain_b]
            elseif blue_sc_data.skillchain_c and potentials[blue_sc_data.skillchain_c] then
              return true, potentials[blue_sc_data.skillchain_c]
            end
          end
        end
      elseif is_immanence and skill.type == "BlackMagic" and skill.targets["Enemy"] then
        local potentials = nil

        if self.current_target then
          potentials = skillchains:get_potential_skillchains(self.current_target.id)

          -- convert elements to properties
          local property = nil

          if skill.element == 0 then
            property = "Liquefaction"
          elseif skill.element == 1 then
            property = "Induration"
          elseif skill.element == 2 then
            property = "Detonation"
          elseif skill.element == 3 then
            property = "Scission"
          elseif skill.element == 4 then
            property = "Impaction"
          elseif skill.element == 5 then
            property = "Reverberation"
          elseif skill.element == 6 then
            property = "Transfixion"
          elseif skill.element == 7 then
            property = "Compression"
          end

          if potentials and next(potentials) ~= nil then
            if property and potentials[property] then
              return true, potentials[property]
            end
          end
        else
          return false
        end
      end
    end
  end

  return false
end

-- this function keeps recast timers up-to-date, along with disabled slots status
-- and other things that can vary with the game state that need updating.
function ui:inner_check_recasts(player_hotbar, environment, player_vitals, row, slot)
  local action = player_hotbar[environment]['hotbar_' .. row]['slot_' .. slot]
  local is_disabled = self:check_and_set_disable(action)
  local is_magic_burstable, element = self:check_if_burstable(action)
  local is_skill_chainable, chain_prop = self:check_if_chainable(action)

  -- Is this slot active? --
  if action == nil then
    self:clear_recast(row, slot)
    if self.theme.hide_empty_slots == true then
      self:hide_recast(row, slot)
    end
    return
    -- Cooldown Check - Enable/Disable Slot - Hide/Show Recasts --
  elseif (S { 'ma', 'ja', 'ws', 'pet' }:contains(action.type)) and action ~= nil then
    local skill = nil
    local action_recasts = nil
    local in_cooldown = false
    local is_outlined = true
    local is_in_seconds = false
    local bst_charge = {} -- hold data on bst charges
    local recast_time = 0

    -- if its magic, look for it in spells
    if (action.type == 'ja' or action.type == 'ma') then
      skill = database[action.type][(action.action):lower()]
      action_recasts = self.recasts[action.type]
    end

    ----------------------------
    -- Check if slot is disabled
    ----------------------------
    if skill ~= nil and skill.prefix == '/pet' and skill.type == 'Monster' then
      --bstpet abilities "cooldown" depends on if charges exist
      bst_charge.ready_cooldown = windower.ffxi.get_ability_recasts()
          [102] -- all pet abilities share sic/ready cooldown
      bst_charge.max_charge_time = bst_charge_time * 3
      bst_charge.charges = math.floor((bst_charge.max_charge_time - bst_charge.ready_cooldown) / bst_charge_time)

      --if we have enough charges then its not on "cooldown"
      if bst_charge.charges >= skill.mpcost then
        in_cooldown = false
      else
        -- print('Not enough charges.')
        self.disabled_slots.on_cooldown[action.action] = true
        in_cooldown = true
        -- determine remaining time to get enough charges
        local required_charges = skill.mpcost - bst_charge.charges
        recast_time = required_charges * bst_charge_time -
            (bst_charge_time - (bst_charge.ready_cooldown % bst_charge_time))
      end
    elseif skill ~= nil and action_recasts[tonumber(skill.icon)] ~= nil and action_recasts[tonumber(skill.icon)] > 0 then
      --check if skill is in cooldown
      -- print('All skills: Not enough charges.' .. action.action)
      self.disabled_slots.on_cooldown[action.action] = true
      in_cooldown = true
      recast_time = action_recasts[tonumber(skill.icon)]
    else
      in_cooldown = false
    end

    ----------------------------
    -- Check if slot is outlined
    ----------------------------
    if (self.theme.highlight_magic_burst and is_magic_burstable) or (self.theme.highlight_skill_chain and is_skill_chainable) then
      self.outlined_slots[action.action] = true
      is_outlined = true
    else
      self.outlined_slots[action.action] = false
      is_outlined = false
    end

    if in_cooldown == true then
      local recast_time = self:calc_recast_time(recast_time, action.type)
      self:show_recast(row, slot, recast_time)
      self:disable_slot(row, slot, action)
      self:disable_outline(row, slot, action)
    elseif is_disabled == true then
      self:clear_recast(row, slot)
      self:disable_slot(row, slot, action)
      self:disable_outline(row, slot, action)
    else
      self:clear_recast(row, slot)
      self:enable_slot(row, slot, action)

      -- not disabled, check outline status properly
      if is_outlined then
        self:enable_outline(row, slot, action)

        if self.theme.highlight_skill_chain and is_skill_chainable and chain_prop then
          if chain_prop.property == 'Transfixion' then
            self:outline_path(row, slot, 'transfixion')
          elseif chain_prop.property == 'Compression' then
            self:outline_path(row, slot, 'compression')
          elseif chain_prop.property == 'Liquefaction' then
            self:outline_path(row, slot, 'liquefaction')
          elseif chain_prop.property == 'Scission' then
            self:outline_path(row, slot, 'scission')
          elseif chain_prop.property == 'Reverberation' then
            self:outline_path(row, slot, 'reverberation')
          elseif chain_prop.property == 'Detonation' then
            self:outline_path(row, slot, 'detonation')
          elseif chain_prop.property == 'Induration' then
            self:outline_path(row, slot, 'induration')
          elseif chain_prop.property == 'Impaction' then
            self:outline_path(row, slot, 'impaction')
          elseif chain_prop.property == 'Gravitation' then
            self:outline_path(row, slot, 'gravitation')
          elseif chain_prop.property == 'Distortion' then
            self:outline_path(row, slot, 'distortion')
          elseif chain_prop.property == 'Fusion' then
            self:outline_path(row, slot, 'fusion')
          elseif chain_prop.property == 'Fragmentation' then
            self:outline_path(row, slot, 'fragmentation')
          elseif chain_prop.property == 'Light' then
            self:outline_path(row, slot, 'light')
          elseif chain_prop.property == 'Darkness' then
            self:outline_path(row, slot, 'darkness')
          elseif chain_prop.property == 'Double Light' then
            self:outline_path(row, slot, 'light')
          elseif chain_prop.property == 'Double Darkness' then
            self:outline_path(row, slot, 'darkness')
          end
        elseif self.theme.highlight_magic_burst and is_magic_burstable and element then
          if element == 6 then
            self:outline_path(row, slot, 'transfixion')
          elseif element == 7 then
            self:outline_path(row, slot, 'compression')
          elseif element == 0 then
            self:outline_path(row, slot, 'liquefaction')
          elseif element == 3 then
            self:outline_path(row, slot, 'scission')
          elseif element == 5 then
            self:outline_path(row, slot, 'reverberation')
          elseif element == 2 then
            self:outline_path(row, slot, 'detonation')
          elseif element == 1 then
            self:outline_path(row, slot, 'induration')
          elseif element == 4 then
            self:outline_path(row, slot, 'impaction')
          end
        end
      else
        self:disable_outline(row, slot, action)
      end
    end
  end
end

-- clear recast from a slot
function ui:clear_recast(r, s)
  self.hotbars[r].slot_recasts[s]:hide()
  self.hotbars[r].slot_keys[s]:show()
  self.hotbars[r].slot_recast_texts[s]:text('')
end

-- clear recast from a slot
function ui:hide_recast(r, s)
  self.hotbars[r].slot_recasts[s]:hide()
  self.hotbars[r].slot_keys[s]:hide()
  self.hotbars[r].slot_recast_texts[s]:text('')
end

function ui:show_recast(r, s, recast_time)
  self.hotbars[r].slot_recasts[s]:show()
  self.hotbars[r].slot_recast_texts[s]:text(recast_time)
  self.hotbars[r].slot_recast_texts[s]:show()
  self.hotbars[r].slot_keys[s]:hide()
end

-- calculate recast time
function ui:calc_recast_time(time, type)
  local use_minutes = { ['ja'] = true, ['ma'] = false }
  local recast = time / 60
  local minutes = math.floor(recast)

  if use_minutes[type] then
    if recast >= 10 then
      recast = string.format("%dm", recast)
    elseif recast >= 1 then
      local minutes_in_seconds = minutes * 60
      local seconds = time - minutes_in_seconds
      if recast >= 10 then
        recast = string.format("%dm", minutes)
      else
        recast = string.format(" %dm%ds", minutes, seconds)
      end
    else
      recast = string.format("%ds", recast * 60)
    end
  else
    if recast >= 60 then
      local minutes = recast / 60
      recast = string.format("%dm", minutes)
    elseif recast >= 1 then
      recast = string.format("%ds", math.round(recast * 10) * 0.1)
    else
      recast = string.format("%.1fs", math.round(recast * 10) * 0.1)
    end
  end

  return recast
end

-- check action recasts
function ui:check_recasts(player_hotbar, environment, player_vitals)
  self.current_tick = self.current_tick + 1

  ui.recasts['ja'] = windower.ffxi.get_ability_recasts()
  ui.recasts['ma'] = windower.ffxi.get_spell_recasts()
  ui.current_target = windower.ffxi.get_mob_by_target('t')

  for h = 1, self.theme.rows, 1 do
    for i = 1, self.theme.columns, 1 do
      self:inner_check_recasts(player_hotbar, environment, player_vitals, h, i)
    end
  end
end

--------------------------------------------------------------------
-- Feedback UI to indicate a icon is being pressed or hovered
--------------------------------------------------------------------

-- this shows a mouse-over effect on an icon
function ui:check_hover()
  local disabled_opacity = self.theme.disabled_slot_opacity
  local enabled_opacity = 200
  local row = self.hover_icon.row
  local col = self.hover_icon.col
  local prev_row = self.prev_row
  local prev_col = self.prev_col

  -- Handle previously hovered icon
  if prev_row and prev_col then
    local opacity = self.disabled_icons[prev_row][prev_col] == 1 and disabled_opacity or enabled_opacity
    self.hotbars[prev_row].slot_icons[prev_col]:alpha(opacity)
  end

  -- Handle currently hovered icon
  if row and col then
    if self.disabled_icons[row][col] == 0 then
      self.hotbars[row].slot_icons[col]:alpha(disabled_opacity)
      prev_row, prev_col = row, col
    end
  else
    prev_row, prev_col = nil, nil
  end

  -- Update state
  self.prev_row = prev_row
  self.prev_col = prev_col
  self.hover_icon.row = row
  self.hover_icon.col = col
end

-- trigger feedback (recent click action) to occur on the next frame
function ui:trigger_feedback(row, slot)
  self.feedback_icon:pos(self:get_slot_xy(row, slot))
  self.feedback.current_opacity = self.feedback.max_opacity -- Reset opacity on activation
  self.feedback.is_active = true
end

-- show feedback (recent click action) icon
function ui:show_feedback()
  if self.feedback.is_active and self.feedback.current_opacity > 0 then
    self.feedback.current_opacity = self.feedback.current_opacity - self.feedback.speed
    self.feedback_icon:alpha(self.feedback.current_opacity)
    self.feedback_icon:show()
  else
    self.feedback_icon:hide()
    self.feedback.is_active = false
  end
end

-- Returns true if the coordinates are over a button
function ui:hovered(x, y)
  local row, slot, found = nil, nil, false

  -- Check battle environment area
  local pos_x = self.active_environment['battle']:pos_x()
  local pos_y = self.active_environment['battle']:pos_y() - 60
  local off_x, off_y = pos_x + 60, pos_y + 100

  if x >= pos_x and x <= off_x and y >= pos_y and y <= off_y then
    return nil, 100 -- Immediate return when in battle area
  end

  -- Check hotbar slots
  for h = 1, #self.hotbars do
    for i = 1, self.theme.columns do
      pos_x, pos_y = self:get_slot_xy(h, i)
      off_x, off_y = pos_x + self.image_width, pos_y + self.image_height

      if x >= pos_x and x <= off_x and y >= pos_y and y <= off_y then
        return h, i -- Return immediately once a slot is found
      end
    end
  end

  return row, slot -- Return nil, nil if no match is found
end

-- this shows the tooltip for an action
function ui:light_up_action(x, y, row, column, player_hotbar, environment, vitals)
  local icon_x, icon_y = self:get_slot_xy(row, column)
  self.hover_icon:pos(icon_x - 1, icon_y - 1)
  self.hover_icon:alpha(255)
  self.hover_icon:show()
  local action = player_hotbar[environment]['hotbar_' .. row]['slot_' .. column]
  if (self.theme.show_description == true and action ~= nil) then
    if (S { 'ma', 'ja', 'ws', 'pet', 'item' }:contains(action.type)) then
      if (self.current_row ~= row or self.current_column ~= column) then
        local text_msg = ""
        local line_space = 6
        if (action.type == "ma") then
          text_msg = formatter.format_spell_info(database, action.action, action.target)
          self.action_description:text(text_msg)
        elseif (action.type == "ja") then
          text_msg = formatter.format_ability_info(database, action.action, action.target)
          self.action_description:text(text_msg)
        elseif (action.type == "ws") then
          text_msg = formatter.format_ws_info(database, action.action, action.target)
          self.action_description:text(text_msg)
        elseif (action.type == "item") then
          text_msg = formatter.format_item_info(database, action.action, action.target)
          self.action_description:text(text_msg)
        end
        local _, count = text_msg:gsub('\n', '\n')
        count = count + 1
        self.current_text_size = ((self.action_description:size() + line_space) * count + line_space)
        self.action_description:alpha(255)
        self.action_description:pos(x + ui.image_width, y)
        self.current_row = row
        self.current_column = column
      end
      if ((ui.scaled_pos_y - y) < self.current_text_size) then
        self.action_description:pos(x + ui.image_width, y - self.current_text_size)
      else
        self.action_description:pos(x + ui.image_width, y)
      end
      self.action_description:show()
    else
      self.action_description:hide()
    end
  end
end

--[[
    Register events
]] --
windower.register_event('incoming chunk', update_buffs)

return ui
