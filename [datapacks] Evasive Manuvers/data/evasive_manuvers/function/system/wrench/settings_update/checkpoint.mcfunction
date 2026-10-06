



execute store result entity @s Rotation[0] float 1.0 run scoreboard players get @e[type=text_display,tag=EvasiveManuvers.MySettings,tag=EvasiveManuvers.WrenchSettings.Pitch,limit=1] EvasiveManuvers.WrenchSettings

execute store result entity @s Rotation[1] float 1.0 run scoreboard players get @e[type=text_display,tag=EvasiveManuvers.MySettings,tag=EvasiveManuvers.WrenchSettings.Yaw,limit=1] EvasiveManuvers.WrenchSettings

scoreboard players operation @s EvasiveManuvers.PosY = @e[type=text_display,tag=EvasiveManuvers.MySettings,tag=EvasiveManuvers.WrenchSettings.Offset,limit=1] EvasiveManuvers.WrenchSettings


execute at @s positioned ~ ~2.67 ~ run particle dust{color:[1.0,0.6,0],scale:0.5} ^ ^ ^0.2 0 0 0 0 1 normal @a[tag=EvasiveManuvers.MySettings]
execute at @s positioned ~ ~2.67 ~ run particle dust{color:[1.0,0.6,0],scale:0.5} ^ ^ ^0.6 0 0 0 0 1 normal @a[tag=EvasiveManuvers.MySettings]
execute at @s positioned ~ ~2.67 ~ run particle dust{color:[1.0,0.6,0],scale:0.5} ^ ^ ^1.0 0 0 0 0 1 normal @a[tag=EvasiveManuvers.MySettings]
execute at @s positioned ~ ~2.67 ~ run particle dust{color:[1.0,0.6,0],scale:0.5} ^ ^ ^1.4 0 0 0 0 1 normal @a[tag=EvasiveManuvers.MySettings]






scoreboard players set #break rMath 1







