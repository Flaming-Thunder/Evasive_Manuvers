rotate @s ~ ~



data modify entity @s interpolation_duration set value 0
execute store result entity @s transformation.scale[1] float 0.1 run scoreboard players get #count rMath
execute store result entity @s transformation.translation[2] float 0.05 run scoreboard players get #count rMath



#data modify entity 00000001-0000-0002-0000-000300000004 Rotation[0] set from entity @s Rotation[1]
#execute at 00000001-0000-0002-0000-000300000004 store result entity @s transformation.translation[1] float 0.0005 run function buttons:system/math/trigo/cos





