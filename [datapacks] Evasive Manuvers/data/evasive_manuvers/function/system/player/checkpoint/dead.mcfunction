#Context: Player

execute store result score #dx rMath run data get entity @e[tag=EvasiveManuvers.Checkpoint,predicate=evasive_manuvers:search/element_id,type=item_display,limit=1] Pos[0] 100
execute store result score #dy rMath run data get entity @e[tag=EvasiveManuvers.Checkpoint,predicate=evasive_manuvers:search/element_id,type=item_display,limit=1] Pos[1] 100
execute store result score #dz rMath run data get entity @e[tag=EvasiveManuvers.Checkpoint,predicate=evasive_manuvers:search/element_id,type=item_display,limit=1] Pos[2] 100

execute store result score #x rMath run data get entity @s Pos[0] 100
execute store result score #y rMath run data get entity @s Pos[1] 100
execute store result score #z rMath run data get entity @s Pos[2] 100

scoreboard players operation #dx rMath -= #x rMath
scoreboard players operation #dy rMath -= #y rMath
scoreboard players operation #dz rMath -= #z rMath

scoreboard players operation #dx rMath *= #dx rMath
scoreboard players operation #dy rMath *= #dy rMath
scoreboard players operation #dz rMath *= #dz rMath

scoreboard players operation #dx rMath += #dy rMath
scoreboard players operation #dx rMath += #dz rMath

scoreboard players operation Math.In0 rMath = #dx rMath
execute store result score #Dist rMath run function math:function/sqrt

scoreboard players set #temp rMath 2000
scoreboard players operation #temp rMath *= #TeleportConstant rMath
scoreboard players operation #temp rMath /= #Dist rMath
execute if score #temp rMath matches 20.. run scoreboard players set #temp rMath 20


#tellraw @a {score:{name:".temp",objective:"rMath"}}
#tellraw @a {score:{name:".Dist",objective:"rMath"}}
#tellraw @a {score:{name:".dx",objective:"rMath"}}

scoreboard players operation #Dist rMath /= #TeleportConstant rMath
scoreboard players operation #Dist rMath /= #100 rMath


execute at @s run summon item_display ~ ~ ~ {Tags:["EvasiveManuvers.DeathCamera","EvasiveManuvers.new"],data:{step:0,cldwn:2}}
ride @s mount @e[type=item_display,tag=EvasiveManuvers.new,limit=1]

execute on vehicle store result entity @s teleport_duration int 1 run scoreboard players get #temp rMath
execute on vehicle store result entity @s data.step int 1 run scoreboard players get #Dist rMath
execute on vehicle run scoreboard players operation @s EvasiveManuvers.PlayerID = #search EvasiveManuvers.PlayerID
execute on vehicle run scoreboard players operation @s EvasiveManuvers.CheckPointID = #search EvasiveManuvers.CheckPointID

execute at @s facing entity @e[tag=EvasiveManuvers.Checkpoint,predicate=evasive_manuvers:search/element_id,limit=1,type=item_display] feet on vehicle run tp @s ~ ~2 ~ ~ ~


gamemode spectator @s
spectate @e[type=item_display,tag=EvasiveManuvers.new,limit=1] @s

tag @e[type=item_display,tag=EvasiveManuvers.new,limit=1] remove EvasiveManuvers.new


