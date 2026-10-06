scoreboard players set Math.temp0 rMath 2000

scoreboard players operation Math.temp0 rMath -= Math.In0 rMath
scoreboard players operation Math.temp0 rMath *= Math.In0 rMath
scoreboard players operation Math.temp0 rMath /= #1000 rMath
return run scoreboard players get Math.temp0 rMath

