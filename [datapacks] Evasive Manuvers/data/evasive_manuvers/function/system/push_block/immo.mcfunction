
execute at @s align xz run tp @s ~0.5 ~ ~0.5
execute if score @s EvasiveManuvers.MotionY matches ..-1 at @s run playsound minecraft:block.gilded_blackstone.fall block @a ~ ~ ~ 0.3 0.4 0
execute at @s if block ~ ~ ~ soul_sand align y run tp @s ~ ~ ~
tag @s add EvasiveManuvers.Movable
