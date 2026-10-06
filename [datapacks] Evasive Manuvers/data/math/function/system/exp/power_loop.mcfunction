
scoreboard players operation Math.temp3 rMath *= Math.temp3 rMath
scoreboard players operation Math.temp3 rMath /= #1000 rMath



scoreboard players remove Math.temp1 rMath 1

execute if score Math.temp1 rMath matches 2 run scoreboard players operation Math.temp2 rMath = Math.temp5 rMath
execute if score Math.temp1 rMath matches 2 run scoreboard players operation Math.temp2 rMath *= Math.temp2 rMath
execute if score Math.temp1 rMath matches 2 run scoreboard players operation Math.temp2 rMath *= Math.temp3 rMath
execute if score Math.temp1 rMath matches 2 run scoreboard players operation Math.temp4 rMath += Math.temp2 rMath

execute if score Math.temp1 rMath matches 1 run scoreboard players operation Math.temp2 rMath = Math.temp5 rMath
execute if score Math.temp1 rMath matches 1 run scoreboard players operation Math.temp2 rMath *= Math.temp3 rMath
execute if score Math.temp1 rMath matches 1 run scoreboard players operation Math.temp4 rMath += Math.temp2 rMath


execute if score Math.temp1 rMath matches 1.. run function math:system/exp/power_loop






