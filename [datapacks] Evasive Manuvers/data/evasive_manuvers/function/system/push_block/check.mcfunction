
execute positioned ~ -62 ~ if entity @s[dy=-100] run function evasive_manuvers:system/player/shulker/kill

attribute @s gravity modifier remove sink
execute if block ~ ~ ~ lava run attribute @s gravity modifier add sink 10 add_multiplied_total
execute if block ~ ~ ~ water run attribute @s gravity modifier add sink 10 add_multiplied_total


scoreboard players operation @s EvasiveManuvers.MotionY = #Motion EvasiveManuvers.PosY



#execute if block ~ ~ ~ piston_head[facing=east] unless block ~0.5 ~ ~ #evasive_manuvers:push_block_air rotated -90 0 run function evasive_manuvers:system/push_block/piston_corrector/summon
#execute if block ~ ~ ~ piston_head[facing=west] unless block ~-0.5 ~ ~ #evasive_manuvers:push_block_air rotated 90 0 run function evasive_manuvers:system/push_block/piston_corrector/summon
#execute if block ~ ~ ~ piston_head[facing=south] unless block ~ ~ ~0.5 #evasive_manuvers:push_block_air rotated 0 0 run function evasive_manuvers:system/push_block/piston_corrector/summon
#execute if block ~ ~ ~ piston_head[facing=north] unless block ~ ~ ~-0.5 #evasive_manuvers:push_block_air rotated -180 0 run function evasive_manuvers:system/push_block/piston_corrector/summon
#execute if block ~ ~ ~ piston_head[facing=up] unless block ~ ~1 ~ #evasive_manuvers:push_block_air rotated 1 -90 run function evasive_manuvers:system/push_block/piston_corrector/summon
#execute if block ~ ~ ~ piston_head[facing=down] unless block ~ ~-0.5 ~ #evasive_manuvers:push_block_air rotated 2 90 run function evasive_manuvers:system/push_block/piston_corrector/summon
#execute if block ~ ~ ~ piston_head[facing=east] positioned ~1 ~ ~ if entity @e[type=slime,tag=EvasiveManuvers.HeavyCube,distance=..0.4] at @s rotated -90 0 run function evasive_manuvers:system/push_block/piston_corrector/summon
#execute if block ~ ~ ~ piston_head[facing=west] positioned ~-1 ~ ~ if entity @e[type=slime,tag=EvasiveManuvers.HeavyCube,distance=..0.4] at @s rotated 90 0 run function evasive_manuvers:system/push_block/piston_corrector/summon
#execute if block ~ ~ ~ piston_head[facing=south] positioned ~ ~ ~1 if entity @e[type=slime,tag=EvasiveManuvers.HeavyCube,distance=..0.4] at @s rotated 0 0 run function evasive_manuvers:system/push_block/piston_corrector/summon
#execute if block ~ ~ ~ piston_head[facing=north] positioned ~ ~ ~-1 if entity @e[type=slime,tag=EvasiveManuvers.HeavyCube,distance=..0.4] at @s rotated -180 0 run function evasive_manuvers:system/push_block/piston_corrector/summon
#execute if block ~ ~ ~ piston_head[facing=up] positioned ~ ~1 ~ if entity @e[type=slime,tag=EvasiveManuvers.HeavyCube,distance=..0.4] at @s rotated 1 -90 run function evasive_manuvers:system/push_block/piston_corrector/summon
#execute if block ~ ~ ~ piston_head[facing=down] positioned ~ ~-1 ~ if entity @e[type=slime,tag=EvasiveManuvers.HeavyCube,distance=..0.4] at @s rotated 2 90 run function evasive_manuvers:system/push_block/piston_corrector/summon



data modify storage math:data Pos set value [0d,0d,0d]
execute store result storage math:data Pos[0] double 0.001 run scoreboard players operation #temp EvasiveManuvers.PosX += #Motion EvasiveManuvers.PosX
execute store result storage math:data Pos[1] double 0.001 run scoreboard players operation #temp EvasiveManuvers.PosY += #Motion EvasiveManuvers.PosY
execute store result storage math:data Pos[2] double 0.001 run scoreboard players operation #temp EvasiveManuvers.PosZ += #Motion EvasiveManuvers.PosZ

data modify entity 00000005-0000-0006-0000-000700000008 Pos set from storage math:data Pos

execute facing entity 00000005-0000-0006-0000-000700000008 feet positioned ^ ^ ^1 run function evasive_manuvers:system/push_block/motion/ice


