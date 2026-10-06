scoreboard players operation #temp rMath = @s EvasiveManuvers.PlayerID
execute as @e[type=slime,tag=EvasiveManuvers.HeavyCube] if score @s EvasiveManuvers.PlayerID = #temp rMath run function evasive_manuvers:api/element/remove
