

execute unless loaded ~ ~ ~ run return fail
execute if score #count rMath >= Element.LaserLength EvasiveManuvers.Settings run return fail

execute if function evasive_manuvers:system/laser/raycast_check run return fail

scoreboard players set #reflected rMath 0

scoreboard players operation #p rMath = #count rMath
scoreboard players operation #p rMath %= #3 rMath

scoreboard players operation #s rMath = #count rMath
scoreboard players operation #s rMath %= #20 rMath
execute if score #sound rMath matches 0 if score #s rMath matches 0 run playsound minecraft:block.beacon.ambient ambient @a ~ ~ ~ 0.05 2 0


execute positioned ~-0.25 ~-0.25 ~-0.25 as @a[dx=0,tag=!EvasiveManuvers.laserVictim,tag=!EvasiveManuvers.LaserUser] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run function evasive_manuvers:api/player/health/damage {amount:1}
execute positioned ~-0.125 ~-0.125 ~-0.125 as @e[tag=!EvasiveManuvers.LaserUser,type=#evasive_manuvers:laser_victim,dx=0,distance=..1.74] positioned ~-0.75 ~-0.75 ~-0.75 if entity @s[dx=0,distance=..1.74] if function evasive_manuvers:system/laser/victim run return fail



execute if score #breakMirror rMath matches 0 run function evasive_manuvers:system/laser_dust/branch/break_mirror_false

execute if score #breakMirror rMath matches 1 run function evasive_manuvers:system/laser_dust/branch/break_mirror_true






