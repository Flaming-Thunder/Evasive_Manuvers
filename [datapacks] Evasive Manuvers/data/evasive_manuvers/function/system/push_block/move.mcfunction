scoreboard players set #temp rMath 90

execute if block ~ ~-0.1 ~ slime_block run scoreboard players set #temp rMath 20
execute if block ~ ~-0.1 ~ honey_block run scoreboard players set #temp rMath 20
execute if block ~ ~-0.1 ~ soul_sand run scoreboard players set #temp rMath 150
execute if block ~ ~-0.1 ~ soul_sand positioned ~-.5 ~-1 ~-.5 if entity @e[type=slime,tag=EvasiveManuvers.HeavyCube,dx=0] run scoreboard players set #temp rMath 149


execute store result score #x rMath run data get entity @s Pos[0] 100
execute store result score #z rMath run data get entity @s Pos[2] 100

tp @s ^ ^ ^1

execute store result score #dx rMath run data get entity @s Pos[0] 100
execute store result score #dz rMath run data get entity @s Pos[2] 100

tp @s ^ ^ ^-1



scoreboard players operation #dx rMath -= #x rMath
scoreboard players operation #dz rMath -= #z rMath

scoreboard players operation #dx rMath *= #temp rMath
scoreboard players operation #dz rMath *= #temp rMath
scoreboard players operation #dx rMath *= #35 rMath
scoreboard players operation #dz rMath *= #35 rMath

execute store result entity @e[type=slime,tag=EvasiveManuvers.mySlime,limit=1] Motion[0] double 0.000001 run scoreboard players get #dx rMath
execute store result entity @e[type=slime,tag=EvasiveManuvers.mySlime,limit=1] Motion[2] double 0.000001 run scoreboard players get #dz rMath

#scoreboard players operation #x rMath *= #10000 rMath
#scoreboard players operation #z rMath *= #10000 rMath
#scoreboard players operation #x rMath += #dx rMath
#scoreboard players operation #z rMath += #dz rMath
#
#execute store result entity @s Pos[0] double 0.000001 run scoreboard players get #x rMath
#execute store result entity @s Pos[2] double 0.000001 run scoreboard players get #z rMath



particle dust{color:1447446,scale:0.5}
execute if score #temp rMath matches 149 run playsound minecraft:block.grindstone.use block @a ~ ~ ~ 0.25 0.7 0.1
execute if score #temp rMath matches 100 run playsound minecraft:block.grindstone.use block @a ~ ~ ~ 0.25 0.7 0.1
execute if score #temp rMath matches 20 run playsound minecraft:block.honey_block.slide block @a ~ ~ ~ 1 1.2 0

execute positioned ^ ^ ^1 run function evasive_manuvers:system/push_block/motion/ice


tag @e[type=slime,tag=EvasiveManuvers.mySlime] remove EvasiveManuvers.Movable
