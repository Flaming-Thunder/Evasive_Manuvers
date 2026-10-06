
scoreboard players operation #dy fptrick_impulse = #Motion EvasiveManuvers.PosY
scoreboard players operation #dy fptrick_impulse *= #10 rMath



execute store result score #g rMath run attribute @s gravity get 10000
execute store result score #dy rMath run attribute @s jump_strength get 10000
scoreboard players operation #dy fptrick_impulse -= #dy rMath

#scoreboard players add #dy fptrick_impulse 800

execute if score #g rMath matches 1.. run scoreboard players operation #dy fptrick_impulse *= #-1 rMath



scoreboard players operation #y fptrick_impulse += #dy fptrick_impulse
#scoreboard players operation #z fptrick_impulse += #dz fptrick_impulse


