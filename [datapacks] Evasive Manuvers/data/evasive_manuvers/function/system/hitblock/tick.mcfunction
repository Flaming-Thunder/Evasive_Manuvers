
execute if score @s EvasiveManuvers.PosX matches -10.. run scoreboard players remove @s EvasiveManuvers.PosX 1
execute if score @s EvasiveManuvers.PosY matches 0.. run scoreboard players remove @s EvasiveManuvers.PosY 1

execute if score @s EvasiveManuvers.PosX matches 0 at @s run data modify entity @s transformation set value {left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[-.25,0.05,-.25]}
execute if score @s EvasiveManuvers.PosX matches 0 at @s run setblock ~ ~ ~ air
execute if score @s EvasiveManuvers.PosY matches -1 if score @s EvasiveManuvers.PosX matches -10 run tag @s remove EvasiveManuvers.activated


execute if score @s EvasiveManuvers.PosY matches 0 at @s run function evasive_manuvers:system/hitblock/setblock with entity @s

#execute at @s unless entity @s[tag=EvasiveManuvers.activated] run tellraw @a[distance=..2] {nbt:"teleport_duration",entity:"@s"}




