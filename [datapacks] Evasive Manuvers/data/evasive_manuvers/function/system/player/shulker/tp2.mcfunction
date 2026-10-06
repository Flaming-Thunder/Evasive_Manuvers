
execute store result score #x rMath run data get entity @s Pos[0] 2000
execute store result score #y rMath run data get entity @s Pos[1] 2000
execute store result score #z rMath run data get entity @s Pos[2] 2000

scoreboard players operation #x rMath += #Motion EvasiveManuvers.PosX
scoreboard players operation #y rMath += #Motion EvasiveManuvers.PosY
scoreboard players operation #z rMath += #Motion EvasiveManuvers.PosZ

execute store result entity @e[type=item_display,tag=EvasiveManuvers.myShulker,limit=1] Pos[0] double 0.0005 run scoreboard players get #x rMath
execute store result entity @e[type=item_display,tag=EvasiveManuvers.myShulker,limit=1] Pos[1] double 0.0005 run scoreboard players get #y rMath
execute store result entity @e[type=item_display,tag=EvasiveManuvers.myShulker,limit=1] Pos[2] double 0.0005 run scoreboard players get #z rMath


