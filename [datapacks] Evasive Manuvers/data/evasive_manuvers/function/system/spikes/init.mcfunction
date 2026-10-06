
execute if entity @s[nbt={Facing:0b}] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=EvasiveManuvers.Element,distance=..0.5] run summon item_display ~ ~0.999999999 ~ {Tags:["EvasiveManuvers.Element","EvasiveManuvers.Spikes"],data:{name:"Default",ElementName:"Spikes",Facing:0b},item:{id:"stick",count:1,components:{"minecraft:item_model":"evasive_manuvers:spikes"}},transformation:{left_rotation:[0.5,0.5,0.5,0.5],right_rotation:[0,0,0,1],scale:[1,1.5,1],translation:[0,0,0.75]},Rotation:[0f,90f]}
execute if entity @s[nbt={Facing:1b}] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=EvasiveManuvers.Element,distance=..0.5] run summon item_display ~ ~ ~ {Tags:["EvasiveManuvers.Element","EvasiveManuvers.Spikes"],data:{name:"Default",ElementName:"Spikes",Facing:1b},item:{id:"stick",count:1,components:{"minecraft:item_model":"evasive_manuvers:spikes"}},transformation:{left_rotation:[0.5,0.5,0.5,0.5],right_rotation:[0,0,0,1],scale:[1,1.5,1],translation:[0,0,0.75]},Rotation:[0f,-90f]}

execute if entity @s[nbt={Facing:2b}] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=EvasiveManuvers.Element,distance=..0.5] run summon item_display ~ ~0.5 ~0.499999999 {Tags:["EvasiveManuvers.Element","EvasiveManuvers.Spikes"],data:{name:"Default",ElementName:"Spikes",Facing:2b},item:{id:"stick",count:1,components:{"minecraft:item_model":"evasive_manuvers:spikes"}},transformation:{left_rotation:[0.5,0.5,0.5,0.5],right_rotation:[0,0,0,1],scale:[1,1.5,1],translation:[0,0,0.75]},Rotation:[-180f,0f]}
execute if entity @s[nbt={Facing:3b}] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=EvasiveManuvers.Element,distance=..0.5] run summon item_display ~ ~0.5 ~-0.5 {Tags:["EvasiveManuvers.Element","EvasiveManuvers.Spikes"],data:{name:"Default",ElementName:"Spikes",Facing:3b},item:{id:"stick",count:1,components:{"minecraft:item_model":"evasive_manuvers:spikes"}},transformation:{left_rotation:[0.5,0.5,0.5,0.5],right_rotation:[0,0,0,1],scale:[1,1.5,1],translation:[0,0,0.75]},Rotation:[0f,0f]}

execute if entity @s[nbt={Facing:4b}] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=EvasiveManuvers.Element,distance=..0.5] run summon item_display ~0.499999999 ~0.5 ~ {Tags:["EvasiveManuvers.Element","EvasiveManuvers.Spikes"],data:{name:"Default",ElementName:"Spikes",Facing:4b},item:{id:"stick",count:1,components:{"minecraft:item_model":"evasive_manuvers:spikes"}},transformation:{left_rotation:[0.5,0.5,0.5,0.5],right_rotation:[0,0,0,1],scale:[1,1.5,1],translation:[0,0,0.75]},Rotation:[90f,0f]}
execute if entity @s[nbt={Facing:5b}] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=EvasiveManuvers.Element,distance=..0.5] run summon item_display ~-0.5 ~0.5 ~ {Tags:["EvasiveManuvers.Element","EvasiveManuvers.Spikes"],data:{name:"Default",ElementName:"Spikes",Facing:5b},item:{id:"stick",count:1,components:{"minecraft:item_model":"evasive_manuvers:spikes"}},transformation:{left_rotation:[0.5,0.5,0.5,0.5],right_rotation:[0,0,0,1],scale:[1,1.5,1],translation:[0,0,0.75]},Rotation:[-90f,0f]}






kill @s





