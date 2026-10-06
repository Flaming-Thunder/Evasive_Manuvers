scoreboard players operation Math.temp5 rMath = Math.In0 rMath

scoreboard players operation Math.In0 rMath *= #PI rMath
scoreboard players operation Math.In0 rMath /= #1000 rMath
scoreboard players operation Math.In0 rMath -= #HALF_PI rMath
scoreboard players operation Math.In0 rMath /= #10 rMath

execute store result score Math.temp0 rMath run function math:trigo/fast_sin

scoreboard players add Math.temp0 rMath 1000
scoreboard players operation Math.temp0 rMath /= #2 rMath

scoreboard players operation Math.In0 rMath = Math.temp5 rMath
return run scoreboard players get Math.temp0 rMath



