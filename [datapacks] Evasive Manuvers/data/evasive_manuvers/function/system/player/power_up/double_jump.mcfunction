


scoreboard players remove @s EvasiveManuvers.AirJumpTick 1
#execute if score @s EvasiveManuvers.AirJumpTick matches 0 run effect clear @s levitation
#execute if score @s EvasiveManuvers.AirJumpTick matches 0 run effect clear @s slow_falling
#execute if score @s EvasiveManuvers.AirJumpTick matches 0 run attribute @s gravity modifier remove air_jump

