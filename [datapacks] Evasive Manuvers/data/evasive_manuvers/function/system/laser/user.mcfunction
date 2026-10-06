
execute if predicate evasive_manuvers:input_forward on vehicle on vehicle unless score @s EvasiveManuvers.PosY matches 0 at @s run rotate @s ~ ~-2
execute if predicate evasive_manuvers:input_left on vehicle on vehicle unless score @s EvasiveManuvers.PosZ matches 0 at @s run rotate @s ~-2 ~
execute if predicate evasive_manuvers:input_right on vehicle on vehicle unless score @s EvasiveManuvers.PosZ matches 0 at @s run rotate @s ~2 ~
execute if predicate evasive_manuvers:input_backward on vehicle on vehicle unless score @s EvasiveManuvers.PosY matches 0 at @s run rotate @s ~ ~2



execute on vehicle on vehicle at @s on passengers if entity @s[tag=EvasiveManuvers.Beam] run rotate @s ~ ~

#execute on vehicle on vehicle run data modify entity 00000001-0000-0002-0000-000300000004 Rotation[0] set from entity @s Rotation[1]
#execute on vehicle on vehicle on passengers if entity @s[tag=EvasiveManuvers.Beam] at 00000001-0000-0002-0000-000300000004 store result entity @s transformation.translation[1] float 0.0005 run function buttons:system/math/trigo/cos
