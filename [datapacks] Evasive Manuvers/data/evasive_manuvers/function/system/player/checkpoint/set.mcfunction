
scoreboard players operation @s EvasiveManuvers.CheckPointID = #temp rMath


particle trial_spawner_detection ~ ~0.5 ~ 0.5 0.5 0.5 0 20 normal


scoreboard players operation @s EvasiveManuvers.CheckPointSafeHeight = #temp2 rMath




function evasive_manuvers:system/player/data/get with entity @s


execute store result storage evasive_manuvers:data temp.player.CheckPoint.HighSpeed byte 1 run scoreboard players get @s EvasiveManuvers.HighSpeedTick

execute if entity @s[tag=EvasiveManuvers.CanHighJump] run data modify storage evasive_manuvers:data temp.player.CheckPoint.HighJump set value 1b
execute unless entity @s[tag=EvasiveManuvers.CanHighJump] run data modify storage evasive_manuvers:data temp.player.CheckPoint.HighJump set value 0b

execute if entity @s[tag=EvasiveManuvers.CanAirJump] run data modify storage evasive_manuvers:data temp.player.CheckPoint.AirJump set value 1b
execute unless entity @s[tag=EvasiveManuvers.CanAirJump] run data modify storage evasive_manuvers:data temp.player.CheckPoint.AirJump set value 0b


execute store result storage evasive_manuvers:data temp.player.CheckPoint.MaxHealth byte 1 run scoreboard players get @s EvasiveManuvers.PlayerMaxHealth

function evasive_manuvers:system/player/data/encode with entity @s




