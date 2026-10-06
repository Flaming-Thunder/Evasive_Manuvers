data modify storage evasive_manuvers:data temp.color set value [0,0,0]

execute store result storage evasive_manuvers:data temp.color[0] float 0.00392156862 run scoreboard players get @e[type=text_display,tag=EvasiveManuvers.MySettings,tag=EvasiveManuvers.1,limit=1] EvasiveManuvers.WrenchSettings
execute store result storage evasive_manuvers:data temp.color[1] float 0.00392156862 run scoreboard players get @e[type=text_display,tag=EvasiveManuvers.MySettings,tag=EvasiveManuvers.2,limit=1] EvasiveManuvers.WrenchSettings
execute store result storage evasive_manuvers:data temp.color[2] float 0.00392156862 run scoreboard players get @e[type=text_display,tag=EvasiveManuvers.MySettings,tag=EvasiveManuvers.3,limit=1] EvasiveManuvers.WrenchSettings

execute on passengers run data modify entity @s item.components."minecraft:custom_model_data".colors[0] set from storage evasive_manuvers:data temp.color



execute store result entity @s Rotation[0] float 1.0 run scoreboard players get @e[type=text_display,tag=EvasiveManuvers.MySettings,tag=EvasiveManuvers.WrenchSettings.Pitch,limit=1] EvasiveManuvers.WrenchSettings
execute if entity @s[tag=EvasiveManuvers.Interactable] run scoreboard players operation @s EvasiveManuvers.PosY = @e[type=text_display,tag=EvasiveManuvers.MySettings,tag=EvasiveManuvers.WrenchSettings.Rotation,limit=1] EvasiveManuvers.WrenchSettings

execute at @s on passengers run rotate @s ~ ~

scoreboard players set #break rMath 1


