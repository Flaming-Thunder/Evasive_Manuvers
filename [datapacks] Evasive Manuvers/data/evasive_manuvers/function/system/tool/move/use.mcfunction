advancement revoke @s only evasive_manuvers:move


scoreboard players operation #search EvasiveManuvers.OwnerID = @s EvasiveManuvers.PlayerID

execute unless entity @e[predicate=evasive_manuvers:search/owner_id,tag=EvasiveManuvers.Tool.Move,type=item_display] at @s anchored eyes positioned ^ ^ ^ run return run function evasive_manuvers:system/tool/move/init/raycast

