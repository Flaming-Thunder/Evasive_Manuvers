function evasive_manuvers:system/wrench/remove


summon block_display ~ ~ ~ {Tags:["EvasiveManuvers.SettingsAnchor","EvasiveManuvers.new"]}
scoreboard players operation @e[type=block_display,tag=EvasiveManuvers.new] EvasiveManuvers.PlayerID = @s EvasiveManuvers.PlayerID
tag @e[type=block_display,tag=EvasiveManuvers.new] remove EvasiveManuvers.new



tag @e[tag=EvasiveManuvers.Element,distance=..1,limit=1,sort=nearest] add EvasiveManuvers.WrenchSettings



execute at @s anchored eyes rotated ~ 0 positioned ^ ^ ^1 run summon text_display ~ ~ ~ {background:0,Tags:["EvasiveManuvers.WrenchSettings.Name","EvasiveManuvers.new"],transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,0,0]}}

execute at @e[type=text_display,tag=EvasiveManuvers.WrenchSettings.Name,tag=EvasiveManuvers.new] facing entity @s eyes as @e[type=text_display,tag=EvasiveManuvers.WrenchSettings.Name,tag=EvasiveManuvers.new] run rotate @s ~ ~
data modify entity @e[type=text_display,tag=EvasiveManuvers.WrenchSettings.Name,tag=EvasiveManuvers.new,limit=1] text set value [{nbt:"data.ElementName",entity:"@e[tag=EvasiveManuvers.WrenchSettings,limit=1,sort=nearest]",interpret:true}," '",{nbt:"data.name",entity:"@e[tag=EvasiveManuvers.WrenchSettings,limit=1,sort=nearest]",interpret:true},"'"]
scoreboard players operation @e[type=text_display,tag=EvasiveManuvers.new] EvasiveManuvers.PlayerID = @s EvasiveManuvers.PlayerID
tag @e[type=text_display,tag=EvasiveManuvers.new] remove EvasiveManuvers.new




execute if entity @e[tag=EvasiveManuvers.Element,distance=..1,tag=EvasiveManuvers.Checkpoint,limit=1,sort=nearest] at @s anchored eyes positioned ^ ^ ^0.1 rotated ~ 0 run function evasive_manuvers:system/wrench/settings/checkpoint

execute if entity @e[tag=EvasiveManuvers.Element,distance=..1,tag=EvasiveManuvers.Laser,limit=1,sort=nearest] at @s anchored eyes positioned ^ ^ ^0.1 rotated ~ 0 run function evasive_manuvers:system/wrench/settings/laser

execute if entity @e[tag=EvasiveManuvers.Element,distance=..1,tag=EvasiveManuvers.LaserDust,limit=1,sort=nearest] at @s anchored eyes positioned ^ ^ ^0.1 rotated ~ 0 run function evasive_manuvers:system/wrench/settings/laser_dust

execute if entity @e[tag=EvasiveManuvers.Element,distance=..1,tag=EvasiveManuvers.Mirror,limit=1,sort=nearest] at @s anchored eyes positioned ^ ^ ^0.1 rotated ~ 0 run function evasive_manuvers:system/wrench/settings/mirror









tag @e[tag=EvasiveManuvers.Element,tag=EvasiveManuvers.WrenchSettings] remove EvasiveManuvers.WrenchSettings
tag @s add EvasiveManuvers.InSettings

scoreboard players set #count rMath 0
