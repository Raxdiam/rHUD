-- For text formatting, refer to: https://docs.fivem.net/docs/game-references/text-formatting/
-- For keybindings, refer to: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
-- For control codes, refer to: https://docs.fivem.net/docs/game-references/controls/

config = {
  version = 6, -- [!code --] Config version. Do not change.
  version = 7, -- [!code ++] Config version. Do not change.
  general = {
    tick_delay = 500, -- Time in milliseconds between update ticks (default: 500, does not affect the other tick_delay options)
    chat_messages = false, -- Use chat for messages instead of notifications above the minimap (default: false)
    chat_prefix = "[^1r^0HUD]", -- Prefix for chat messages (default: "[^1r^0HUD]")
    locale = 'en-US' -- Locale for all in-game text (default: 'en-US')
  },
  modules = { -- HUD Modules
    config_panel = { -- HUD Module for Config Panel
      enabled = true, -- Enable the config panel (default: true)
      -- Enforcing can be used to apply a specific style or layout to all players when they join the server.
      -- Once enabled, the respective options cannot be changed in the config panel by anyone, including those with the "config" permission.
      -- Only those with the "export" permission can export options in the config panel to be enforced.
      enforce_location = false, -- [!code --] Enforce exported location options (default: false)
      enforce_layout = false, -- [!code ++] Enforce exported layout options (default: false)
      enforce_colors = false -- Enforce exported color options (default: false)
    },
    minimap = { -- HUD Module for Minimap
      enabled = true, -- Enable custom rectangular minimap shape (default: true)
      border = true, -- Show a border around the minimap (default: true)
      vehicle_only = false -- Only show the minimap while in a vehicle (default: false)
    },
    land = { -- HUD Module for Landcraft
      enabled = true, -- Enable the landcraft HUD module (default: true)
      tick_delay = 50, -- Time in milliseconds between module update ticks (default: 50)
      use_kmph = false, -- Use km/h instead of mph (default: false)
      passenger = { -- [!code ++] Passenger options (note: these options will NOT make it so passengers can use the seatbelt)
        show = false, -- [!code ++] Show landcraft HUD module to passengers (default: false)
        seatbelt_only = false -- [!code ++] Show only the seatbelt indicator to passengers when `show` is true (default: false)
      }, -- [!code ++]
      seatbelt = { -- Landcraft built-in seatbelt script
        enabled = true, -- Enable the built-in seatbelt script (default: true)
        flythrough_speed = 30, -- Minimum speed required to fly through the windshield in configured units (default: 30)
        flythrough_modifier = 5.0, -- (default: 5.0)
        alarm_sfx = true, -- Enable alarm sound effect when seatbelt is not buckled (default: true)
        alarm_speed = 5, -- Vehicle speed to trigger the alarm (default: 5)
        alarm_delay = 5, -- Time in seconds to delay the alarm after the trigger speed (default: 5)
        buckle_sfx = true, -- Enable buckle and unbuckle sound effects (default: true)
        keybind = 'K' -- Default seatbelt keybind (default: 'K')
      },
      fuel = { -- Landcraft specific options for the built-in fuel script
        refuel_enabled = true, -- Allow refueling using the controls set in the options for the built-in fuel script (default: true)
        warn_at = 30 -- Percentage of fuel remaining to turn indicator on (default: 30)
      }
    },
    air = { -- HUD Module for Aircraft
      enabled = true, -- Enable the aircraft HUD module (default: true)
      tick_delay = 5, -- Time in milliseconds between module update ticks (default: 5)
      show_passenger = false, -- [!code ++] Show aircraft HUD module to passenger (default: false)
      altimeter = { -- Altitude meter options
        unit = "ft", -- Unit of measurement (default: "ft", options: "ft", "m", "custom")
        unit_custom = 3.281, -- When `unit` is set to "custom", this is the multiplier to convert meters to the custom unit (default: 3.281)
      },
      fuel = { -- Aircraft specific options for the built-in fuel script
        airplane_gauge = false, -- Show fuel gauge for airplanes, fuel level not affected by built-in fuel script (default: false)
        refuel_enabled = true, -- Allow refueling using the controls set in the options for the built-in fuel script (default: true)
        warn_at = 20 -- Percentage of fuel remaining to turn indicator on (default: 20)
      }
    },
    water = { -- HUD Module for Watercraft
      enabled = true, -- Enable watercraft HUD module (default: true)
      tick_delay = 50, -- Time in milliseconds between module update ticks (default: 50)
      show_passenger = false, -- [!code ++] Show watercraft HUD module to passengers (default: false)
      anchor = { -- Watercraft built-in anchor script
        enabled = true, -- [!code ++] Enable the built-in anchor script (default: true)
        use_combo = true, -- Use key combination to toggle the anchor (default: true)
        combo = {
          keybind = 133, -- Key to press (default: 133, A)
          keybind_alt = 36 -- Key to hold (default: 36, LEFT CTRL)
        },
        -- Keybind can only be used if `use_combo` is set to false
        keybind = 'PAGEDOWN', -- Default anchor keybind (default: 'PAGEDOWN')
        slack = 0.5, -- Anchor slack (default: 0.5)
        driving_resistance = 0.97, -- [!code ++] How much the boat slows when driving (higher = less resistance, default: 0.97)
        drift_resistance = 0.90, -- [!code ++] How much the boat slows when drifting (higher = less resistance, default: 0.90)
        distance_factor = 0.05, -- [!code ++] How much distance affects resistance (higher = more effect, default: 0.05)
        pull_strength = 0.01, -- [!code ++] Force pulling back to anchor point (default: 0.01)
        correction_strength = 0.03, -- [!code ++] Force applied to correct significant drift (default: 0.03)
        min_pull_strength = 0.01, -- [!code ++] Minimum force when stationary (default: 0.01)
      },
      fuel = { -- Watercraft specific options for the built-in fuel script
        gauge = false, -- Show fuel gauge, fuel level not affected by built-in fuel script (default: false)
      }
    },
    info = { -- HUD Module for Roleplay Info
      enabled = true, -- Enable the info HUD module (default: true)
      postal = { -- Postals sub-module
        enabled = true, -- Enable the postal sub-module (default: true)
        tick_delay = 100, -- Time in milliseconds between sub-module update ticks (default: 100)
        route_remove_range = 100.0, -- The range from the route destination to remove the waypoint (default: 100.0)
        messages = {
          route_deleted = "Route for postal code ~y~{code}~s~ deleted", -- {code} = Relevant postal code
          route_not_found = "Could not find postal code ~y~{code}~s~", -- {code} = Relevant postal code
          route_created = "Route for postal code ~y~{code}~s~ created" -- {code} = Relevant postal code
        }
      },
      location = { -- Location sub-module
        enabled = true, -- Enable the location sub-module (default: true)
        tick_delay = 500, -- [!code ++] Time in milliseconds between sub-module update ticks (default: 500)
        vehicle_only = true, -- Function only when player is in a vehicle (default: true)
        show_passenger = false, -- [!code ++] Show passenger location info when `vehicle_only` is true (default: false)
      },
      aop = { -- AOP sub-module
        enabled = true, -- Enable the AOP sub-module (default: true)
        default_text = "None", -- Default AOP text (default: "None")
        notify_all = true, -- [!code ++] Notify all players when AOP status is set (default: true)
        messages = {
          no_permission = "~r~You do not have permission to set AOP",
          status = "AOP set to ~b~{text}~s~" -- [!code ++] {text} = AOP status text
        }
      },
      peacetime = { -- PeaceTime sub-module
        enabled = true, -- Enable the PeaceTime sub-module (default: true)
        disable_weapons = true, -- Disable weapons firing when in PeaceTime (default: true)
        default_speed_limit = 60, -- Speed limit in mph (default: 60)
        messages = {
          no_permission = "~r~You do not have permission to set PeaceTime.",
          violence = "~r~Violence is not allowed during PeaceTime.",
          speeding = "~r~You are speeding during PeaceTime. Please slow down."
        }
      },
      priority = { -- Priority sub-module
        enabled = true, -- Enable the priority sub-module (default: true)
        cooldown = 20, -- Priority cooldown time in minutes (default: 20)
        messages = {
          in_progress = "~r~Priority call in progress. ~s~All other calls are on hold until conclusion.",
          cooldown = "~r~Priority call concluded. ~s~Civilians must wait ~r~{time}~s~ minutes before conducting another call.", -- {time} = Cooldown time in minutes
          onhold = "~r~Priority calls on hold. ~s~No new priority calls allowed until this restriction is lifted.", -- [!code ++]
          cooldown_in_progress = "~r~Priority call in cooldown. ~s~Please wait ~r~{time}~s~ minutes before conducting another call.", -- [!code ++] {time} = Remaining cooldown time in minutes
          priority_no_permission = "~r~You do not have permission to conduct a priority call.",
          cooldown_no_permission = "~r~You do not have permission to conlude a priority call.",
          onhold_no_permission = "~r~You do not have permission to put a priority call on hold.",
          reset_no_permission = "~r~You do not have permission to reset a priority call."
        }
      }
    },
    player = { -- HUD Module for Player
      enabled = true, -- Enable the player HUD module (default: true)
      tick_delay = 100, -- Time in milliseconds between module update ticks (default: 100)
      weapon_icon = true, -- Show weapon icon (default: true)
      messages = {
        healed_self = "Health restored.",
        healed_by = "Health restored by ~b~{player}~s~.", -- {player} = Player name
        healed_other = "Restored ~b~{player}~s~'s health.", -- {player} = Player name
        heal_other_denied = "~r~You do not have permission to heal another player.",
        heal_self_denied = "~r~You do not have permission to heal yourself.",
        heal_not_found = "~r~Heal failed. ~s~Player with ID ~r~{pid}~s~ does not exist." -- [!code ++] {pid} = Player ID
      }
    },
    speed_limit = { -- [!code ++] HUD Module for Posted Speed Limit
      enabled = true, -- [!code ++] Enable the speed limit HUD module (default: true)
      show_passenger = false -- [!code ++] Show speed limit for passengers (default: false)
    } -- [!code ++]
  },
  permissions = {
    aop = {
      enabled = true, -- Enable AOP permissions (default: true)
      set_aop = "rhud.aop" -- Name of the permission (default: "rhud.aop")
    },
    peacetime = {
      enabled = true, -- Enable PeaceTime permissions (default: true)
      set_peacetime = "rhud.peacetime" -- Name of the permission (default: "rhud.peacetime")
    },
    priority = {
      enabled = false, -- Enable priority permissions (default: false)
      priority = "rhud.priority", -- [!code --] Name of permission to use the "/priority" command (default: "rhud.priority")
      priority = "rhud.priority.active", -- [!code ++] Name of permission to use the "/priority" command (default: "rhud.priority.active")
      cooldown = "rhud.priority.cooldown", -- Name of permission to use the "/priority cooldown" command (default: "rhud.priority.cooldown")
      onhold = "rhud.priority.onhold", -- Name of permission to use the "/priority onhold" command (default: "rhud.priority.onhold")
      reset = "rhud.priority.reset" -- Name of permission to use the "/priority reset" command (default: "rhud.priority.reset")
    },
    player = {
      enabled = true, -- Enable player permissions (default: true)
      heal_self = "rhud.player.heal_self", -- Name of permission to use the "/heal" command to heal yourself (default: "rhud.player.heal_self")
      heal_other = "rhud.player.heal_other" -- Name of permission to use the "/heal" command to heal another player (default: "rhud.player.heal_other")
    },
    config_panel = {
      config = "rhud.config", -- [!code --] Name of permission to open the config panel (default: "rhud.config", note: players with this perm will be able to open the config panel even if "modules > config_panel > enabled" is false)
      config = "rhud.config.open", -- [!code ++] Name of permission to open the config panel (default: "rhud.config.open")
      export = "rhud.config.export", -- Name of permission to export from the config panel (default: "rhud.config.export", note: exported options are used for "modules > config_panel > enforce_layout and enforce_colors")
      location = "rhud.config.location", -- [!code --] Name of permission to allow location options in the config panel (default: "rhud.config.location")
      layout = "rhud.config.layout", -- [!code ++] Name of permission to allow layout options in the config panel (default: "rhud.config.layout")
      color = "rhud.config.color" -- Name of permission to allow color options in the config panel (default: "rhud.config.color")
    }
  },
  fuel = { -- Built-in fuel script options
    enabled = true, -- Enable the built-in fuel script (default: true)
    create_blips = true, -- Create blips for fuel stations (default: true)
    refuel_rate = 1.0, -- Refuel rate modifier (default: 1.0)
    drain_rate = 1.0, -- Drain rate modifier (default: 1.0)
    acceleration_offset = 0.0002, -- Acceleration offset (default: 0.0002)
    traction_offset = 0.0001, -- Traction offset (default: 0.0001)
    rpm_offset = 0.0005, -- RPM offset (default: 0.0005)
    market_visible_range = 250.0, -- Visibility range for fuel station blips (default: 250.0)
    controls = {
      engine_toggle = 86, -- Default: 86, E
      refuel = 22 -- Default: 22, SPACEBAR
    }
  },
  control = { -- Built-in vehicle control script
    enabled = true, -- Enable the built-in vehicle control script (default: true)
    hazard = 'BACK', -- Default hazard lights keybind (default: 'BACK')
    leftSignal = 'MINUS', -- [!code --] Default left turn signal keybind (default: 'MINUS')
    left_signal = 'MINUS', -- [!code ++] Default left turn signal keybind (default: 'MINUS')
    rightSignal = 'EQUALS' -- [!code --] Default right turn signal keybind (default: 'EQUALS')
    right_signal = 'EQUALS', -- [!code ++] Default right turn signal keybind (default: 'EQUALS')
    engine = 'U' -- [!code ++] Default engine toggle keybind (default: 'U')
  }
}
