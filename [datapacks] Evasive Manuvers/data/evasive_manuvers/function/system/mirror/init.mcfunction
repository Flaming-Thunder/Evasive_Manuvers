



execute at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=EvasiveManuvers.Element,distance=..0.5] run summon item_display ~ ~ ~ {Tags:["EvasiveManuvers.Element","EvasiveManuvers.Mirror","EvasiveManuvers.new"],data:{name:"Default",ElementName:"Mirror"},teleport_duration:5,item:{id:"glass_pane",count:1},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[1,2,1],translation:[0,1,0]},Passengers:[{id:"interaction",width:1,height:2,Tags:["EvasiveManuvers.Mirror"]}]}


execute as @e[type=item_display,tag=EvasiveManuvers.new] at @s facing entity @p feet run rotate @s ~ 0
execute as @e[type=item_display,tag=EvasiveManuvers.new] on passengers at @s facing entity @p feet run rotate @s ~ 0
execute if entity @s[tag=EvasiveManuvers.Interactable] run tag @e[type=item_display,tag=EvasiveManuvers.new] add EvasiveManuvers.Interactable
execute if entity @s[tag=EvasiveManuvers.Interactable] run scoreboard players set @e[type=item_display,tag=EvasiveManuvers.new] EvasiveManuvers.PosX 0
execute if entity @s[tag=EvasiveManuvers.Interactable] run scoreboard players set @e[type=item_display,tag=EvasiveManuvers.new] EvasiveManuvers.PosY 45
execute if entity @s[tag=EvasiveManuvers.Interactable] as @e[type=item_display,tag=EvasiveManuvers.new] on passengers if entity @s[type=interaction] run data modify entity @s response set value true




tag @e[type=item_display,tag=EvasiveManuvers.new] remove EvasiveManuvers.new



kill @s


