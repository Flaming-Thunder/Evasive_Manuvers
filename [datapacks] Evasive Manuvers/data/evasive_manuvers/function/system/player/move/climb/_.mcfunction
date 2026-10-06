attribute @s gravity modifier add em:climb -0.95 add_multiplied_total

effect give @s slow_falling 1 255 true


execute if score #Motion EvasiveManuvers.PosY matches -50.. run return 1

scoreboard players operation #dy fptrick_impulse = #Motion EvasiveManuvers.PosY
scoreboard players operation #dy fptrick_impulse *= #10 rMath

scoreboard players operation #y fptrick_impulse -= #dy fptrick_impulse

return 1





