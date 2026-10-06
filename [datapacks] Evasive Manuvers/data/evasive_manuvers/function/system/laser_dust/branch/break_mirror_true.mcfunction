
scoreboard players add #count rMath 1

execute if function evasive_manuvers:system/laser_dust/branch/test_reflected run return run function evasive_manuvers:system/laser_dust/branch/reflected




execute if score #p rMath matches 0 run function evasive_manuvers:system/laser_dust/particle/main

scoreboard players set #break rMath 0
execute positioned ~-0.125 ~-0.125 ~-0.125 as @e[dx=0,type=interaction,tag=EvasiveManuvers.Mirror] positioned ~-0.75 ~-0.75 ~-0.75 if entity @s[dx=0] run scoreboard players set #break rMath 1
execute if score #break rMath matches 0 run scoreboard players set #breakMirror rMath 0



execute rotated as 00000005-0000-0006-0000-000700000008 positioned ^ ^ ^0.1 run function evasive_manuvers:system/laser_dust/raycast

