
execute store result score #temp rMath run data get entity @s data.step
scoreboard players remove #temp rMath 1
execute store result entity @s data.step int 1 run scoreboard players get #temp rMath

execute if score #temp rMath matches 0.. at @s run tp ^ ^ ^30


execute if score #temp rMath matches -1 run function evasive_manuvers:system/checkpoint/death_camera/last


execute if score #temp rMath matches ..-2 as @a[tag=EvasiveManuvers.MyOwner] run function evasive_manuvers:system/player/checkpoint/respawn
execute if score #temp rMath matches ..-2 run kill @s 


data modify entity @s data.cldwn set from entity @s teleport_duration

