#execute unless entity @e[type=item_display,tag=EvasiveManuvers.myShulker] at @s anchored eyes positioned ^ ^ ^0.001 positioned ~ ~0.1 ~ run function evasive_manuvers:system/player/shulker/summon5_big

execute unless entity @s[tag=EvasiveManuvers.InSlide] run function evasive_manuvers:system/player/move/slide/boost
execute unless entity @s[tag=EvasiveManuvers.InSlide] run scoreboard players set @s EvasiveManuvers.Slide 0
tag @s add EvasiveManuvers.InSlide

#function evasive_manuvers:system/player/shulker/tp




#execute at @s run tp 00000001-0000-0002-0000-000300000004 ~ ~ ~
#
#scoreboard players operation Crawling.temp1 rMath = @s EvasiveManuvers.PosY
#execute store result score Crawling.temp2 rMath run attribute @s scale get 800
#scoreboard players operation Crawling.temp1 rMath += Crawling.temp2 rMath
#execute store result entity 00000001-0000-0002-0000-000300000004 Pos[1] double 0.001 run scoreboard players get Crawling.temp1 rMath
#
#scoreboard players operation Crawling.temp1 rMath = @s EvasiveManuvers.PosX
#scoreboard players operation Crawling.temp1 rMath += #Motion EvasiveManuvers.PosX
#execute store result entity 00000001-0000-0002-0000-000300000004 Pos[0] double 0.001 run scoreboard players get Crawling.temp1 rMath
#
#scoreboard players operation Crawling.temp1 rMath = @s EvasiveManuvers.PosZ
#scoreboard players operation Crawling.temp1 rMath += #Motion EvasiveManuvers.PosZ
#execute store result entity 00000001-0000-0002-0000-000300000004 Pos[2] double 0.001 run scoreboard players get Crawling.temp1 rMath
#
#
#
#execute at 00000001-0000-0002-0000-000300000004 positioned ~ ~ ~ run tp @e[type=item_display,tag=EvasiveManuvers.myShulker] ~ ~ ~


#execute as @e[type=item_display,tag=EvasiveManuvers.myShulker,tag=EvasiveManuvers.1] at @s rotated as @a[sort=nearest,limit=1] rotated ~ 0 run tp @s ^ ^ ^0.6
#execute as @e[type=item_display,tag=EvasiveManuvers.myShulker,tag=EvasiveManuvers.3] at @s rotated as @a[sort=nearest,limit=1] rotated ~ 0 run tp @s ^ ^ ^-0.6
#
#execute as @e[type=item_display,tag=EvasiveManuvers.myShulker,tag=EvasiveManuvers.4] at @s rotated as @a[sort=nearest,limit=1] rotated ~ 0 run tp @s ^0.6 ^ ^0.6
#execute as @e[type=item_display,tag=EvasiveManuvers.myShulker,tag=EvasiveManuvers.5] at @s rotated as @a[sort=nearest,limit=1] rotated ~ 0 run tp @s ^-0.6 ^ ^0.6


#execute if predicate evasive_manuvers:is_sneaking run attribute @s jump_strength modifier add movement -0.6 add_multiplied_total

#execute store result score #break1 rMath run function evasive_manuvers:system/player/is_crawling

scoreboard players set #break1 rMath 1
execute if score @s EvasiveManuvers.Slide >= Movement.SlideTime EvasiveManuvers.Settings run scoreboard players set #break1 rMath 0
#execute if score @s EvasiveManuvers.Slide matches 0..1 run scoreboard players set #break1 rMath 1

attribute @s jump_strength modifier add em:slide -1 add_multiplied_total
attribute @s scale modifier add em:slide -0.5 add_multiplied_total
attribute @s air_drag_modifier modifier add em:slide -1 add_multiplied_total
attribute @s friction_modifier modifier add em:slide -1 add_multiplied_total


scoreboard players add @s EvasiveManuvers.Slide 1

execute if score #break1 rMath matches 0 run function evasive_manuvers:system/player/move/slide/remove

#execute if score #break1 rMath matches 1 unless score @s EvasiveManuvers.HighSpeedTick matches 1.. run return run attribute @s movement_speed modifier add em:slide 0.5 add_multiplied_base
#execute if score #break1 rMath matches 1 if score @s EvasiveManuvers.HighSpeedTick matches 1.. run return run attribute @s movement_speed modifier add em:slide 0.5 add_multiplied_base

