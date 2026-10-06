

execute store result score #x rMath run data get entity @s Pos[0] 1000
execute store result score #z rMath run data get entity @s Pos[2] 1000

scoreboard players operation #x rMath %= #1000 rMath
scoreboard players operation #z rMath %= #1000 rMath

scoreboard players set #temp1 rMath 562
scoreboard players set #temp2 rMath 438

execute store result score #temp3 rMath run attribute @s scale get 300

scoreboard players operation #temp1 rMath += #temp3 rMath
scoreboard players operation #temp2 rMath -= #temp3 rMath

execute if block ~ ~ ~ #chains[axis=y] if score #x rMath > #temp2 rMath if score #x rMath < #temp1 rMath if score #z rMath > #temp2 rMath if score #z rMath < #temp1 rMath run return 1

execute if block ~ ~ ~ #chains[axis=x] if score #z rMath > #temp2 rMath if score #z rMath < #temp1 rMath run return 1
execute if block ~ ~ ~ end_rod[facing=west] if score #z rMath > #temp2 rMath if score #z rMath < #temp1 rMath run return 1
execute if block ~ ~ ~ end_rod[facing=east] if score #z rMath > #temp2 rMath if score #z rMath < #temp1 rMath run return 1

execute if block ~ ~ ~ #chains[axis=z] if score #x rMath > #temp2 rMath if score #x rMath < #temp1 rMath run return 1
execute if block ~ ~ ~ end_rod[facing=north] if score #x rMath > #temp2 rMath if score #x rMath < #temp1 rMath run return 1
execute if block ~ ~ ~ end_rod[facing=south] if score #x rMath > #temp2 rMath if score #x rMath < #temp1 rMath run return 1

execute if block ~ ~ ~ #evasive_manuvers:grabable_copper run return 1



