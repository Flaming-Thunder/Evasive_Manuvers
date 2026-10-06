

execute if score Math.temp2 rMath matches 1 run return run scoreboard players get Math.temp1 rMath

scoreboard players operation Math.temp3 rMath = Math.temp2 rMath
scoreboard players operation Math.temp3 rMath %= #2 rMath

scoreboard players operation Math.temp0 rMath = Math.temp1 rMath
scoreboard players operation Math.temp1 rMath *= Math.temp1 rMath
scoreboard players operation Math.temp1 rMath /= Math.temp5 rMath

scoreboard players operation Math.temp2 rMath /= #2 rMath


execute if score Math.temp3 rMath matches 0 run return run function math:system/exp/fast_recursion

data modify storage math:data e.temp append value 0
execute store result storage math:data e.temp[-1] int 1 run scoreboard players get Math.temp0 rMath
execute store result score Math.temp3 rMath run function math:system/exp/fast_recursion
execute store result score Math.temp0 rMath run data get storage math:data e.temp[-1]
data remove storage math:data e.temp[-1]
scoreboard players operation Math.temp3 rMath *= Math.temp0 rMath
scoreboard players operation Math.temp3 rMath /= Math.temp5 rMath
return run scoreboard players get Math.temp3 rMath

