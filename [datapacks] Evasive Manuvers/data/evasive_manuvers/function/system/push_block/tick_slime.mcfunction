rotate @s 0 0

attribute @s friction_modifier base reset
attribute @s air_drag_modifier base reset

execute at @s unless entity @a[distance=..48] run return fail


tag @s add this

data modify storage math:data Pos set from entity @s Pos

execute store result score #Motion EvasiveManuvers.PosX run data get storage math:data Pos[0] 1000
execute store result score #Motion EvasiveManuvers.PosY run data get storage math:data Pos[1] 1000
execute store result score #Motion EvasiveManuvers.PosZ run data get storage math:data Pos[2] 1000

scoreboard players operation #temp EvasiveManuvers.PosX = #Motion EvasiveManuvers.PosX
scoreboard players operation #temp EvasiveManuvers.PosY = #Motion EvasiveManuvers.PosY
scoreboard players operation #temp EvasiveManuvers.PosZ = #Motion EvasiveManuvers.PosZ

scoreboard players operation #Motion EvasiveManuvers.PosX -= @s EvasiveManuvers.PosX
scoreboard players operation #Motion EvasiveManuvers.PosY -= @s EvasiveManuvers.PosY
scoreboard players operation #Motion EvasiveManuvers.PosZ -= @s EvasiveManuvers.PosZ

scoreboard players operation @s EvasiveManuvers.PosX = #temp EvasiveManuvers.PosX
scoreboard players operation @s EvasiveManuvers.PosY = #temp EvasiveManuvers.PosY
scoreboard players operation @s EvasiveManuvers.PosZ = #temp EvasiveManuvers.PosZ

scoreboard players operation #Motion EvasiveManuvers.PosX *= #1000 rMath
scoreboard players operation #Motion EvasiveManuvers.PosY *= #1000 rMath
scoreboard players operation #Motion EvasiveManuvers.PosZ *= #1000 rMath

scoreboard players operation #Motion EvasiveManuvers.PosX /= gametime.delta.tick rMath
scoreboard players operation #Motion EvasiveManuvers.PosY /= gametime.delta.tick rMath
scoreboard players operation #Motion EvasiveManuvers.PosZ /= gametime.delta.tick rMath

execute unless score #Motion EvasiveManuvers.PosX matches 0 run tag @s remove EvasiveManuvers.Movable
execute unless score #Motion EvasiveManuvers.PosY matches 0 run tag @s remove EvasiveManuvers.Movable
execute unless score #Motion EvasiveManuvers.PosZ matches 0 run tag @s remove EvasiveManuvers.Movable

execute at @s run function evasive_manuvers:system/push_block/check

#execute unless entity @s[tag=EvasiveManuvers.Movable] at @s if loaded ~ ~ ~ run function evasive_manuvers:system/push_block/motion/test



execute if score #Motion EvasiveManuvers.PosX matches -70..70 if score #Motion EvasiveManuvers.PosY matches 0 if score #Motion EvasiveManuvers.PosZ matches -70..70 if entity @s[tag=!EvasiveManuvers.Movable] at @s unless block ~ ~ ~ lava unless block ~ ~ ~ water run function evasive_manuvers:system/push_block/immo

#execute if score #Motion EvasiveManuvers.PosY matches ..-300 at @s positioned ~-0.5 ~ ~-0.5 as @a[dx=0] run function evasive_manuvers:api/player/health/damage {amount:1}


tag @s remove this

