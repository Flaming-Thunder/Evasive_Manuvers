scoreboard players operation Math.temp6 rMath = Math.In0 rMath

scoreboard players operation Math.In0 rMath *= #-10 rMath

execute store result score Math.temp0 rMath run function math:function/exp

scoreboard players operation Math.temp0 rMath *= #-1 rMath
scoreboard players add Math.temp0 rMath 1000


scoreboard players operation Math.In0 rMath = Math.temp6 rMath
return run scoreboard players get Math.temp0 rMath



