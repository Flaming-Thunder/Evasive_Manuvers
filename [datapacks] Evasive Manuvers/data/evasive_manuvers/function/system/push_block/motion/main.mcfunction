
execute if entity @s[type=player] run return run function evasive_manuvers:system/push_block/motion/player




data modify storage math:data Pos set from entity @s Motion
execute store result score #Motion2 EvasiveManuvers.PosX run data get storage math:data Pos[0] 1000
execute store result score #Motion2 EvasiveManuvers.PosY run data get storage math:data Pos[1] 1000
execute store result score #Motion2 EvasiveManuvers.PosZ run data get storage math:data Pos[2] 1000


execute at @s if block ~ ~-0.1 ~ #air run scoreboard players operation #Motion2 EvasiveManuvers.PosX /= #100 rMath
execute at @s if block ~ ~-0.1 ~ #air run scoreboard players operation #Motion2 EvasiveManuvers.PosZ /= #100 rMath

execute store result entity @s Motion[0] double 0.0012 run scoreboard players operation #Motion2 EvasiveManuvers.PosX += #Motion EvasiveManuvers.PosX
execute store result entity @s Motion[1] double 0.0012 run scoreboard players operation #Motion2 EvasiveManuvers.PosY += #Motion EvasiveManuvers.PosY
execute store result entity @s Motion[2] double 0.0012 run scoreboard players operation #Motion2 EvasiveManuvers.PosZ += #Motion EvasiveManuvers.PosZ

execute if entity @s[tag=EvasiveManuvers.HeavyCube] run return fail


execute positioned as @s positioned ^ ^ ^0.5 unless block ~ ~ ~ #evasive_manuvers:laser_air run return run kill @s
execute positioned as @s positioned ^ ^ ^0.5 positioned ~-.5 ~ ~-.5 if entity @e[type=shulker,dx=0,tag=!EvasiveManuvers.HeavyCubeShulker] run return run kill @s
execute positioned as @s positioned ^ ^ ^0.5 positioned ~-.5 ~ ~-.5 if entity @e[type=slime,tag=!this,dx=0,tag=EvasiveManuvers.HeavyCube] run return run kill @s

