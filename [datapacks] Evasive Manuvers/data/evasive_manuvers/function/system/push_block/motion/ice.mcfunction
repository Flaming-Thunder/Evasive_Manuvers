
execute unless block ~ ~-0.1 ~ #ice run return fail

attribute @s friction_modifier base set 0
attribute @s air_drag_modifier base set 0

return 1

#execute if block ~ ~-0.1 ~ blue_ice store result entity @s Motion[0] double 0.000001 run data get entity @s Motion[0] 1111123
#execute if block ~ ~-0.1 ~ blue_ice store result entity @s Motion[2] double 0.000001 run data get entity @s Motion[2] 1111123
#
#execute if block ~ ~-0.1 ~ packed_ice store result entity @s Motion[0] double 0.000001 run data get entity @s Motion[0] 1121327
#execute if block ~ ~-0.1 ~ packed_ice store result entity @s Motion[2] double 0.000001 run data get entity @s Motion[2] 1121327
#
#execute if block ~ ~-0.1 ~ ice store result entity @s Motion[0] double 0.000001 run data get entity @s Motion[0] 1121327
#execute if block ~ ~-0.1 ~ ice store result entity @s Motion[2] double 0.000001 run data get entity @s Motion[2] 1121327
#
