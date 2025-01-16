## Localization <sup><sub>*v1.5.0+*</sub></sup>
Locale files are stored in `rhud/locale` as JSON files. By default rHUD is localized to English (`en-US.json`).\
To translate rHUD:
1. **Copy and Rename the Locale File**\
Make a copy of `en-US.json` within the `rhud/locale` folder and rename it to the relevant [locale code](/docs/reference/locale_codes.md). Renaming the file to a locale code is optional but recommended.
2. **Translate the Values, not the Keys**\
Since the contents of the locale file is JSON, it is made up of keys and values.\
For example, the line `"config.title": "Config",` is a key and value pair. `"config.title"` is the key, and `"Config"` is the value.\
Translate **only the values**; the keys must remain the same.
3. **Edit the Config File**\
Open rHUD's `config.lua` file and change the `general > locale` option to the name of the locale file you just created, but without the `.json` extension.\
For example, if file's name is `de-DE.json`, then the option in the config should be `'de-DE'`.
    ```lua
    config = {
      version = 6, -- Config version. Do not change.
      general = {
        ...
        locale = 'de-DE' -- Locale for all in-game text for this script (default: 'en-US')
    ...
    ```
