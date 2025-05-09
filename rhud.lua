--- @meta

--- @class Info
--- @field id string The ID of the info pill.
--- @field visible boolean Whether the info pill is visible.
--- @field label string? The label of the info pill.
--- @field style string? The CSS style of the info pill.
--- @field content string The content of the info pill.
--- @field wrap boolean? Whether the content should be wrapped in its default container.
--- @field update_visible fun(self, value: boolean) Update visibility of the info pill.
--- @field update_label fun(self, value: string) Update the label of the info pill.
--- @field update_style fun(self, value: string) Update the CSS of the info pill.
--- @field update_content fun(self, value: string, wrap?: boolean) Update the content of the info pill.
--- @field update_wrap fun(self, value: boolean) Update whether the content should be wrapped in its default container.

--- @class InfoOptions
--- @field id string The ID of the info pill.
--- @field visible boolean Whether the info pill is visible.
--- @field label string? The label of the info pill.
--- @field style string? The CSS style of the info pill.
--- @field content string The content of the info pill.
--- @field wrap boolean? Whether the content should be wrapped in its default container.

--- @class Postal
--- @field code string The postal code.
--- @field dist number The distance to the postal code.

--- @class rHUDClient
--- @field set_indicator_seatbelt fun(self: rHUDClient, seatbelt: boolean)
--- @field set_indicator_anchor fun(self: rHUDClient, anchor: boolean)
--- @field get_visible fun(self: rHUDClient): boolean Get whether the HUD is visible.
--- @field set_visible fun(self: rHUDClient, visible: boolean) Set whether the HUD is visible.
--- @field toggle_visible fun(self: rHUDClient) Toggle the visibility of the HUD.
--- @field create_info fun(self: rHUDClient, options: InfoOptions): Info Create a custom segment in the info module.
--- @field remove_info fun(self: rHUDClient, id: string) Remove a custom segment from the info module.
--- @field get_postal fun(self: rHUDClient): string Get the nearest postal code of the player's current location.

--- @class rHUDServer
--- @field get_aop fun(self: rHUDServer): string Get the AOP status text.
--- @field set_aop fun(self: rHUDServer, text: string) Set the AOP status text.
--- @field clear_aop fun(self: rHUDServer) Clear the AOP status text.
--- @field get_peacetime fun(self: rHUDServer): boolean Get whether PeaceTime is active.
--- @field set_peacetime fun(self: rHUDServer, active: boolean) Set whether PeaceTime is active.
--- @field toggle_peacetime fun(self: rHUDServer) Toggle the PeaceTime status.
--- @field get_priority fun(self: rHUDServer): 'active' | 'onhold' | 'cooldown' | 'inactive' Get the current priority status.
--- @field set_priority fun(self: rHUDServer, status: 'active' | 'onhold' | 'cooldown' | 'inactive', text?: string) Set the current priority status.
--- @field get_postal fun(self: rHUDServer, post: vector2): Postal Get the nearest postal code of the specified location.
