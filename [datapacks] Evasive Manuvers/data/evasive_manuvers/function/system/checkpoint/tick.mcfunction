

function evasive_manuvers:system/element/tick

execute store result score @s EvasiveManuvers.PosZ run data get entity @s Pos[1]


scoreboard players operation #temp rMath = @s EvasiveManuvers.ElementID
execute store result score #temp1 rMath run scoreboard players get @s EvasiveManuvers.PosY
execute store result score #temp2 rMath run scoreboard players get @s EvasiveManuvers.PosZ


execute at @s unless block ~ ~ ~ waxed_chiseled_copper run function evasive_manuvers:system/player/shulker/kill


execute at @s positioned ~-0.5 ~ ~-0.5 as @a[dx=0,dy=1.2,dz=0] positioned ~0.5 ~1 ~0.5 if function evasive_manuvers:system/player/checkpoint/test run function evasive_manuvers:system/player/checkpoint/set

