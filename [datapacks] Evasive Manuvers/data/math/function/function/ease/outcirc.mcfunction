
scoreboard players operation Math.temp6 rMath = Math.In0 rMath

scoreboard players operation Math.In0 rMath *= #-1 rMath
scoreboard players add Math.In0 rMath 2000
scoreboard players operation Math.In0 rMath *= Math.temp6 rMath
execute store result score Math.temp0 rMath run function math:function/sqrt
scoreboard players operation Math.In0 rMath = Math.temp6 rMath
return run scoreboard players get Math.temp0 rMath


