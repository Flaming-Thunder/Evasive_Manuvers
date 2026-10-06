scoreboard players set #customJump rMath 0


execute if entity @s[tag=EvasiveManuvers.WaitGrab] if score #OnGround rMath matches 1 run tag @s remove EvasiveManuvers.WaitGrab
execute if entity @s[tag=EvasiveManuvers.InGrab] if function evasive_manuvers:system/player/move/grab/in run return 1


execute if score #Motion EvasiveManuvers.PosY matches ..0 if score #OnGround rMath matches 0 if predicate evasive_manuvers:is_sneaking at @s if block ~ ~-0.2 ~ #air if function evasive_manuvers:system/player/move/climb/branch if predicate evasive_manuvers:input_jump run return run function evasive_manuvers:system/player/move/climb/jump


execute if score #OnGround rMath matches 1 run function evasive_manuvers:system/player/move/wall_slide/can
execute at @s rotated ~ 0 unless block ~0.5 ~ ~ #evasive_manuvers:slidable unless block ~-0.5 ~ ~ #evasive_manuvers:slidable unless block ~ ~ ~0.5 #evasive_manuvers:slidable unless block ~ ~ ~-0.5 #evasive_manuvers:slidable run function evasive_manuvers:system/player/move/wall_slide/can
execute if entity @s[tag=EvasiveManuvers.CanWallSlide] if score #OnGround rMath matches 0 if score #Motion EvasiveManuvers.PosY matches ..0 if predicate evasive_manuvers:is_sprinting at @s if block ~ ~-0.2 ~ #air if function evasive_manuvers:system/player/move/wall_slide/branch if predicate evasive_manuvers:input_jump run function evasive_manuvers:system/player/move/wall_slide/jump
execute unless entity @s[tag=EvasiveManuvers.CanWallSlide] run function evasive_manuvers:system/player/move/wall_slide/post_effect_remove
execute if score #OnGround rMath matches 1 run function evasive_manuvers:system/player/move/wall_slide/post_effect_remove


execute unless entity @s[tag=EvasiveManuvers.InGrab] unless entity @s[tag=EvasiveManuvers.WaitGrab] if predicate evasive_manuvers:is_sneaking at @s anchored eyes positioned ^ ^ ^0.001 positioned ~ ~0.6 ~ if function evasive_manuvers:system/player/move/grab/test run function evasive_manuvers:system/player/move/grab/start



scoreboard players set #slide rMath 1
execute unless entity @s[tag=EvasiveManuvers.WaitSlide] if predicate evasive_manuvers:is_sprinting if predicate evasive_manuvers:input_sneak at @s if predicate evasive_manuvers:stepping_on_slidable rotated ~ 0 positioned ^ ^ ^0.5 if function evasive_manuvers:system/player/move/crowl/air run return run function evasive_manuvers:system/player/move/slide/_
scoreboard players set #slide rMath 0

execute if predicate evasive_manuvers:input_sneak if score #OnGround rMath matches 1 at @s rotated ~ 0 positioned ^ ^ ^0.5 if function evasive_manuvers:system/player/move/crowl/test run return run function evasive_manuvers:system/player/move/crowl/_


execute at @s as @e[type=item_display,tag=EvasiveManuvers.myShulker] run function evasive_manuvers:system/player/shulker/kill







