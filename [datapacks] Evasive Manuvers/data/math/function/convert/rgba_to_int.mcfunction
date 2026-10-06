

scoreboard players operation Math.temp0 rMath = Math.In03 rMath 


scoreboard players operation Math.temp0 rMath *= #256 rMath
scoreboard players operation Math.temp0 rMath += Math.In0 rMath
scoreboard players operation Math.temp0 rMath *= #256 rMath
scoreboard players operation Math.temp0 rMath += Math.In01 rMath
scoreboard players operation Math.temp0 rMath *= #256 rMath
scoreboard players operation Math.temp0 rMath += Math.In02 rMath

return run scoreboard players get Math.temp0 rMath

