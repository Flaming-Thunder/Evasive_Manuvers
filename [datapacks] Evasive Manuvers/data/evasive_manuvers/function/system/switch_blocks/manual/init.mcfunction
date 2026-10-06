
execute if entity @s[tag=EvasiveManuvers.Off] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[distance=..0.5,tag=EvasiveManuvers.Element] run summon block_display ~ ~ ~ {Tags:["EvasiveManuvers.ManualSwitchBlock","EvasiveManuvers.Off","EvasiveManuvers.Element"],data:{name:"Default",ElementName:"Manual Switch Block"},block_state:{id:"pale_oak_wood"},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.4,0.4,0.4],translation:[-.2,0.3,-.2]}}
execute if entity @s[tag=EvasiveManuvers.On] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[distance=..0.5,tag=EvasiveManuvers.Element] run summon block_display ~ ~ ~ {Tags:["EvasiveManuvers.ManualSwitchBlock","EvasiveManuvers.On","EvasiveManuvers.Element"],data:{name:"Default",ElementName:"Manual Switch Block"},block_state:{id:"stripped_pale_oak_wood"},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.4,0.4,0.4],translation:[-.2,0.3,-.2]}}






kill @s
