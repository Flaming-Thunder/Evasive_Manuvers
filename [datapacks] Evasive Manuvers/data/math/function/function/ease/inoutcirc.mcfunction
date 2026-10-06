
scoreboard players operation Math.temp7 rMath = Math.In0 rMath



execute if score Math.temp7 rMath matches ..499 run scoreboard players operation Math.In0 rMath *= #2 rMath
execute if score Math.temp7 rMath matches ..499 run execute store result score Math.temp0 rMath run function math:function/ease/incirc
execute if score Math.temp7 rMath matches ..499 run scoreboard players operation Math.In0 rMath = Math.temp7 rMath
execute if score Math.temp7 rMath matches ..499 run return run scoreboard players operation Math.temp0 rMath /= #2 rMath




execute if score Math.temp7 rMath matches 500.. run scoreboard players remove Math.In0 rMath 1000
execute if score Math.temp7 rMath matches 500.. run scoreboard players operation Math.In0 rMath *= Math.In0 rMath
execute if score Math.temp7 rMath matches 500.. run scoreboard players operation Math.In0 rMath *= #-4 rMath
execute if score Math.temp7 rMath matches 500.. run scoreboard players add Math.In0 rMath 1000
execute if score Math.temp7 rMath matches 500.. run execute store result score Math.temp0 rMath run function math:function/sqrt
execute if score Math.temp7 rMath matches 500.. run scoreboard players operation Math.In0 rMath = Math.temp7 rMath
execute if score Math.temp7 rMath matches 500.. run scoreboard players add Math.temp0 rMath 1000
execute if score Math.temp7 rMath matches 500.. run return run scoreboard players operation Math.temp0 rMath /= #2 rMath


