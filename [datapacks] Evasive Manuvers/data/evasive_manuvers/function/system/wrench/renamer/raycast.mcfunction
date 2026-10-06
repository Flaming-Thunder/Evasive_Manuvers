

scoreboard players remove #count rMath 1

execute as @e[tag=EvasiveManuvers.Element,distance=..0.3] run function evasive_manuvers:system/wrench/renamer/set
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=EvasiveManuvers.Element,dx=0] run function evasive_manuvers:system/wrench/renamer/set



execute if score #count rMath matches 1.. positioned ^ ^ ^0.1 run function evasive_manuvers:system/wrench/renamer/raycast

