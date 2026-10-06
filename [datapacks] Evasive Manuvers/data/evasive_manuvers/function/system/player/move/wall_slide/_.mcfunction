
attribute @s air_drag_modifier modifier add em:wall_slide -0.3 add_multiplied_total

execute if score #Motion EvasiveManuvers.PosY matches 0.. run function evasive_manuvers:system/player/move/wall_slide/post_effect_remove
execute if score #Motion EvasiveManuvers.PosY matches 0.. run return fail

attribute @s gravity modifier add em:wall_slide -0.8 add_multiplied_total
effect give @s slow_falling 1 255 true

tag @s add EvasiveManuvers.CanWallSlide.Coyote

return 1

