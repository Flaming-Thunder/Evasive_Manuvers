scoreboard players set #particleBreak rMath 1

execute if score #particle rMath matches 1 positioned ^ ^ ^0.4 positioned ~-0.25 ~-0.25 ~-0.25 as @e[type=interaction,dx=0,tag=EvasiveManuvers.LaserReflected] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run scoreboard players set #particleBreak rMath 0
execute if score #particle rMath matches 2 positioned ^ ^ ^0.6 positioned ~-0.25 ~-0.25 ~-0.25 as @e[type=interaction,dx=0,tag=EvasiveManuvers.LaserReflected] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run scoreboard players set #particleBreak rMath 0
