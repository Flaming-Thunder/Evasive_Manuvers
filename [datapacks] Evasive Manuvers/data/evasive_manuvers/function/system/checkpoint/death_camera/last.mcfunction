
execute store result score #temp1 rMath run data get entity @s teleport_duration
scoreboard players set #temp2 rMath 20
scoreboard players operation #temp2 rMath %= #temp1 rMath
execute store result entity @s teleport_duration int 1 run scoreboard players get #temp1 rMath

scoreboard players operation #search EvasiveManuvers.ElementID = @s EvasiveManuvers.CheckPointID
execute at @e[type=item_display,tag=EvasiveManuvers.Checkpoint,predicate=evasive_manuvers:search/element_id] run tp @s ~ ~2 ~ ~ ~

