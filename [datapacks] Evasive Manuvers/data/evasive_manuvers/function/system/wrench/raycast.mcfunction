

scoreboard players remove #count rMath 1

execute if entity @e[tag=EvasiveManuvers.Element,distance=..1] run function evasive_manuvers:system/wrench/settings



execute if score #count rMath matches 1.. positioned ^ ^ ^0.1 run function evasive_manuvers:system/wrench/raycast



