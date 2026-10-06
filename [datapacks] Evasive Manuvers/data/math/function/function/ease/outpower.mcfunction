scoreboard players set Math.In02 rMath 1000


scoreboard players operation Math.temp7 rMath = Math.In0 rMath

scoreboard players operation Math.In0 rMath *= #-1 rMath
scoreboard players add Math.In0 rMath 1000

execute store result score Math.temp0 rMath run function math:function/fast_exponentiation

scoreboard players operation Math.temp0 rMath *= #-1 rMath
return run scoreboard players add Math.temp0 rMath 1000





