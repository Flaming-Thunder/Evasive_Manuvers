attribute @s jump_strength modifier remove high_jump

execute if score #OnGround rMath matches 1 if score @s EvasiveManuvers.HighJumpTick matches ..31 if predicate evasive_manuvers:input_sneak run scoreboard players add @s EvasiveManuvers.HighJumpTick 1
execute unless predicate evasive_manuvers:input_sneak if score @s EvasiveManuvers.HighJumpTick matches 2.. run scoreboard players remove @s EvasiveManuvers.HighJumpTick 2
execute unless predicate evasive_manuvers:input_sneak if score @s EvasiveManuvers.HighJumpTick matches 1 run scoreboard players remove @s EvasiveManuvers.HighJumpTick 1

execute if score @s EvasiveManuvers.HighJumpTick matches 1..2 run attribute @s jump_strength modifier add high_jump 0.3 add_multiplied_total
execute if score @s EvasiveManuvers.HighJumpTick matches 3..4 run attribute @s jump_strength modifier add high_jump 0.4 add_multiplied_total
execute if score @s EvasiveManuvers.HighJumpTick matches 5..6 run attribute @s jump_strength modifier add high_jump 0.5 add_multiplied_total
execute if score @s EvasiveManuvers.HighJumpTick matches 7..8 run attribute @s jump_strength modifier add high_jump 0.6 add_multiplied_total
execute if score @s EvasiveManuvers.HighJumpTick matches 9..10 run attribute @s jump_strength modifier add high_jump 0.7 add_multiplied_total
execute if score @s EvasiveManuvers.HighJumpTick matches 11..12 run attribute @s jump_strength modifier add high_jump 0.8 add_multiplied_total
execute if score @s EvasiveManuvers.HighJumpTick matches 13..14 run attribute @s jump_strength modifier add high_jump 0.9 add_multiplied_total
execute if score @s EvasiveManuvers.HighJumpTick matches 15..16 run attribute @s jump_strength modifier add high_jump 1.0 add_multiplied_total
execute if score @s EvasiveManuvers.HighJumpTick matches 17..18 run attribute @s jump_strength modifier add high_jump 1.1 add_multiplied_total
execute if score @s EvasiveManuvers.HighJumpTick matches 19..20 run attribute @s jump_strength modifier add high_jump 1.2 add_multiplied_total
execute if score @s EvasiveManuvers.HighJumpTick matches 21..22 run attribute @s jump_strength modifier add high_jump 1.3 add_multiplied_total
execute if score @s EvasiveManuvers.HighJumpTick matches 23..24 run attribute @s jump_strength modifier add high_jump 1.4 add_multiplied_total
execute if score @s EvasiveManuvers.HighJumpTick matches 25..26 run attribute @s jump_strength modifier add high_jump 1.5 add_multiplied_total
execute if score @s EvasiveManuvers.HighJumpTick matches 27..28 run attribute @s jump_strength modifier add high_jump 1.6 add_multiplied_total
execute if score @s EvasiveManuvers.HighJumpTick matches 29..30 run attribute @s jump_strength modifier add high_jump 1.7 add_multiplied_total
execute if score @s EvasiveManuvers.HighJumpTick matches 31..32 run attribute @s jump_strength modifier add high_jump 1.8 add_multiplied_total



execute unless score @s EvasiveManuvers.HighJumpTick matches 0 if score @s EvasiveManuvers.Jump matches 1 at @s unless function evasive_manuvers:system/player/is_crawling run tag @s remove EvasiveManuvers.CanHighJump
execute unless score @s EvasiveManuvers.HighJumpTick matches 0 if score @s EvasiveManuvers.Jump matches 1 at @s unless function evasive_manuvers:system/player/is_crawling run attribute @s jump_strength modifier remove high_jump
execute unless score @s EvasiveManuvers.HighJumpTick matches 0 if score @s EvasiveManuvers.Jump matches 1 at @s unless function evasive_manuvers:system/player/is_crawling run scoreboard players set @s EvasiveManuvers.HighJumpTick 0






