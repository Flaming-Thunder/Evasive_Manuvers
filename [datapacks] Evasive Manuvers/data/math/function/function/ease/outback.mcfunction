scoreboard players operation Math.temp0 rMath = Math.In0 rMath
scoreboard players operation Math.temp1 rMath = Math.In0 rMath

scoreboard players remove Math.temp0 rMath 370

scoreboard players remove Math.temp1 rMath 1000
scoreboard players operation Math.temp1 rMath *= Math.temp1 rMath
scoreboard players operation Math.temp1 rMath /= #1000 rMath
scoreboard players operation Math.temp1 rMath *= #eback1 rMath
scoreboard players operation Math.temp1 rMath /= #1000 rMath
scoreboard players operation Math.temp1 rMath *= Math.temp0 rMath
scoreboard players operation Math.temp1 rMath /= #1000 rMath
return run scoreboard players add Math.temp1 rMath 1000
