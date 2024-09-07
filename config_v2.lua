-- For text formatting, refer to: https://docs.fivem.net/docs/game-references/text-formatting/
-- For control codes, refer to: https://docs.fivem.net/docs/game-references/controls/

config = {
  version = 2, -- Config version. Do not change.
  general = {
    tick_delay = 50, -- Time in milliseconds between update ticks (default: 50, does not affect the other tick_delay options)
    chat_messages = false, -- Use chat for messages instead of notifications above the minimap (default: false)
    chat_prefix = "[^1r^0HUD]", -- Prefix for chat messages (default: "[rHUD]")
    minimap_border = true, -- Show a border around the minimap (default: true)
    minimap_vanilla = false -- Use the vanilla/base-game minimap (default: false)
  },
  modules = { -- HUD Modules
    config_panel = { -- HUD Module for Config Panel
      enabled = true, -- Enable the config panel (default: true)
      -- Enforcing can be used to apply a specific style/layout to all players upon entering the server. Uses the exported options from the config panel, accessible with the "export" permission.
      enforce_location = false, -- Enforce exported location options (default: false)
      enforce_colors = false -- Enforce exported color options (default: false)
    },
    land = { -- HUD Module for Landcraft
      enabled = true, -- Enable the landcraft HUD module (default: true)
      tick_delay = 50, -- Time in milliseconds between module update ticks (default: 50)
      use_kmph = false, -- Use km/h instead of mph (default: false)
      seatbelt = { -- Landcraft seatbelt sub-script
        enabled = true,
        keybind = 311 -- Default: 311, K
      },
      fuel = { -- Landcraft specific options for the fuel sub-script
        refuel_enabled = true, -- Allow refueling using the controls set in the options for the fuel sub-script (default: true)
        warn_at = 30 -- Percentage of fuel remaining to turn indicator on (default: 30)
      }
    },
    air = { -- HUD Module for Aircraft
      enabled = true, -- Enable the aircraft HUD module (default: true)
      tick_delay = 5, -- Time in milliseconds between module update ticks (default: 5)
      fuel = { -- Only applies to helicopters
        refuel_enabled = true, -- Allow refueling using the controls set in the options for the fuel sub-script (default: true)
        warn_at = 20 -- Percentage of fuel remaining to turn indicator on (default: 20)
      }
    },
    water = { -- HUD Module for Watercraft
      enabled = true, -- Enable watercraft HUD module (default: true)
      tick_delay = 50, -- Time in milliseconds between module update ticks (default: 50)
      anchor = { -- Watercraft anchor sub-script
        use_combo = true, -- Use key combination to toggle the anchor (default: true)
        combo = {
          keybind = 133, -- Key to press (default: 133, A)
          keybind_alt = 36 -- Key to hold (default: 36, LEFT CTRL)
        },
        keybind = 317, -- Used if key combo is disabled (default: 317, PAGE DOWN)
        slack = 0.5 -- Anchor slack (default: 0.5)
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
        detect_vehicle = true -- Function only when player is in a vehicle (default: true)
      },
      aop = { -- AOP sub-module
        enabled = true, -- Enable the AOP sub-module (default: true)
        messages = {
          no_permission = "~r~You do not have permission to set AOP"
        }
      },
      peacetime = { -- PeaceTime sub-module
        enabled = true, -- Enable the PeaceTime sub-module (default: true)
        disable_weapons = true, -- Disable weapons firing when in PeaceTime (default: true)
        default_speed_limit = 60, -- Speed limit in mph (default: 60)
        messages = {
          no_permission = "~r~You do not have permission to set PeaceTime.",
          violence = "~r~Violence is not allowed during Peacetime.",
          speeding = "~r~You are speeding during Peacetime. Please slow down.",
        }
      },
      priority = { -- Priority sub-module
        enabled = true, -- Enable the priority sub-module (default: true)
        cooldown = 20, -- Priority cooldown time in minutes (default: 20)
        messages = {
          in_progress = "~r~Priority call in progress. ~s~All other calls are on hold until conclusion.",
          cooldown = "~r~Priority call concluded. ~s~Civilians must wait ~r~{time}~s~ minutes before conducting another call.", -- {time} = Cooldown time in minutes
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
      messages = {
        healed_self = "Health restored.",
        healed_by = "Health restored by ~b~{player}~s~.", -- {player} = Player name
        healed_other = "Restored ~b~{player}~s~'s health.", -- {player} = Player name
        heal_other_denied = "~r~You do not have permission to heal another player.",
        heal_self_denied = "~r~You do not have permission to heal yourself."
      }
    }
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
      priority = "rhud.priority", -- Name of permission to use the "/priority" command (default: "rhud.priority")
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
      config = "rhud.config", -- Name of permission to open the config panel (default: "rhud.config", note: players with this perm will be able to open the config panel even if "modules > config_panel > enabled" is false)
      export = "rhud.config.export", -- Name of permission to export from the config panel (default: "rhud.config.export", note: exported options are used for "modules > config_panel > enforce_location and enforce_colors")
      location = "rhud.config.location", -- Name of permission to allow location options in the config panel (default: "rhud.config.location")
      color = "rhud.config.color" -- Name of permission to allow color options in the config panel (default: "rhud.config.color")
    }
  },
  fuel = { -- Fuel sub-script options
    enabled = true, -- Enable the fuel sub-script (default: true)
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
  control = { -- Vehicle control sub-script
    enabled = true, -- Enable the vehicle control sub-script (default: true)
    hazard = 202, -- Default: 202, BACKSPACE
    leftSignal = 84, -- Default: 84, -
    rightSignal = 83 -- Default: 83, =
  }
}
