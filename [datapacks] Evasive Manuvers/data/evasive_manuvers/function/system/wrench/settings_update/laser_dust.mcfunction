
scoreboard players operation @s EvasiveManuvers.PosZ = @e[type=text_display,tag=EvasiveManuvers.MySettings,tag=EvasiveManuvers.1,limit=1] EvasiveManuvers.WrenchSettings

execute store result entity @s Rotation[0] float 1.0 run scoreboard players get @e[type=text_display,tag=EvasiveManuvers.MySettings,tag=EvasiveManuvers.WrenchSettings.Pitch,limit=1] EvasiveManuvers.WrenchSettings
execute store result entity @s Rotation[1] float 1.0 run scoreboard players get @e[type=text_display,tag=EvasiveManuvers.MySettings,tag=EvasiveManuvers.WrenchSettings.Yaw,limit=1] EvasiveManuvers.WrenchSettings

scoreboard players set #break rMath 1

