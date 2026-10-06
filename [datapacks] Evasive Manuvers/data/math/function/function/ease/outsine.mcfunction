scoreboard players operation Math.temp5 rMath = Math.In0 rMath

scoreboard players operation Math.In0 rMath *= #PI rMath
scoreboard players operation Math.In0 rMath /= #20000 rMath

execute store result score Math.temp0 rMath run function math:trigo/fast_sin

scoreboard players operation Math.In0 rMath = Math.temp5 rMath
return run scoreboard players get Math.temp0 rMath



