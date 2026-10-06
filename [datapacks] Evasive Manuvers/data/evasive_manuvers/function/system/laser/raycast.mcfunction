
execute unless loaded ~ ~ ~ run return fail


scoreboard players add #count rMath 3



scoreboard players set #break rMath 0
execute positioned ~-0.35 ~-0.35 ~-0.35 as @a[dx=0,tag=!EvasiveManuvers.laserVictim,tag=!EvasiveManuvers.LaserUser] positioned ~-0.3 ~-0.3 ~-0.3 if entity @s[dx=0] run function evasive_manuvers:api/player/health/damage {amount:1}
execute positioned ~-0.125 ~-0.125 ~-0.125 as @e[tag=!EvasiveManuvers.LaserUser,type=#evasive_manuvers:laser_victim,dx=0,distance=..1.74] positioned ~-0.75 ~-0.75 ~-0.75 if entity @s[dx=0,distance=..1.74] if function evasive_manuvers:system/laser/victim run return fail


execute positioned ^-0.125 ^-0.125 ^0.3 if function evasive_manuvers:system/laser/raycast_check run return fail
execute positioned ^0.125 ^-0.125 ^0.3 if function evasive_manuvers:system/laser/raycast_check run return fail
execute positioned ^-0.125 ^0.125 ^0.3 if function evasive_manuvers:system/laser/raycast_check run return fail
execute positioned ^0.125 ^0.125 ^0.3 if function evasive_manuvers:system/laser/raycast_check run return fail


scoreboard players operation #s rMath = #count rMath
scoreboard players operation #s rMath %= #20 rMath
execute if score #sound rMath matches 0 if score #s rMath matches 0 run playsound minecraft:block.beacon.ambient ambient @a ~ ~ ~ 0.05 2 0

execute if score #count rMath < Element.LaserLength EvasiveManuvers.Settings positioned ^ ^ ^0.3 run function evasive_manuvers:system/laser/raycast






