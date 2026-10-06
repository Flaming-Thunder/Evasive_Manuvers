summon item_display ~ ~ ~ {data:{name:"Default",ElementName:"Cube Dropper"},Tags:["EvasiveManuvers.Element","EvasiveManuvers.CubeDropper","EvasiveManuvers.new"],item:{id:"tinted_glass",count:1},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.375,0.375,0.375],translation:[0,0.5,0]},Passengers:[{id:"interaction",width:1.01,height:1.01,response:1b}]}

execute as @e[type=item_display,tag=EvasiveManuvers.new] run function evasive_manuvers:system/player/get_id


tag @e[type=item_display,tag=EvasiveManuvers.new] remove EvasiveManuvers.new

