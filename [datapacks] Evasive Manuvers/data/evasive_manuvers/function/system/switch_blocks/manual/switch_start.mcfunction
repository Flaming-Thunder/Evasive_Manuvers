data modify entity @s interpolation_duration set value 4
data modify entity @s transformation.scale set value [0,0,0]
data modify entity @s transformation.translation set value [0,0.25,0]

scoreboard players set @s EvasiveManuvers.PosX 8

scoreboard players add @s EvasiveManuvers.SwitchState 1
scoreboard players operation @s EvasiveManuvers.SwitchState %= #2 rMath




