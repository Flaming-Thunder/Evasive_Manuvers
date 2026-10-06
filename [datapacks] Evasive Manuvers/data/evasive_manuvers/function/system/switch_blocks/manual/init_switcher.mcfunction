execute at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[distance=..0.5,tag=EvasiveManuvers.Element] run summon block_display ~ ~.25 ~ {Tags:["EvasiveManuvers.BlockSwitcher","EvasiveManuvers.Element"],data:{name:"Default",ElementName:"Manual Switcher"},block_state:{id:"stripped_pale_oak_wood"},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[-.25,0,-.25]},Passengers:[{id:"interaction",width:0.51,height:0.51,Tags:["EvasiveManuvers.BlockRange"]},{id:"block_display",block_state:{id:"orange_stained_glass"},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.6,0.6,0.6],translation:[-.3,-.05,-.3]}}]}





kill @s

