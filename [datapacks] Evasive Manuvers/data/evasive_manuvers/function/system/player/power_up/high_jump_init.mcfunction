tag @s add EvasiveManuvers.CanHighJump

execute unless score @s EvasiveManuvers.HighJumpTick matches 1.. run scoreboard players set @s EvasiveManuvers.HighJumpTick 0

particle trial_spawner_detection_ominous ~ ~0.5 ~ 0.5 0.5 0.5 0 20 normal
