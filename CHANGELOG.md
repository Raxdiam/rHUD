# Changelog

## v1.5.0 (2024-1-19)
- Added localization support
- Added editable functions
  - Aircraft altitude override removed and is now an editable function
  - Contains editable function for getting fuel level
- Added config options to show fuel gauge for airplanes and watercraft
  - The built-in fuel script does not affect their fuel levels, this is meant for external fuel scripts
  - Uses the `GetFuelLevel` editable function to retrieve fuel level
- Added config options for seatbelt windshield flythrough
- Added config option for seatbelt alarm delay
- Added exported function for setting seatbelt indicator
- Sound effects now use the game's SFX volume setting

## v1.4.2 (2024-11-21)
- Fix missing confirm button for minimap config panel when enforcing colors/locations

## v1.4.1 (2024-11-13)
- Fix seatbelt unbuckling when opening pause menu
- Fix minimap not adjustable on aspect ratios other than 16:9

## v1.4.0 (2024-10-25)
- Add config option for minimap to be displayed only while in a vehicle
- Add config option for default AOP text
- Add config option to toggle seatbelt un/buckle sound effects
- Add seatbelt warning alarm sound effect and config option
- Fix seatbelt being available while driving motorbike
- Fix fuel gauge not using max vehicle fuel value when fuel sub-script is disabled
- Fix HUD being visible before player is spawned in QBCore and ESX frameworks
- Fix location info module taking unusual amount of CPU time
- Change config panel so minimap and its border can be adjusted even when location is enforced

## v1.3.1 (2024-9-25)
- Add more missing weapon icons
- Fix fuel script help text not showing configured keybinds
- Fix seatbelt sound effect playing when not in a vehicle

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