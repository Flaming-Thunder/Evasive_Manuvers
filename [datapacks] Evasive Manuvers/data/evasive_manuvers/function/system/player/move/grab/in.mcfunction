execute at @s anchored eyes positioned ^ ^ ^0.001 positioned ~ ~0.6 ~ unless function evasive_manuvers:system/player/move/grab/test run return run function evasive_manuvers:system/player/move/grab/stop
execute if predicate evasive_manuvers:input_sneak if score @s EvasiveManuvers.PreSneak matches 0 run return run function evasive_manuvers:system/player/move/grab/stop

