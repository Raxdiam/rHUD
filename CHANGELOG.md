# Changelog

## v1.3.0 (2024-9-18)
- Add missing weapon icons
- Add support for custom icons
- Update icon handling so that no icon appears if there isn't one available
- Use FiveM's keybind system for seatbelt, anchor, and other vehicle controls
  - These can now be re-bound per client via FiveM's keybinds menu
  - The only unaffected keys are those in the optional fuel script
- Fix bug where disabling a module would disable subsequent modules in the load order

## v1.2.0 (2024-9-7)
- Added config option to hide the currently held weapon icon
- Added config option for aircraft altitude measurement unit
- Added config option to override the aircraft altitude calculation
- Fixed bug where player module wasn't being hidden when disabled in the config

## v1.1.0 (2022-6-5):
- PeaceTime script/command (/peacetime or /pt)
- Location options to config panel for all modules
- Colors and locations enforcement options for server owners
- No longer using base-game minimap by default, so that it can be 
  moved and rescaled
- Permissions for config panel (open, export, location, color)
- Prefix option for chat messages
- Keybind to open config panel (configure in-game via Settings > 
  Keybinds > FiveM > rHUD Config)