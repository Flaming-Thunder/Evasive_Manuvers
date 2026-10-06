execute if entity @s[tag=EvasiveManuvers.On] at @s run setblock ~ ~ ~ stripped_pale_oak_wood

execute if entity @s[tag=EvasiveManuvers.Off] at @s run setblock ~ ~ ~ air

execute if score @s EvasiveManuvers.SwitchState matches 1 run function evasive_manuvers:system/switch_blocks/manual/post_switch


