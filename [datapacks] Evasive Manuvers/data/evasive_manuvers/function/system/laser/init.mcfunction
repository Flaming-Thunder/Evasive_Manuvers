
execute if entity @s[tag=!EvasiveManuvers.Interactable] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[distance=..0.5,tag=EvasiveManuvers.Element] run summon item_display ~ ~ ~ {Tags:["EvasiveManuvers.Element","EvasiveManuvers.Laser","EvasiveManuvers.new"],data:{name:"Default",ElementName:"Laser"},Passengers:[{id:"item_display",Tags:["EvasiveManuvers.Beam"],transformation:{left_rotation:[.70710678118,0,0,.70710678118],right_rotation:[0,0,0,1],scale:[1,1,1],translation:[0,0.5,0]},teleport_duration:3,interpolation_duration:10,brightness:{block:15,sky:15},item:{id:"stick",count:1,components:{"minecraft:item_model":"evasive_manuvers:misc/laser","minecraft:custom_model_data":{colors:[[1,0,0]]}}}}]}
execute if entity @s[tag=EvasiveManuvers.Interactable] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[distance=..0.5,tag=EvasiveManuvers.Element] run summon item_display ~ ~ ~ {Tags:["EvasiveManuvers.Element","EvasiveManuvers.Laser","EvasiveManuvers.Interactable","EvasiveManuvers.new"],data:{name:"Default",ElementName:"Laser"},Passengers:[{id:"interaction",width:0.8,height:0.65},{id:"item_display",Tags:["EvasiveManuvers.Beam"],transformation:{left_rotation:[.70710678118,0,0,.70710678118],right_rotation:[0,0,0,1],scale:[1,1,1],translation:[0,0.5,0]},teleport_duration:3,interpolation_duration:10,brightness:{block:15,sky:15},item:{id:"stick",count:1,components:{"minecraft:item_model":"evasive_manuvers:misc/laser","minecraft:custom_model_data":{colors:[[1,0,0]]}}}}]}



execute at @s rotated as @a[sort=nearest,limit=1] run rotate @e[type=item_display,limit=1,tag=EvasiveManuvers.new] ~ 0





tag @e[type=item_display,tag=EvasiveManuvers.new] remove EvasiveManuvers.new


kill @s

