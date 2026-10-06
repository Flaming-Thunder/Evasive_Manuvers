scoreboard players operation @s EvasiveManuvers.PosY = @s EvasiveManuvers.PreSneak
scoreboard players operation @s EvasiveManuvers.PosY /= #7 rMath

execute store result entity @s interpolation_duration int 1.0 run scoreboard players get @s EvasiveManuvers.PosY

data modify entity @s transformation set value {left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.98,0.98,0.98],translation:[-.49,-0.19,-.49]}

execute at @s run setblock ~ ~ ~ barrier

tag @s add EvasiveManuvers.activated
