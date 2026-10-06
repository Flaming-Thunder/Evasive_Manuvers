
execute on target run scoreboard players operation #dx rMath = @s EvasiveManuvers.PosX
execute on target run scoreboard players operation #dy rMath = @s EvasiveManuvers.PosY
execute on target run scoreboard players operation #dz rMath = @s EvasiveManuvers.PosZ

scoreboard players operation #x rMath = @e[type=slime,distance=..0.01,tag=EvasiveManuvers.mySlime] EvasiveManuvers.PosX
scoreboard players operation #y rMath = @e[type=slime,distance=..0.01,tag=EvasiveManuvers.mySlime] EvasiveManuvers.PosY
scoreboard players operation #z rMath = @e[type=slime,distance=..0.01,tag=EvasiveManuvers.mySlime] EvasiveManuvers.PosZ


scoreboard players operation #x rMath /= #1000 rMath
scoreboard players operation #y rMath /= #1000 rMath
scoreboard players operation #z rMath /= #1000 rMath
scoreboard players operation #dx rMath /= #1000 rMath
scoreboard players operation #dy rMath /= #1000 rMath
scoreboard players operation #dz rMath /= #1000 rMath

execute on target store result score #p rMath run data get entity @s Rotation[0]

scoreboard players operation #dy rMath -= #y rMath


execute unless score #dy rMath matches -1..0 run return fail

execute if score #x rMath < #dx rMath if score #z rMath = #dz rMath on vehicle at @s rotated 90 0 positioned ^ ^ ^1 if block ~ ~ ~ #evasive_manuvers:push_block_air unless entity @e[type=slime,tag=EvasiveManuvers.HeavyCube,distance=..0.4] positioned ^ ^ ^-1 run return run function evasive_manuvers:system/push_block/move
execute if score #x rMath > #dx rMath if score #z rMath = #dz rMath on vehicle at @s rotated -90 0 positioned ^ ^ ^1 if block ~ ~ ~ #evasive_manuvers:push_block_air unless entity @e[type=slime,tag=EvasiveManuvers.HeavyCube,distance=..0.4] positioned ^ ^ ^-1 run return run function evasive_manuvers:system/push_block/move
execute if score #x rMath = #dx rMath if score #z rMath < #dz rMath on vehicle at @s rotated -180 0 positioned ^ ^ ^1 if block ~ ~ ~ #evasive_manuvers:push_block_air unless entity @e[type=slime,tag=EvasiveManuvers.HeavyCube,distance=..0.4] positioned ^ ^ ^-1 run return run function evasive_manuvers:system/push_block/move
execute if score #x rMath = #dx rMath if score #z rMath > #dz rMath on vehicle at @s rotated 0 0 positioned ^ ^ ^1 if block ~ ~ ~ #evasive_manuvers:push_block_air unless entity @e[type=slime,tag=EvasiveManuvers.HeavyCube,distance=..0.4] positioned ^ ^ ^-1 run return run function evasive_manuvers:system/push_block/move

execute if score #p rMath matches -45..45 on vehicle at @s rotated 0 0 positioned ^ ^ ^1 if block ~ ~ ~ #evasive_manuvers:push_block_air unless entity @e[type=slime,tag=EvasiveManuvers.HeavyCube,distance=..0.4] positioned ^ ^ ^-1 run return run function evasive_manuvers:system/push_block/move
execute if score #p rMath matches -180..-135 on vehicle at @s rotated -180 0 positioned ^ ^ ^1 if block ~ ~ ~ #evasive_manuvers:push_block_air unless entity @e[type=slime,tag=EvasiveManuvers.HeavyCube,distance=..0.4] positioned ^ ^ ^-1 run return run function evasive_manuvers:system/push_block/move
execute if score #p rMath matches 135..180 on vehicle at @s rotated -180 0 positioned ^ ^ ^1 if block ~ ~ ~ #evasive_manuvers:push_block_air unless entity @e[type=slime,tag=EvasiveManuvers.HeavyCube,distance=..0.4] positioned ^ ^ ^-1 run return run function evasive_manuvers:system/push_block/move
execute if score #p rMath matches 45..135 on vehicle at @s rotated 90 0 positioned ^ ^ ^1 if block ~ ~ ~ #evasive_manuvers:push_block_air unless entity @e[type=slime,tag=EvasiveManuvers.HeavyCube,distance=..0.4] positioned ^ ^ ^-1 run return run function evasive_manuvers:system/push_block/move
execute if score #p rMath matches -135..-45 on vehicle at @s rotated -90 0 positioned ^ ^ ^1 if block ~ ~ ~ #evasive_manuvers:push_block_air unless entity @e[type=slime,tag=EvasiveManuvers.HeavyCube,distance=..0.4] positioned ^ ^ ^-1 run return run function evasive_manuvers:system/push_block/move



