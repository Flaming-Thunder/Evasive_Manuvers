
scoreboard players add #count rMath 3

execute positioned ~-0.125 ~-0.125 ~-0.125 as @e[tag=EvasiveManuvers.Mirror,type=interaction,dx=0,distance=..1.74] positioned ~-0.75 ~-0.75 ~-0.75 if entity @s[dx=0] run function evasive_manuvers:system/laser_dust/mirror/check


execute if score #reflected rMath matches 0 if score #p rMath matches 0 run function evasive_manuvers:system/laser_dust/particle/main
execute if score #p rMath matches 1 positioned ^ ^ ^-0.1 run function evasive_manuvers:system/laser_dust/particle/main
execute if score #p rMath matches 2 positioned ^ ^ ^-0.2 run function evasive_manuvers:system/laser_dust/particle/main


execute rotated as 00000005-0000-0006-0000-000700000008 positioned ^ ^ ^0.3 run function evasive_manuvers:system/laser_dust/raycast

