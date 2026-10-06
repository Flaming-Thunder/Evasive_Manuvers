
execute store result score #x rMath run data get entity @s Pos[0] 1000
execute store result score #y rMath run data get entity @s Pos[1] 1000
execute store result score #z rMath run data get entity @s Pos[2] 1000


scoreboard players operation #x rMath += #Motion EvasiveManuvers.PosX
scoreboard players operation #y rMath += #Motion EvasiveManuvers.PosY
scoreboard players operation #z rMath += #Motion EvasiveManuvers.PosZ


execute as @e[type=item_display,tag=EvasiveManuvers.myShulker] store result entity @s Pos[0] double 0.001 run scoreboard players get #x rMath
execute as @e[type=item_display,tag=EvasiveManuvers.myShulker] store result entity @s Pos[1] double 0.001 run scoreboard players get #y rMath
execute as @e[type=item_display,tag=EvasiveManuvers.myShulker] store result entity @s Pos[2] double 0.001 run scoreboard players get #z rMath


