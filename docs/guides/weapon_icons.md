## Editing Weapon Icons <sup><sub>*v1.3.0+*</sub></sup>
- Weapon icons are stored as PNG files in `rhud/ui/icons`
- Weapon icons will always appear as a solid color with an outline in-game; any details in the image itself will not be visible
- The image format of the icon does not matter so long as there are transparent pixels around the shape
   - If a format that does not support transparency is used, it will appear as a solid-colored rectangle in-game

### How to add icons
1. Edit `rhud/data/weapons.json` to include the ID (i.e. spawn code) of your weapon
2. Rename the image file to your weapon's ID followed by the image extension (ex: `weapon_myweapon.png`)
3. Move or copy the image file to `rhud/ui/icons`