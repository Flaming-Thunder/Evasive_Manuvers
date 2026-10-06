

execute store result score #temp rMath run data get entity @s Rotation[0]
scoreboard players operation #temp rMath += @s EvasiveManuvers.PosY
scoreboard players add #temp rMath 180
scoreboard players operation #temp rMath %= #360 rMath
scoreboard players remove #temp rMath 180


execute store result entity 00000001-0000-0002-0000-000300000004 Rotation[0] float 1 run scoreboard players get #temp rMath

execute rotated as 00000001-0000-0002-0000-000300000004 run rotate @s ~ 0
execute rotated as @s on passengers run rotate @s ~ 0

execute on passengers run data modify entity @s response set value 0b


scoreboard players set @s EvasiveManuvers.PosX 6

