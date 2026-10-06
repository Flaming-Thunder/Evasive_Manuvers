

scoreboard players set #y fptrick_impulse 10000
scoreboard players set #x fptrick_impulse 4000
scoreboard players set #z fptrick_impulse 0

execute as @a[distance=0.1..] at @s run function fptrick_impulse:launch_global

