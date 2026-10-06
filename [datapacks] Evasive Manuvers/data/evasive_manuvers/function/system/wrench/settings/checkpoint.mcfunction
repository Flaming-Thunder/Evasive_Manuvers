execute rotated ~-20 ~ positioned ^ ^ ^1 positioned ~ ~-0.2 ~ facing entity @s eyes positioned ^-0.125 ^ ^ run function buttons:summon/slider {score:{name:"@s",objective:"EvasiveManuvers.WrenchSettings",min:-180,max:180,inc:2},bc_box:{style:"flat",color:-22016,cursor_color:-14336,width:0.6,height:0.05,cursor_width:0.05},text_box:{size:0.3f,text:[{text:"Horizontal Angle: ",color:"gold"},{score:{name:"@e[tag=button.current,distance=..0.1,limit=1]",objective:"EvasiveManuvers.WrenchSettings"}},{text:"°"}]},Tags:["EvasiveManuvers.WrenchSettings.Pitch","EvasiveManuvers.WrenchSettings","EvasiveManuvers.new"]}
execute rotated ~-20 ~ positioned ^ ^ ^1 positioned ~ ~-0.4 ~ facing entity @s eyes positioned ^-0.125 ^ ^ run function buttons:summon/slider {score:{name:"@s",objective:"EvasiveManuvers.WrenchSettings",min:-90,max:90,inc:2},bc_box:{style:"flat",color:-22016,cursor_color:-14336,width:0.6,height:0.05,cursor_width:0.05},text_box:{size:0.3f,text:[{text:"Vertical Angle: ",color:"gold"},{score:{name:"@e[tag=button.current,distance=..0.1,limit=1]",objective:"EvasiveManuvers.WrenchSettings"}},{text:"°"}]},Tags:["EvasiveManuvers.WrenchSettings.Yaw","EvasiveManuvers.WrenchSettings","EvasiveManuvers.new"]}
execute rotated ~20 ~ positioned ^ ^ ^1 positioned ~ ~-0.2 ~ facing entity @s eyes positioned ^0.125 ^ ^ run function buttons:summon/slider {score:{name:"@s",objective:"EvasiveManuvers.WrenchSettings",min:5,max:100,inc:5},bc_box:{style:"flat",color:-16733526,cursor_color:-16728386,width:0.6,height:0.05,cursor_width:0.05},text_box:{size:0.3f,text:[{text:"Safe Height: ",color:"dark_aqua"},{score:{name:"@e[tag=button.current,distance=..0.1,limit=1]",objective:"EvasiveManuvers.WrenchSettings"}},{text:"m"}]},Tags:["EvasiveManuvers.WrenchSettings.Offset","EvasiveManuvers.WrenchSettings","EvasiveManuvers.new"]}




execute store result score @e[tag=EvasiveManuvers.WrenchSettings.Pitch,tag=EvasiveManuvers.new] EvasiveManuvers.WrenchSettings run data get entity @e[tag=EvasiveManuvers.WrenchSettings,tag=EvasiveManuvers.Element,limit=1] Rotation[0]
execute store result score @e[tag=EvasiveManuvers.WrenchSettings.Yaw,tag=EvasiveManuvers.new] EvasiveManuvers.WrenchSettings run data get entity @e[tag=EvasiveManuvers.WrenchSettings,tag=EvasiveManuvers.Element,limit=1] Rotation[1]
execute store result score @e[tag=EvasiveManuvers.WrenchSettings.Offset,tag=EvasiveManuvers.new] EvasiveManuvers.WrenchSettings run scoreboard players get @e[tag=EvasiveManuvers.WrenchSettings,tag=EvasiveManuvers.Element,limit=1] EvasiveManuvers.PosY



scoreboard players operation @e[type=text_display,tag=EvasiveManuvers.new] EvasiveManuvers.PlayerID = @s EvasiveManuvers.PlayerID

execute as @e[type=text_display,tag=EvasiveManuvers.new] run function buttons:update

tag @e[type=text_display,tag=EvasiveManuvers.new] remove new


