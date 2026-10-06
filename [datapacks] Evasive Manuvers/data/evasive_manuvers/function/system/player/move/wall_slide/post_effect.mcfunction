
execute rotated ~ 0 positioned ^.5 ^ ^ if block ~ ~ ~ #evasive_manuvers:slidable run function evasive_manuvers:system/player/move/wall_slide/left
execute rotated ~ 0 positioned ^-.5 ^ ^ if block ~ ~ ~ #evasive_manuvers:slidable run function evasive_manuvers:system/player/move/wall_slide/right


return run function evasive_manuvers:system/player/move/wall_slide/_
