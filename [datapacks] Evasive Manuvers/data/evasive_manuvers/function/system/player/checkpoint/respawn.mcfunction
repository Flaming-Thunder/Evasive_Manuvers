execute at @s run tp @s ~ ~-1 ~

execute if score @s EvasiveManuvers.CheckPointGameMode matches 1 run gamemode adventure @s
execute if score @s EvasiveManuvers.CheckPointGameMode matches 2 run gamemode creative @s

execute at @s run particle trial_spawner_detection ~ ~ ~ 0.1 0.1 0.1 0.1 10 normal




function evasive_manuvers:system/player/data/get with entity @s

execute store result score @s EvasiveManuvers.HighSpeedTick run data get storage evasive_manuvers:data temp.player.CheckPoint.HighSpeed

execute store result score #temp1 rMath run data get storage evasive_manuvers:data temp.player.CheckPoint.HighJump
execute if score #temp1 rMath matches 1 run tag @s add EvasiveManuvers.CanHighJump
execute if score #temp1 rMath matches 0 run tag @s remove EvasiveManuvers.CanHighJump

execute store result score #temp1 rMath run data get storage evasive_manuvers:data temp.player.CheckPoint.AirJump
execute if score #temp1 rMath matches 1 run tag @s add EvasiveManuvers.CanAirJump
execute if score #temp1 rMath matches 0 run tag @s remove EvasiveManuvers.CanAirJump


execute store result score @s EvasiveManuvers.PlayerMaxHealth run data get storage evasive_manuvers:data temp.player.CheckPoint.MaxHealth
scoreboard players operation @s EvasiveManuvers.PlayerHealth = @s EvasiveManuvers.PlayerMaxHealth

