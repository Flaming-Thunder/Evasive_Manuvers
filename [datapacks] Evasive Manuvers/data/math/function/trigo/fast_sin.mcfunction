scoreboard players operation Math.temp0 rMath = Math.In0 rMath
scoreboard players operation Math.temp0 rMath *= #10 rMath

scoreboard players set Math.temp1 rMath 1

scoreboard players operation Math.temp0 rMath %= #TWO_PI rMath


execute if score Math.temp0 rMath > #HALF_PI rMath if score Math.temp0 rMath <= #PI rMath run function math:system/trigo/branch/0
execute if score Math.temp0 rMath > #PI rMath if score Math.temp0 rMath <= #THREE_HALF_PI rMath run function math:system/trigo/branch/1
execute if score Math.temp0 rMath > #THREE_HALF_PI rMath if score Math.temp0 rMath < #TWO_PI rMath run function math:system/trigo/branch/2



## sin(x) ~ x(0.9998+x*x(-0.1659+0.0076x*x)) {0<=x<=pi/2}


scoreboard players operation Math.temp2 rMath = Math.temp0 rMath
scoreboard players operation Math.temp2 rMath *= Math.temp0 rMath
scoreboard players operation Math.temp2 rMath /= #10000 rMath
scoreboard players operation Math.temp3 rMath = Math.temp2 rMath

scoreboard players operation Math.temp2 rMath *= #sinc2 rMath
scoreboard players operation Math.temp2 rMath /= #10000 rMath
scoreboard players operation Math.temp2 rMath += #sinc1 rMath
scoreboard players operation Math.temp2 rMath *= Math.temp3 rMath
scoreboard players operation Math.temp2 rMath /= #10000 rMath
scoreboard players operation Math.temp2 rMath += #sinc0 rMath
scoreboard players operation Math.temp2 rMath *= Math.temp0 rMath
scoreboard players operation Math.temp2 rMath /= #10000 rMath



scoreboard players operation Math.temp2 rMath *= Math.temp1 rMath
scoreboard players operation Math.temp2 rMath /= #10 rMath


return run scoreboard players get Math.temp2 rMath


