execute rotated ~-10 ~ positioned ^ ^ ^1 positioned ~ ~-0.2 ~ positioned ^0.25 ^ ^ facing entity @s eyes run function buttons:summon/slider {score:{name:"@s",objective:"EvasiveManuvers.WrenchSettings",min:0,max:15,inc:1},bc_box:{style:"flat",color:-8882056,cursor_color:-4934476,width:0.6,height:0.05,cursor_width:0.05},text_box:{size:0.3f,text:[{text:"Color: ",color:"gray"},{nbt:"data.colorName",entity:"@e[tag=button.current,distance=..0.1,limit=1]",interpret:true}]},Tags:["EvasiveManuvers.1","EvasiveManuvers.WrenchSettings","EvasiveManuvers.new"]}

execute rotated ~10 ~ positioned ^ ^ ^1 positioned ~ ~-0.2 ~ facing entity @s eyes positioned ^0.25 ^ ^ run function buttons:summon/slider {score:{name:"@s",objective:"EvasiveManuvers.WrenchSettings",min:-180,max:180,inc:1},bc_box:{style:"flat",color:-22016,cursor_color:-14336,width:0.8,height:0.05,cursor_width:0.05},text_box:{size:0.3f,text:[{text:"Horizontal Angle: ",color:"gold"},{score:{name:"@e[tag=button.current,distance=..0.1,limit=1]",objective:"EvasiveManuvers.WrenchSettings"}},{text:"°"}]},Tags:["EvasiveManuvers.WrenchSettings.Pitch","EvasiveManuvers.WrenchSettings","EvasiveManuvers.new"]}
execute rotated ~10 ~ positioned ^ ^ ^1 positioned ~ ~-0.4 ~ facing entity @s eyes positioned ^0.25 ^ ^ run function buttons:summon/slider {score:{name:"@s",objective:"EvasiveManuvers.WrenchSettings",min:-90,max:90,inc:1},bc_box:{style:"flat",color:-22016,cursor_color:-14336,width:0.8,height:0.05,cursor_width:0.05},text_box:{size:0.3f,text:[{text:"Vertical Angle: ",color:"gold"},{score:{name:"@e[tag=button.current,distance=..0.1,limit=1]",objective:"EvasiveManuvers.WrenchSettings"}},{text:"°"}]},Tags:["EvasiveManuvers.WrenchSettings.Yaw","EvasiveManuvers.WrenchSettings","EvasiveManuvers.new"]}


execute store result score @e[tag=EvasiveManuvers.WrenchSettings.Pitch,tag=EvasiveManuvers.new] EvasiveManuvers.WrenchSettings run data get entity @e[tag=EvasiveManuvers.WrenchSettings,tag=EvasiveManuvers.Element,limit=1] Rotation[0]
execute store result score @e[tag=EvasiveManuvers.WrenchSettings.Yaw,tag=EvasiveManuvers.new] EvasiveManuvers.WrenchSettings run data get entity @e[tag=EvasiveManuvers.WrenchSettings,tag=EvasiveManuvers.Element,limit=1] Rotation[1]


scoreboard players operation @e[tag=EvasiveManuvers.1,tag=EvasiveManuvers.new] EvasiveManuvers.WrenchSettings = @e[tag=EvasiveManuvers.WrenchSettings,tag=EvasiveManuvers.Element,limit=1] EvasiveManuvers.PosZ

scoreboard players operation @e[type=text_display,tag=EvasiveManuvers.new] EvasiveManuvers.PlayerID = @s EvasiveManuvers.PlayerID

execute as @e[type=text_display,tag=EvasiveManuvers.new] run function buttons:update

tag @e[type=text_display,tag=EvasiveManuvers.new] remove new


