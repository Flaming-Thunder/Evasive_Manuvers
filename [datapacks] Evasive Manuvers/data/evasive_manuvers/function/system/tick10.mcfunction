
scoreboard players add Tick.Cycle10 rMath 1
scoreboard players operation Tick.Cycle10 rMath %= #4 rMath

execute if score Tick.Cycle10 rMath matches 0 as @e[tag=EvasiveManuvers.PowerUp] run data modify entity @s transformation.right_rotation set value [0,1,0,1]
execute if score Tick.Cycle10 rMath matches 1 as @e[tag=EvasiveManuvers.PowerUp] run data modify entity @s transformation.right_rotation set value [0,1,0,0]
execute if score Tick.Cycle10 rMath matches 2 as @e[tag=EvasiveManuvers.PowerUp] run data modify entity @s transformation.right_rotation set value [0,-1,0,1]
execute if score Tick.Cycle10 rMath matches 3 as @e[tag=EvasiveManuvers.PowerUp] run data modify entity @s transformation.right_rotation set value [0,0,0,1]




execute if score AutoBlockSwitch.State rMath matches 0 as @e[type=block_display,tag=EvasiveManuvers.AutoSwitchBlock] run function evasive_manuvers:system/switch_blocks/auto/tick0
execute if score AutoBlockSwitch.State rMath matches 1 as @e[type=block_display,tag=EvasiveManuvers.AutoSwitchBlock] run function evasive_manuvers:system/switch_blocks/auto/tick1

execute if score Tick.Cycle10 rMath matches 0 as @e[type=block_display,tag=EvasiveManuvers.ManualSwitchBlock] run function evasive_manuvers:system/switch_blocks/manual/auto_tick

execute as @e[tag=EvasiveManuvers.Laser] if score @s EvasiveManuvers.PosX = @s EvasiveManuvers.PosY on passengers unless entity @s[nbt={interpolation_duration:10}] run data modify entity @s interpolation_duration set value 10

execute if score Tick.Cycle10 rMath matches 0 as @e[type=item_display,tag=EvasiveManuvers.Laser] on passengers if entity @s[tag=EvasiveManuvers.Beam] run data modify entity @s transformation.left_rotation set value [0.5,-.5,-.5,.5]
execute if score Tick.Cycle10 rMath matches 1 as @e[type=item_display,tag=EvasiveManuvers.Laser] on passengers if entity @s[tag=EvasiveManuvers.Beam] run data modify entity @s transformation.left_rotation set value [0,.70710678118,.70710678118,0]
execute if score Tick.Cycle10 rMath matches 2 as @e[type=item_display,tag=EvasiveManuvers.Laser] on passengers if entity @s[tag=EvasiveManuvers.Beam] run data modify entity @s transformation.left_rotation set value [.5,.5,.5,.5]
execute if score Tick.Cycle10 rMath matches 3 as @e[type=item_display,tag=EvasiveManuvers.Laser] on passengers if entity @s[tag=EvasiveManuvers.Beam] run data modify entity @s transformation.left_rotation set value [.70710678118,0,0,.70710678118]

