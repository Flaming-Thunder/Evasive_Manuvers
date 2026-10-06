
#execute if predicate evasive_manuvers:is_sprinting if block ~ ~-0.2 ~ #air rotated ~ 0 positioned ^.5 ^ ^ if block ~ ~ ~ #evasive_manuvers:slidable run return run function evasive_manuvers:system/player/move/wall_slide/left
#execute if predicate evasive_manuvers:is_sprinting if block ~ ~-0.2 ~ #air rotated ~ 0 positioned ^-.5 ^ ^ if block ~ ~ ~ #evasive_manuvers:slidable run return run function evasive_manuvers:system/player/move/wall_slide/right
execute if block ~-0.5 ~ ~ #evasive_manuvers:slidable run return run function evasive_manuvers:system/player/move/wall_slide/post_effect
execute if block ~0.5 ~ ~ #evasive_manuvers:slidable run return run function evasive_manuvers:system/player/move/wall_slide/post_effect
execute if block ~ ~ ~-0.5 #evasive_manuvers:slidable run return run function evasive_manuvers:system/player/move/wall_slide/post_effect
execute if block ~ ~ ~0.5 #evasive_manuvers:slidable run return run function evasive_manuvers:system/player/move/wall_slide/post_effect

function evasive_manuvers:system/player/move/wall_slide/post_effect_remove

return run tag @s remove EvasiveManuvers.CanWallSlide.Coyote


