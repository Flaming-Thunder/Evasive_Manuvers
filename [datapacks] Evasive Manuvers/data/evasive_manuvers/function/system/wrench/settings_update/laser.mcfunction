data modify storage evasive_manuvers:data temp.color set value [0,0,0]

execute store result storage evasive_manuvers:data temp.color[0] float 0.00392156862 run scoreboard players get @e[type=text_display,tag=EvasiveManuvers.MySettings,tag=EvasiveManuvers.1,limit=1] EvasiveManuvers.WrenchSettings
execute store result storage evasive_manuvers:data temp.color[1] float 0.00392156862 run scoreboard players get @e[type=text_display,tag=EvasiveManuvers.MySettings,tag=EvasiveManuvers.2,limit=1] EvasiveManuvers.WrenchSettings
execute store result storage evasive_manuvers:data temp.color[2] float 0.00392156862 run scoreboard players get @e[type=text_display,tag=EvasiveManuvers.MySettings,tag=EvasiveManuvers.3,limit=1] EvasiveManuvers.WrenchSettings

execute on passengers run data modify entity @s item.components."minecraft:custom_model_data".colors[0] set from storage evasive_manuvers:data temp.color



execute store result entity @s Rotation[0] float 1.0 run scoreboard players get @e[type=text_display,tag=EvasiveManuvers.MySettings,tag=EvasiveManuvers.WrenchSettings.Pitch,limit=1] EvasiveManuvers.WrenchSettings
execute store result entity @s Rotation[1] float 1.0 run scoreboard players get @e[type=text_display,tag=EvasiveManuvers.MySettings,tag=EvasiveManuvers.WrenchSettings.Yaw,limit=1] EvasiveManuvers.WrenchSettings

execute at @s on passengers if entity @s[tag=EvasiveManuvers.Beam] run rotate @s ~ ~



data modify entity 00000001-0000-0002-0000-000300000004 Rotation[0] set from entity @s Rotation[1]
execute on passengers if entity @s[tag=EvasiveManuvers.Beam] at 00000001-0000-0002-0000-000300000004 store result entity @s transformation.translation[1] float 0.0005 run function buttons:system/math/trigo/cos



scoreboard players set #break rMath 1


