$setblock ~ ~ ~ $(block_state)

scoreboard players operation @s EvasiveManuvers.PosX = @s EvasiveManuvers.PreSneak

scoreboard players operation #temp rMath = @s EvasiveManuvers.PreSneak
execute positioned ~ ~ ~1 as @e[tag=!EvasiveManuvers.activated,tag=EvasiveManuvers.SnakeBlock,distance=..0.5,type=block_display] run function evasive_manuvers:system/hitblock/activation
execute positioned ~ ~ ~-1 as @e[tag=!EvasiveManuvers.activated,tag=EvasiveManuvers.SnakeBlock,distance=..0.5,type=block_display] run function evasive_manuvers:system/hitblock/activation
execute positioned ~ ~1 ~ as @e[tag=!EvasiveManuvers.activated,tag=EvasiveManuvers.SnakeBlock,distance=..0.5,type=block_display] run function evasive_manuvers:system/hitblock/activation
execute positioned ~ ~-1 ~ as @e[tag=!EvasiveManuvers.activated,tag=EvasiveManuvers.SnakeBlock,distance=..0.5,type=block_display] run function evasive_manuvers:system/hitblock/activation
execute positioned ~1 ~ ~ as @e[tag=!EvasiveManuvers.activated,tag=EvasiveManuvers.SnakeBlock,distance=..0.5,type=block_display] run function evasive_manuvers:system/hitblock/activation
execute positioned ~-1 ~ ~ as @e[tag=!EvasiveManuvers.activated,tag=EvasiveManuvers.SnakeBlock,distance=..0.5,type=block_display] run function evasive_manuvers:system/hitblock/activation


