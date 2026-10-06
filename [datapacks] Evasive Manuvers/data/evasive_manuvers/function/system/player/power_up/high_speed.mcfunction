scoreboard players remove @s EvasiveManuvers.HighSpeedTick 1

attribute @s movement_speed modifier remove high_speed
attribute @s friction_modifier modifier remove high_speed
execute if score @s EvasiveManuvers.HighSpeedTick matches 1.. run attribute @s friction_modifier modifier add high_speed -0.16 add_multiplied_total

execute if score @s EvasiveManuvers.HighSpeedTick matches 19 run attribute @s movement_speed modifier add high_speed 1.6400000000000001 add_multiplied_total
execute if score @s EvasiveManuvers.HighSpeedTick matches 18 run attribute @s movement_speed modifier add high_speed 1.8 add_multiplied_total
execute if score @s EvasiveManuvers.HighSpeedTick matches 17 run attribute @s movement_speed modifier add high_speed 1.9411764705882353 add_multiplied_total
execute if score @s EvasiveManuvers.HighSpeedTick matches 16 run attribute @s movement_speed modifier add high_speed 2 add_multiplied_total
execute if score @s EvasiveManuvers.HighSpeedTick matches 15 run attribute @s movement_speed modifier add high_speed 1.9411764705882353 add_multiplied_total
execute if score @s EvasiveManuvers.HighSpeedTick matches 14 run attribute @s movement_speed modifier add high_speed 1.8 add_multiplied_total
execute if score @s EvasiveManuvers.HighSpeedTick matches 13 run attribute @s movement_speed modifier add high_speed 1.64 add_multiplied_total
execute if score @s EvasiveManuvers.HighSpeedTick matches 12 run attribute @s movement_speed modifier add high_speed 1.5 add_multiplied_total
execute if score @s EvasiveManuvers.HighSpeedTick matches 11 run attribute @s movement_speed modifier add high_speed 1.3902439024390243 add_multiplied_total
execute if score @s EvasiveManuvers.HighSpeedTick matches 10 run attribute @s movement_speed modifier add high_speed 1.3076923076923077 add_multiplied_total
execute if score @s EvasiveManuvers.HighSpeedTick matches 9 run attribute @s movement_speed modifier add high_speed 1.2461538461538462 add_multiplied_total
execute if score @s EvasiveManuvers.HighSpeedTick matches 8 run attribute @s movement_speed modifier add high_speed 1.2 add_multiplied_total
execute if score @s EvasiveManuvers.HighSpeedTick matches 7 run attribute @s movement_speed modifier add high_speed 1.1649484536082475 add_multiplied_total
execute if score @s EvasiveManuvers.HighSpeedTick matches 6 run attribute @s movement_speed modifier add high_speed 1.1379310344827587 add_multiplied_total
execute if score @s EvasiveManuvers.HighSpeedTick matches 5 run attribute @s movement_speed modifier add high_speed 1.1167883211678833 add_multiplied_total
execute if score @s EvasiveManuvers.HighSpeedTick matches 4 run attribute @s movement_speed modifier add high_speed 1.1 add_multiplied_total
execute if score @s EvasiveManuvers.HighSpeedTick matches 3 run attribute @s movement_speed modifier add high_speed 1.0864864864864865 add_multiplied_total
execute if score @s EvasiveManuvers.HighSpeedTick matches 2 run attribute @s movement_speed modifier add high_speed 1.0754716981132075 add_multiplied_total
execute if score @s EvasiveManuvers.HighSpeedTick matches 1 run attribute @s movement_speed modifier add high_speed 1.0754716981132075 add_multiplied_total

