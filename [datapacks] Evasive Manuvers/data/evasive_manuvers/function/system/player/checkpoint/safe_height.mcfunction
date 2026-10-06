scoreboard players operation #search EvasiveManuvers.CheckPointID = @s EvasiveManuvers.CheckPointID


execute unless entity @e[predicate=evasive_manuvers:search/checkpoint_id,tag=EvasiveManuvers.Checkpoint,type=item_display] run return fail


scoreboard players operation #temp rMath = @s EvasiveManuvers.PosY
scoreboard players operation #temp rMath /= #1000 rMath

scoreboard players operation #temp1 rMath = @s EvasiveManuvers.CheckPointSafeHeight
scoreboard players operation #temp1 rMath -= @e[predicate=evasive_manuvers:search/checkpoint_id,tag=EvasiveManuvers.Checkpoint,type=item_display] EvasiveManuvers.PosY

execute if score #temp rMath < #temp1 rMath run function evasive_manuvers:api/player/kill







