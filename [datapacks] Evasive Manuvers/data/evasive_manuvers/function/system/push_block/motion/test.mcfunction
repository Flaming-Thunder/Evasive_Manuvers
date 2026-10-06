
data modify storage math:data Pos set value [0d,0d,0d]
execute store result storage math:data Pos[0] double 0.001 run scoreboard players operation #temp EvasiveManuvers.PosX += #Motion EvasiveManuvers.PosX
execute store result storage math:data Pos[1] double 0.001 run scoreboard players operation #temp EvasiveManuvers.PosY += #Motion EvasiveManuvers.PosY
execute store result storage math:data Pos[2] double 0.001 run scoreboard players operation #temp EvasiveManuvers.PosZ += #Motion EvasiveManuvers.PosZ



data modify entity 00000005-0000-0006-0000-000700000008 Pos set from storage math:data Pos


execute facing entity 00000005-0000-0006-0000-000700000008 feet positioned ^ ^ ^1 run function evasive_manuvers:system/push_block/motion/ice



execute positioned as 00000005-0000-0006-0000-000700000008 if entity @s[distance=..0.1] run return fail

execute facing entity 00000005-0000-0006-0000-000700000008 feet positioned as 00000005-0000-0006-0000-000700000008 positioned ^ ^ ^0.1 positioned ~-0.49 ~-0.05 ~-0.49 as @e[dx=0,dz=0,dy=0.2,type=!#evasive_manuvers:intangible,tag=!EvasiveManuvers.HeavyCube,tag=!EvasiveManuvers.HeavyCubeShulker] positioned ~-0.02 ~ ~-0.02 if entity @s[dx=0,dz=0,dy=0.2] unless function evasive_manuvers:system/push_block/motion/main unless entity @s[type=player] run data modify entity @e[type=slime,tag=this,limit=1] Motion set value [0d,0d,0d]
execute facing entity 00000005-0000-0006-0000-000700000008 feet positioned as 00000005-0000-0006-0000-000700000008 positioned ^ ^ ^0.1 positioned ~-0.49 ~ ~-0.49 as @e[dx=0,type=slime,tag=EvasiveManuvers.HeavyCube,tag=!this,tag=!EvasiveManuvers.HeavyCubeShulker] positioned ~-0.02 ~ ~-0.02 if entity @s[dx=0] unless function evasive_manuvers:system/push_block/motion/main run data modify entity @e[type=slime,tag=this,limit=1] Motion set value [0d,0d,0d]


