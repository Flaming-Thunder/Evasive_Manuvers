
scoreboard players operation Math.temp5 rMath = Math.temp0 rMath
scoreboard players operation Math.temp5 rMath *= #10000 rMath
scoreboard players operation Math.temp6 rMath = Math.temp5 rMath
scoreboard players operation Math.temp7 rMath = Math.temp5 rMath

scoreboard players operation Math.temp5 rMath /= Math.temp2 rMath

scoreboard players operation Math.temp8 rMath = Math.temp2 rMath
scoreboard players operation Math.temp8 rMath += Math.temp0 rMath
scoreboard players operation Math.temp6 rMath /= Math.temp8 rMath

scoreboard players operation Math.temp8 rMath = Math.temp2 rMath
scoreboard players operation Math.temp8 rMath += Math.temp9 rMath
scoreboard players operation Math.temp7 rMath *= #4 rMath
scoreboard players operation Math.temp7 rMath /= Math.temp8 rMath

scoreboard players operation Math.temp5 rMath += Math.temp6 rMath
scoreboard players operation Math.temp5 rMath += Math.temp7 rMath
scoreboard players operation Math.temp5 rMath /= #6 rMath

scoreboard players operation Math.temp3 rMath += Math.temp5 rMath




scoreboard players operation Math.temp2 rMath += Math.temp0 rMath


scoreboard players add Math.temp4 rMath 1
execute if score Math.temp4 rMath matches ..14 run function math:system/log/loop
