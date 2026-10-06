scoreboard players operation #temp rMath = @s EvasiveManuvers.PlayerID


execute as @e[type=text_display,tag=EvasiveManuvers.WrenchSettings] if score @s EvasiveManuvers.PlayerID = #temp rMath run tag @s add EvasiveManuvers.MySettings
execute as @a if score @s EvasiveManuvers.PlayerID = #temp rMath run tag @s add EvasiveManuvers.MySettings

scoreboard players set #break rMath 0

execute if score #break rMath matches 0 at @s as @e[tag=EvasiveManuvers.Element,distance=..1,tag=EvasiveManuvers.Checkpoint,limit=1,sort=nearest] run function evasive_manuvers:system/wrench/settings_update/checkpoint

execute if score #break rMath matches 0 at @s as @e[tag=EvasiveManuvers.Element,distance=..1,tag=EvasiveManuvers.Laser,limit=1,sort=nearest] run function evasive_manuvers:system/wrench/settings_update/laser

execute if score #break rMath matches 0 at @s as @e[tag=EvasiveManuvers.Element,distance=..1,tag=EvasiveManuvers.LaserDust,limit=1,sort=nearest] run function evasive_manuvers:system/wrench/settings_update/laser_dust

execute if score #break rMath matches 0 at @s as @e[tag=EvasiveManuvers.Element,distance=..1,tag=EvasiveManuvers.Mirror,limit=1,sort=nearest] run function evasive_manuvers:system/wrench/settings_update/mirror







tag @e[type=text_display,tag=EvasiveManuvers.MySettings] remove EvasiveManuvers.MySettings

tag @a[tag=EvasiveManuvers.MySettings] remove EvasiveManuvers.MySettings

