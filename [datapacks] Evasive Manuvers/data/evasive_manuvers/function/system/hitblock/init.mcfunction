
execute store result score #temp rMath run data get entity @s data.time

execute if score #temp rMath matches 30 at @s align xyz positioned ~0.5 ~0.2 ~0.5 unless entity @e[tag=EvasiveManuvers.Element,distance=..0.5] run summon block_display ~ ~ ~ {data:{name:"Default",ElementName:"Slow SnakeBlock"},block_state:{id:"green_wool"},interpolation_duration:5,Passengers:[{id:"interaction",width:0.6,height:0.6,Tags:["EvasiveManuvers.BlockRange"]}],Tags:["EvasiveManuvers.Element","EvasiveManuvers.BlockRange","EvasiveManuvers.SnakeBlock","EvasiveManuvers.new"],brightness:{block:15,sky:15},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[-.25,0.05,-.25]}}
execute if score #temp rMath matches 15 at @s align xyz positioned ~0.5 ~0.2 ~0.5 unless entity @e[tag=EvasiveManuvers.Element,distance=..0.5] run summon block_display ~ ~ ~ {data:{name:"Default",ElementName:"Moderate SnakeBlock"},block_state:{id:"orange_wool"},interpolation_duration:5,Passengers:[{id:"interaction",width:0.6,height:0.6,Tags:["EvasiveManuvers.BlockRange"]}],Tags:["EvasiveManuvers.Element","EvasiveManuvers.BlockRange","EvasiveManuvers.SnakeBlock","EvasiveManuvers.new"],brightness:{block:15,sky:15},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[-.25,0.05,-.25]}}
execute if score #temp rMath matches 10 at @s align xyz positioned ~0.5 ~0.2 ~0.5 unless entity @e[tag=EvasiveManuvers.Element,distance=..0.5] run summon block_display ~ ~ ~ {data:{name:"Default",ElementName:"Quick SnakeBlock"},block_state:{id:"red_wool"},interpolation_duration:5,Passengers:[{id:"interaction",width:0.6,height:0.6,Tags:["EvasiveManuvers.BlockRange"]}],Tags:["EvasiveManuvers.Element","EvasiveManuvers.BlockRange","EvasiveManuvers.SnakeBlock","EvasiveManuvers.new"],brightness:{block:15,sky:15},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[-.25,0.05,-.25]}}

scoreboard players operation @e[type=block_display,tag=EvasiveManuvers.new] EvasiveManuvers.PreSneak = #temp rMath
scoreboard players set @e[type=block_display,tag=EvasiveManuvers.new] EvasiveManuvers.PosX -11
scoreboard players set @e[type=block_display,tag=EvasiveManuvers.new] EvasiveManuvers.PosY -1

execute if entity @s[tag=EvasiveManuvers.NonInteractable] run tag @e[type=block_display,tag=EvasiveManuvers.new] add EvasiveManuvers.NonInteractable
execute if entity @s[tag=EvasiveManuvers.NonInteractable] run data modify entity @e[type=block_display,tag=EvasiveManuvers.new,limit=1] brightness set value {block:6,sky:6}

kill @s
tag @e[type=block_display,tag=EvasiveManuvers.new] remove EvasiveManuvers.new


