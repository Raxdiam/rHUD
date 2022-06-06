# Export: `land`
Example:
```lua
local speed = exports.rhud:land('speed')
```

## Prarameters
|Name|Type|Description|
|-|-|-|
|`prop`|`string`|Name of a property in the Land module|

## `prop` Values
|Name|Type|Example|Description
|-|-|-|-|
|`speed`|`integer`|`0`|Speed of the vehicle
|`gear`|`string`|`"N"`|Vehicle's current gear
|`engine`|`boolean`|`true\|false`|Whether the engine is on or off
|`engineHealth`|`decimal`|`0.0`|Vehicle's engine health
|`engineState`|`enum\|integer`|`EngineState.Good\|Warning\|Critical` or `0\|1\|2`|State of the vehicle's engine
|`fuel`|`decimal`|`0.0`|Amount of fuel in the vehicle
|`seatbelt`|`boolean`|`true\|false`|Whether the seatbelt is on or off
|`doorFrontLeft`|`boolean`|`true\|false`|Whether the front left door is open or closed
|`doorFrontRight`|`boolean`|`true\|false`|Whether the front right door is open or closed
|`doorBackLeft`|`boolean`|`true\|false`|Whether the back left door is open or closed
|`doorBackRight`|`boolean`|`true\|false`|Whether the back right door is open or closed
|`hazard`|`boolean`|`true\|false`|Whether the hazard lights are on or off
|`beamsLow`|`boolean`|`true\|false`|Whether the low beams are on or off
|`beamsHigh`|`boolean`|`true\|false`|Whether the high beams are on or off
|`sigLeft`|`boolean`|`true\|false`|Whether the left turn signal is on or off
|`sigRight`|`boolean`|`true\|false`|Whether the right turn signal is on or off
