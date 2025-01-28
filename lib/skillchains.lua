-- Skillchains Singleton
-- Tracks skillchain and magic burst properties on monsters.

skillchains = {
  is_initialized = false,

  -- Data is purged every once in a while
  last_cleanup_check = os.time(),

  -- All active SC properties on targets:
  -- sc_properties[target_id] = {
  --     props = { "Liquefaction", ... },  -- Currently assigned SC props (or a single SC property if chain was formed).
  --     last_update = 0,                 -- Time (os.time) last property was added/updated.
  --     chain_formed_time = 0            -- Time (os.time) a skillchain was successfully formed (for MB window).
  -- }
  sc_properties = {},

  -- Tracks if targets have specific buffs that modify how chains work, such as blu
  -- make burst and chain affinity
  target_buffs = {},

  ----------------------------------------------------------------------
  -- Definition of valid skillchain combos:
  -- Each entry is combos[existing_prop][incoming_prop] = { property=..., level=... }
  ----------------------------------------------------------------------
  sc_combos = {
    ["Transfixion"] = {
      ["Compression"]   = { property = "Compression", level = 1 },
      ["Reverberation"] = { property = "Reverberation", level = 1 },
      ["Scission"]      = { property = "Distortion", level = 2 }, -- L2: Transfixion->Scission
    },
    ["Compression"] = {
      ["Transfixion"] = { property = "Transfixion", level = 1 },
      ["Detonation"]  = { property = "Detonation", level = 1 },
    },
    ["Liquefaction"] = {
      ["Scission"]  = { property = "Scission", level = 1 },
      ["Impaction"] = { property = "Fusion", level = 2 }, -- L2: Liquefaction->Impaction
    },
    ["Scission"] = {
      ["Liquefaction"]  = { property = "Liquefaction", level = 1 },
      ["Reverberation"] = { property = "Reverberation", level = 1 },
      ["Detonation"]    = { property = "Detonation", level = 1 },
    },
    ["Reverberation"] = {
      ["Induration"] = { property = "Induration", level = 1 },
      ["Impaction"]  = { property = "Impaction", level = 1 },
    },
    ["Detonation"] = {
      ["Scission"]    = { property = "Scission", level = 1 },
      ["Compression"] = { property = "Gravitation", level = 2 }, -- L2: Detonation->Compression
    },
    ["Induration"] = {
      ["Compression"]   = { property = "Compression", level = 1 },
      ["Impaction"]     = { property = "Impaction", level = 1 },
      ["Reverberation"] = { property = "Fragmentation", level = 2 }, -- L2: Induration->Reverberation
    },
    ["Impaction"] = {
      ["Liquefaction"] = { property = "Liquefaction", level = 1 },
      ["Detonation"]   = { property = "Detonation", level = 1 },
    },
    ["Gravitation"] = {
      ["Distortion"]    = { property = "Darkness", level = 3 },
      ["Fragmentation"] = { property = "Fragmentation", level = 3 },
    },
    ["Distortion"] = {
      ["Gravitation"] = { property = "Darkness", level = 3 },
      ["Fusion"]      = { property = "Fusion", level = 3 },
    },
    ["Fusion"] = {
      ["Gravitation"]   = { property = "Gravitation", level = 3 },
      ["Fragmentation"] = { property = "Light", level = 3 },
    },
    ["Fragmentation"] = {
      ["Distortion"] = { property = "Distortion", level = 3 },
      ["Fusion"]     = { property = "Light", level = 3 },
    },
    ["Light"] = {
      ["Light"] = { property = "Double Light", level = 4 },
    },
    ["Darkness"] = {
      ["Darkness"] = { property = "Double Darkness", level = 4 },
    },
  },

  ----------------------------------------------------------------------
  -- Mapping each SC property to the elemental alignments for magic bursts.
  ----------------------------------------------------------------------
  sc_alignments = {
    ["Transfixion"]     = { 6 },
    ["Compression"]     = { 7 },
    ["Liquefaction"]    = { 0 },
    ["Scission"]        = { 3 },
    ["Reverberation"]   = { 5 },
    ["Detonation"]      = { 2 },
    ["Induration"]      = { 1 },
    ["Impaction"]       = { 4 },
    ["Gravitation"]     = { 7, 3 },
    ["Distortion"]      = { 5, 1 },
    ["Fusion"]          = { 0, 6 },
    ["Fragmentation"]   = { 2, 4 },
    ["Light"]           = { 0, 2, 4, 6 },
    ["Darkness"]        = { 1, 3, 5, 7 },
    ["Double Light"]    = { 0, 2, 4, 6 },
    ["Double Darkness"] = { 1, 3, 5, 7 },
  },
}

----------------------------------------------------------------------
-- Initialization
----------------------------------------------------------------------
function skillchains:initialize()
  self.is_initialized = true
end

----------------------------------------------------------------------
-- Handles any incoming action packets that might form or update skillchains.
-- Logic:
--  1) If the WS didn't miss, get its SC properties (if any).
--  2) Check the time since last property on the target.
--     - If >=10 seconds, old properties are cleared.
--     - If between 3-10 seconds, attempt to form a chain.
--     - Otherwise, no chain forms, but we replace old props with new props.
----------------------------------------------------------------------
function skillchains:handle_action(packet)
  local actor_id = packet.actor_id
  local actions = packet.targets[1].actions
  if not actions or #actions == 0 then return end

  local message_id = actions[1].message
  local target_id = packet.targets[1].id

  --------------------------------------------------------------------------
  -- Weaponskills
  --------------------------------------------------------------------------
  if message_id == 185     -- weaponskill
      or message_id == 186 -- weaponskill
      or message_id == 194 -- weaponskill
      or message_id == 187 -- weaponskill
  then
    local ability_id = packet.param
    local sc_props = self:load_skillchain_properties('WEAPONSKILL', ability_id)

    if sc_props and #sc_props > 0 then
      -- Attempt to form or update skillchains
      self:attempt_skillchain(target_id, sc_props)
    end
    --------------------------------------------------------------------------
    -- Buff Tracking
    --------------------------------------------------------------------------
  elseif message_id == 100 -- uses ability (needed for blu buff tracking)
  then
    local ability_id = packet.param
    local buff_id = resources.job_abilities[ability_id].status or action.param

    if buff_id == 164 -- chain affinity
    then
      local duration = resources.job_abilities[ability_id].duration

      if not self.target_buffs[actor_id] then
        self.target_buffs[actor_id] = {}
      end

      self.target_buffs[actor_id][buff_id] = os.clock() + duration -- set the end time for the buff
    end
    --------------------------------------------------------------------------
    -- Spell Cast
    --------------------------------------------------------------------------
  elseif message_id == 2 -- uses spell for damage
  then
    local spell_id = packet.param

    if self.target_buffs[actor_id] then
      if self.target_buffs[actor_id][164] then
        -- chain affinity changes spell to a skill chain with properties
        if os.clock() < self.target_buffs[actor_id][164] then
          -- make sure the spell is eligible
          local spell = resources.spells[spell_id]
          if spell.type == "BlueMagic" then
            local sc_props = self:load_skillchain_properties('BLUEMAGIC', spell_id)
            if sc_props and #sc_props > 0 then
              -- Attempt to form or update skillchains
              self:attempt_skillchain(target_id, sc_props)
              self.target_buffs[actor_id][164] = nil
            end
          end
        end
      end
    end
  elseif message_id == 317 -- uses ability for damage
  then
    local ability_id = packet.param
    local ability = resources.job_abilities[ability_id]

    if ability then
      if ability.type == 'BloodPactRage' then
        local sc_props = self:load_skillchain_properties('JOBABILITY', ability_id)

        if sc_props and #sc_props > 0 then
          -- Attempt to form or update skillchains
          self:attempt_skillchain(target_id, sc_props)
        end
      end
    end
  end
end

----------------------------------------------------------------------
-- Attempt skillchain logic
--  1) If more than 10s since last update, clear old props; set new.
--  2) If between 3s and 10s, check combos (old -> new) in order. If a valid combo is found:
--       - set resulting property
--       - record chain_formed_time
--     If no combo found, replace old with new.
--  3) If less than 3s, simply replace (no chain).
----------------------------------------------------------------------
function skillchains:attempt_skillchain(target_id, incoming_properties)
  local now = os.time()

  if not self.sc_properties[target_id] then
    self.sc_properties[target_id] = {
      props = {},
      last_update = 0,
      chain_formed_time = 0,
    }
  end

  local data = self.sc_properties[target_id]
  local time_diff = now - data.last_update

  -- Clear if older than 10s
  if time_diff >= 10 then
    data.props = {}
    data.chain_formed_time = 0
  end

  -- Attempt chain only if time between 3s and 10s
  local can_chain = (time_diff >= 3 and time_diff <= 10 and #data.props > 0)
  if can_chain then
    local sc_formed = false
    local new_chain_property = nil

    -- Check existing props in order -> incoming props in order
    for _, oldprop in ipairs(data.props) do
      for _, incprop in ipairs(incoming_properties) do
        local combo = self.sc_combos[oldprop] and self.sc_combos[oldprop][incprop]
        if combo then
          sc_formed = true
          new_chain_property = combo.property
          break
        end
      end
      if sc_formed then break end
    end

    if sc_formed and new_chain_property then
      -- We have a chain, so set the property to the skillchain result
      --windower.add_to_chat(8, 'Formed! ' .. new_chain_property)
      data.props = { new_chain_property }
      data.chain_formed_time = now
    else
      --windower.add_to_chat(8, 'Failed to form, no valid combo')
      -- No chain formed, just replace old
      data.props = incoming_properties
    end
  else
    -- If less than 3s or more than 10s, no chain. Just replace old props.
    --windower.add_to_chat(8, 'Failed to form, too fast or too slow')
    data.props = incoming_properties
  end

  data.last_update = now
end

----------------------------------------------------------------------
-- Return all potential skillchains if the monster has existing properties.
-- It tells for each possible incoming property what chain and level would form.
-- Example:
--   If target has {"Liquefaction"}, get_potential_skillchains might return:
--     {
--       ["Scission"]   = { property="Scission",   level=1 },
--       ["Impaction"]  = { property="Fusion",     level=2 }
--     }
--   If no valid combos exist, returns {}.
----------------------------------------------------------------------
function skillchains:get_potential_skillchains(target_id)
  local info = {}
  local data = self.sc_properties[target_id]
  if not data or #data.props == 0 then
    return info
  end

  local now = os.time()
  local time_diff = now - data.last_update

  -- If it's been <3s or >10s, no valid chain combos are possible.
  if time_diff < 3 or time_diff > 10 then
    -- Optionally clear stale data if >10s
    if time_diff > 10 then
      self.sc_properties[target_id] = nil
    end
    return info
  end

  -- Otherwise, build a list of all potential combos for the existing props.
  for _, oldprop in ipairs(data.props) do
    local combos_for_old = self.sc_combos[oldprop]
    if combos_for_old then
      for incprop, combo_result in pairs(combos_for_old) do
        info[incprop] = combo_result
      end
    end
  end

  return info
end

----------------------------------------------------------------------
-- Returns a set of elements that can magic burst on the target
-- if we're within 10 seconds of a successfully formed skillchain.
-- Example: if the target's property is "Fusion" and chain_formed_time is within 10s,
--   this returns { [0] = true, [6] = true }. Otherwise returns nil or empty set.
----------------------------------------------------------------------
function skillchains:get_magic_burst_elements(target_id)
  local data = self.sc_properties[target_id]
  if not data or #data.props == 0 then
    return nil
  end

  -- Only within 10s of an actual chain formation
  local now = os.time()
  if (now - data.chain_formed_time) > 10 then
    return nil
  end

  local sc_property = data.props[1]
  local alignments = self.sc_alignments[sc_property]
  if alignments then
    local result_set = {}
    for _, element in ipairs(alignments) do
      result_set[element] = true
    end
    return result_set
  end
  return nil
end

----------------------------------------------------------------------
-- Loads SC properties from a given weapon skill ID.
-- This uses the resources tables for official skillchain hints.
----------------------------------------------------------------------
function skillchains:load_skillchain_properties(type, ability_id)
  local properties = {}

  -- Example logic: we assume resources exist that define skillchain_a, etc.
  if type == 'WEAPONSKILL' then
    local ws = nil
    if ability_id < 256 then
      ws = resources.weapon_skills[ability_id]
    else
      ws = resources.monster_abilities[ability_id]
    end

    if ws and ws.skillchain_a then table.insert(properties, ws.skillchain_a) end
    if ws and ws.skillchain_b then table.insert(properties, ws.skillchain_b) end
    if ws and ws.skillchain_c then table.insert(properties, ws.skillchain_c) end
  elseif type == 'BLUEMAGIC' then
    local blu_data = htb_blue_spells[ability_id]
    if blu_data and blu_data.skillchain_a then table.insert(properties, blu_data.skillchain_a) end
    if blu_data and blu_data.skillchain_b then table.insert(properties, blu_data.skillchain_b) end
    if blu_data and blu_data.skillchain_c then table.insert(properties, blu_data.skillchain_c) end
  elseif type == 'JOBABILITY' then
    local ja = resources.job_abilities[ability_id]
    if ja and ja.skillchain_a then table.insert(properties, ja.skillchain_a) end
    if ja and ja.skillchain_b then table.insert(properties, ja.skillchain_b) end
    if ja and ja.skillchain_c then table.insert(properties, ja.skillchain_c) end
  end

  return properties
end

----------------------------------------------------------------------
-- Adds a skillchain property directly (bypassing chain logic).
-- Typically used for debug or forced sets.
----------------------------------------------------------------------
function skillchains:add_skillchain_property(target_id, sc_property)
  if not self.sc_properties[target_id] then
    self.sc_properties[target_id] = {
      props = {},
      last_update = 0,
      chain_formed_time = 0,
    }
  end
  table.insert(self.sc_properties[target_id].props, sc_property)
  self.sc_properties[target_id].last_update = os.time()
end

----------------------------------------------------------------------
-- Helper function to remove stale entries from sc_properties
----------------------------------------------------------------------
function skillchains:cleanup_old_data()
  local now = os.time()
  local cutoff = 10 -- anything older than 10s is irrelevant

  for target_id, data in pairs(self.sc_properties) do
    -- If the last update is > 10 seconds old, remove it
    if (now - data.last_update) >= cutoff then
      self.sc_properties[target_id] = nil
    end
  end
end

----------------------------------------------------------------------
-- Register the windower event (example code) to handle incoming action packets.
----------------------------------------------------------------------
windower.register_event('incoming chunk', function(id, data)
  if skillchains.is_initialized and id == 0x028 then
    local packet = windower.packets.parse_action(data)
    skillchains:handle_action(packet)
  end
end)

----------------------------------------------------------------------
-- This runs every frame (~30 FPS). We only do a cleanup check every 30 mins.
----------------------------------------------------------------------
windower.register_event('prerender', function()
  local now = os.time()
  local THIRTY_MINUTES = 30 * 60

  if (now - skillchains.last_cleanup_check) >= THIRTY_MINUTES then
    skillchains:cleanup_old_data()
    skillchains.last_cleanup_check = now
  end
end)

return skillchains
