local keyboard = {}

keyboard.default_keybinds = require('../data/default_keybinds')

keyboard.hotbar_rows = {}
keyboard.parsed_keybinds = {}
--[[
	Parse Keybinds:

	Description:
		Converts the keybinds in data/keybinds.lua into an input which can be used for
		binding keys with Windower.
	Legends:
		1. %: Keybinding is only registered when the chat window is *not* open
		2. ^: CTRL
		3. !: Alt
		4. ~: Shift
		For example: "%~1" means "Shift+1" when chat window is not active.
--]]
--

function keyboard:set_bindings(bindings)
  self.hotbar_rows = {}

  -- transform to format we expect
  local row1 = {}

  table.insert(row1, bindings.R1.C01)
  table.insert(row1, bindings.R1.C02)
  table.insert(row1, bindings.R1.C03)
  table.insert(row1, bindings.R1.C04)
  table.insert(row1, bindings.R1.C05)
  table.insert(row1, bindings.R1.C06)
  table.insert(row1, bindings.R1.C07)
  table.insert(row1, bindings.R1.C08)
  table.insert(row1, bindings.R1.C09)
  table.insert(row1, bindings.R1.C10)
  table.insert(row1, bindings.R1.C11)
  table.insert(row1, bindings.R1.C12)

  local row2 = {}

  table.insert(row2, bindings.R2.C01)
  table.insert(row2, bindings.R2.C02)
  table.insert(row2, bindings.R2.C03)
  table.insert(row2, bindings.R2.C04)
  table.insert(row2, bindings.R2.C05)
  table.insert(row2, bindings.R2.C06)
  table.insert(row2, bindings.R2.C07)
  table.insert(row2, bindings.R2.C08)
  table.insert(row2, bindings.R2.C09)
  table.insert(row2, bindings.R2.C10)
  table.insert(row2, bindings.R2.C11)
  table.insert(row2, bindings.R2.C12)

  local row3 = {}

  table.insert(row3, bindings.R3.C01)
  table.insert(row3, bindings.R3.C02)
  table.insert(row3, bindings.R3.C03)
  table.insert(row3, bindings.R3.C04)
  table.insert(row3, bindings.R3.C05)
  table.insert(row3, bindings.R3.C06)
  table.insert(row3, bindings.R3.C07)
  table.insert(row3, bindings.R3.C08)
  table.insert(row3, bindings.R3.C09)
  table.insert(row3, bindings.R3.C10)
  table.insert(row3, bindings.R3.C11)
  table.insert(row3, bindings.R3.C12)

  local row4 = {}

  table.insert(row4, bindings.R4.C01)
  table.insert(row4, bindings.R4.C02)
  table.insert(row4, bindings.R4.C03)
  table.insert(row4, bindings.R4.C04)
  table.insert(row4, bindings.R4.C05)
  table.insert(row4, bindings.R4.C06)
  table.insert(row4, bindings.R4.C07)
  table.insert(row4, bindings.R4.C08)
  table.insert(row4, bindings.R4.C09)
  table.insert(row4, bindings.R4.C10)
  table.insert(row4, bindings.R4.C11)
  table.insert(row4, bindings.R4.C12)

  local row5 = {}

  table.insert(row5, bindings.R5.C01)
  table.insert(row5, bindings.R5.C02)
  table.insert(row5, bindings.R5.C03)
  table.insert(row5, bindings.R5.C04)
  table.insert(row5, bindings.R5.C05)
  table.insert(row5, bindings.R5.C06)
  table.insert(row5, bindings.R5.C07)
  table.insert(row5, bindings.R5.C08)
  table.insert(row5, bindings.R5.C09)
  table.insert(row5, bindings.R5.C10)
  table.insert(row5, bindings.R5.C11)
  table.insert(row5, bindings.R5.C12)

  local row6 = {}

  table.insert(row6, bindings.R6.C01)
  table.insert(row6, bindings.R6.C02)
  table.insert(row6, bindings.R6.C03)
  table.insert(row6, bindings.R6.C04)
  table.insert(row6, bindings.R6.C05)
  table.insert(row6, bindings.R6.C06)
  table.insert(row6, bindings.R6.C07)
  table.insert(row6, bindings.R6.C08)
  table.insert(row6, bindings.R6.C09)
  table.insert(row6, bindings.R6.C10)
  table.insert(row6, bindings.R6.C11)
  table.insert(row6, bindings.R6.C12)

  table.insert(self.hotbar_rows, row1)
  table.insert(self.hotbar_rows, row2)
  table.insert(self.hotbar_rows, row3)
  table.insert(self.hotbar_rows, row4)
  table.insert(self.hotbar_rows, row5)
  table.insert(self.hotbar_rows, row6)
end

function keyboard:cast_all_to_strings(settings)
  settings.Keybinds.R1.C01 = tostring(settings.Keybinds.R1.C01)
  settings.Keybinds.R1.C02 = tostring(settings.Keybinds.R1.C02)
  settings.Keybinds.R1.C03 = tostring(settings.Keybinds.R1.C03)
  settings.Keybinds.R1.C04 = tostring(settings.Keybinds.R1.C04)
  settings.Keybinds.R1.C05 = tostring(settings.Keybinds.R1.C05)
  settings.Keybinds.R1.C06 = tostring(settings.Keybinds.R1.C06)
  settings.Keybinds.R1.C07 = tostring(settings.Keybinds.R1.C07)
  settings.Keybinds.R1.C08 = tostring(settings.Keybinds.R1.C08)
  settings.Keybinds.R1.C09 = tostring(settings.Keybinds.R1.C09)
  settings.Keybinds.R1.C10 = tostring(settings.Keybinds.R1.C10)
  settings.Keybinds.R1.C11 = tostring(settings.Keybinds.R1.C11)
  settings.Keybinds.R1.C12 = tostring(settings.Keybinds.R1.C12)
  settings.Keybinds.R2.C01 = tostring(settings.Keybinds.R2.C01)
  settings.Keybinds.R2.C02 = tostring(settings.Keybinds.R2.C02)
  settings.Keybinds.R2.C03 = tostring(settings.Keybinds.R2.C03)
  settings.Keybinds.R2.C04 = tostring(settings.Keybinds.R2.C04)
  settings.Keybinds.R2.C05 = tostring(settings.Keybinds.R2.C05)
  settings.Keybinds.R2.C06 = tostring(settings.Keybinds.R2.C06)
  settings.Keybinds.R2.C07 = tostring(settings.Keybinds.R2.C07)
  settings.Keybinds.R2.C08 = tostring(settings.Keybinds.R2.C08)
  settings.Keybinds.R2.C09 = tostring(settings.Keybinds.R2.C09)
  settings.Keybinds.R2.C10 = tostring(settings.Keybinds.R2.C10)
  settings.Keybinds.R2.C11 = tostring(settings.Keybinds.R2.C11)
  settings.Keybinds.R2.C12 = tostring(settings.Keybinds.R2.C12)
  settings.Keybinds.R3.C01 = tostring(settings.Keybinds.R3.C01)
  settings.Keybinds.R3.C02 = tostring(settings.Keybinds.R3.C02)
  settings.Keybinds.R3.C03 = tostring(settings.Keybinds.R3.C03)
  settings.Keybinds.R3.C04 = tostring(settings.Keybinds.R3.C04)
  settings.Keybinds.R3.C05 = tostring(settings.Keybinds.R3.C05)
  settings.Keybinds.R3.C06 = tostring(settings.Keybinds.R3.C06)
  settings.Keybinds.R3.C07 = tostring(settings.Keybinds.R3.C07)
  settings.Keybinds.R3.C08 = tostring(settings.Keybinds.R3.C08)
  settings.Keybinds.R3.C09 = tostring(settings.Keybinds.R3.C09)
  settings.Keybinds.R3.C10 = tostring(settings.Keybinds.R3.C10)
  settings.Keybinds.R3.C11 = tostring(settings.Keybinds.R3.C11)
  settings.Keybinds.R3.C12 = tostring(settings.Keybinds.R3.C12)
  settings.Keybinds.R4.C01 = tostring(settings.Keybinds.R4.C01)
  settings.Keybinds.R4.C02 = tostring(settings.Keybinds.R4.C02)
  settings.Keybinds.R4.C03 = tostring(settings.Keybinds.R4.C03)
  settings.Keybinds.R4.C04 = tostring(settings.Keybinds.R4.C04)
  settings.Keybinds.R4.C05 = tostring(settings.Keybinds.R4.C05)
  settings.Keybinds.R4.C06 = tostring(settings.Keybinds.R4.C06)
  settings.Keybinds.R4.C07 = tostring(settings.Keybinds.R4.C07)
  settings.Keybinds.R4.C08 = tostring(settings.Keybinds.R4.C08)
  settings.Keybinds.R4.C09 = tostring(settings.Keybinds.R4.C09)
  settings.Keybinds.R4.C10 = tostring(settings.Keybinds.R4.C10)
  settings.Keybinds.R4.C11 = tostring(settings.Keybinds.R4.C11)
  settings.Keybinds.R4.C12 = tostring(settings.Keybinds.R4.C12)
  settings.Keybinds.R5.C01 = tostring(settings.Keybinds.R5.C01)
  settings.Keybinds.R5.C02 = tostring(settings.Keybinds.R5.C02)
  settings.Keybinds.R5.C03 = tostring(settings.Keybinds.R5.C03)
  settings.Keybinds.R5.C04 = tostring(settings.Keybinds.R5.C04)
  settings.Keybinds.R5.C05 = tostring(settings.Keybinds.R5.C05)
  settings.Keybinds.R5.C06 = tostring(settings.Keybinds.R5.C06)
  settings.Keybinds.R5.C07 = tostring(settings.Keybinds.R5.C07)
  settings.Keybinds.R5.C08 = tostring(settings.Keybinds.R5.C08)
  settings.Keybinds.R5.C09 = tostring(settings.Keybinds.R5.C09)
  settings.Keybinds.R5.C10 = tostring(settings.Keybinds.R5.C10)
  settings.Keybinds.R5.C11 = tostring(settings.Keybinds.R5.C11)
  settings.Keybinds.R5.C12 = tostring(settings.Keybinds.R5.C12)
  settings.Keybinds.R6.C01 = tostring(settings.Keybinds.R6.C01)
  settings.Keybinds.R6.C02 = tostring(settings.Keybinds.R6.C02)
  settings.Keybinds.R6.C03 = tostring(settings.Keybinds.R6.C03)
  settings.Keybinds.R6.C04 = tostring(settings.Keybinds.R6.C04)
  settings.Keybinds.R6.C05 = tostring(settings.Keybinds.R6.C05)
  settings.Keybinds.R6.C06 = tostring(settings.Keybinds.R6.C06)
  settings.Keybinds.R6.C07 = tostring(settings.Keybinds.R6.C07)
  settings.Keybinds.R6.C08 = tostring(settings.Keybinds.R6.C08)
  settings.Keybinds.R6.C09 = tostring(settings.Keybinds.R6.C09)
  settings.Keybinds.R6.C10 = tostring(settings.Keybinds.R6.C10)
  settings.Keybinds.R6.C11 = tostring(settings.Keybinds.R6.C11)
  settings.Keybinds.R6.C12 = tostring(settings.Keybinds.R6.C12)
end

function keyboard:parse_keybinds()
  self.parsed_keybinds = {}
  for row_key, row_value in pairs(self.hotbar_rows) do
    for col_key, col_value in pairs(row_value) do
      col_value = string.lower(col_value)
      col_value = string.gsub(col_value, " ", "")
      col_list = string.split(col_value, "+")
      if table.getn(col_list) ~= 1 then
        for string_value in ipairs(col_list) do
          --print("string_value: " ..col_list[string_value])
          if (col_list[string_value] ~= "number") then
            if (col_list[string_value]:contains("ctrl")) then
              col_list[string_value] = "^"
            elseif (col_list[string_value]:contains("shift")) then
              col_list[string_value] = "%~"
            elseif (col_list[string_value]:contains("alt")) then
              col_list[string_value] = "!"
            end
          end
        end
        col_value = table.concat((col_list), "")
      else
        if type(col_list[1]) == "number" then
          col_value = "%" .. tostring(col_list[1])
        else
          col_value = "%" .. col_value
        end
      end
      if col_value then
        col_value = col_value:gsub('eq', '=')
        col_value = col_value:gsub('#', '')
      end
      row_value[col_key] = col_value
    end
    self.parsed_keybinds[row_key] = row_value
  end
end

-- bind keys --
function keyboard:bind_keys(rows, columns)
  for r = 1, rows do
    for s = 1, columns do
      if (self.parsed_keybinds[r] ~= nil and self.parsed_keybinds[r][s] ~= nil) then
        windower.send_command('bind ' .. keyboard.parsed_keybinds[r][s] .. ' htb execute ' .. r .. ' ' .. s)
      end
    end
  end
end

function keyboard:unbind_keys(rows, columns)
  for r = 1, rows do
    for s = 1, columns do
      if (keyboard.parsed_keybinds[r] ~= nil and keyboard.parsed_keybinds[r][s] ~= nil) then
        windower.send_command('unbind ' .. keyboard.parsed_keybinds[r][s])
      end
    end
  end
end

return keyboard
