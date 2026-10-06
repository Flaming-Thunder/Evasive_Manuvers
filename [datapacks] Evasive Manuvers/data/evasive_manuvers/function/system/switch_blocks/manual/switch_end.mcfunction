execute as @e[type=block_display,tag=EvasiveManuvers.BlockSwitcher] run data modify entity @s interpolation_duration set value 4
execute as @e[type=block_display,tag=EvasiveManuvers.BlockSwitcher] run data modify entity @s transformation.scale set value [0.5,0.5,0.5]
execute as @e[type=block_display,tag=EvasiveManuvers.BlockSwitcher] run data modify entity @s transformation.translation set value [-0.25,0,-0.25]
execute as @e[type=block_display,tag=EvasiveManuvers.BlockSwitcher] if score @s EvasiveManuvers.SwitchState matches 0 run data modify entity @s block_state.Name set value "pale_oak_wood"
execute as @e[type=block_display,tag=EvasiveManuvers.BlockSwitcher] if score @s EvasiveManuvers.SwitchState matches 1 run data modify entity @s block_state.Name set value "stripped_pale_oak_wood"




