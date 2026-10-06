
execute unless score @s EvasiveManuvers.HighSpeedTick matches 1.. run particle trial_spawner_detection_ominous ~ ~0.5 ~ 0.5 0.5 0.5 0 20 normal

attribute @s movement_speed modifier add high_speed 1.5 add_multiplied_total

scoreboard players set @s EvasiveManuvers.HighSpeedTick 20
