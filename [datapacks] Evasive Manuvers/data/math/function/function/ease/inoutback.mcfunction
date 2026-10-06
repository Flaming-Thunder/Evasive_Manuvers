
scoreboard players operation Math.temp0 rMath = Math.In0 rMath
scoreboard players operation Math.temp1 rMath = Math.In0 rMath


execute if score Math.In0 rMath matches ..499 run scoreboard players remove Math.temp0 rMath 360
execute if score Math.In0 rMath matches ..499 run scoreboard players operation Math.temp1 rMath *= Math.temp1 rMath
execute if score Math.In0 rMath matches ..499 run scoreboard players operation Math.temp1 rMath /= #1000 rMath
execute if score Math.In0 rMath matches ..499 run scoreboard players operation Math.temp1 rMath *= #eback2 rMath
execute if score Math.In0 rMath matches ..499 run scoreboard players operation Math.temp1 rMath /= #1000 rMath
execute if score Math.In0 rMath matches ..499 run scoreboard players operation Math.temp1 rMath *= Math.temp0 rMath
execute if score Math.In0 rMath matches ..499 run return run scoreboard players operation Math.temp1 rMath /= #1000 rMath

execute if score Math.In0 rMath matches 500.. run scoreboard players remove Math.temp0 rMath 639
execute if score Math.In0 rMath matches 500.. run scoreboard players remove Math.temp1 rMath 1000
execute if score Math.In0 rMath matches 500.. run scoreboard players operation Math.temp1 rMath *= Math.temp1 rMath
execute if score Math.In0 rMath matches 500.. run scoreboard players operation Math.temp1 rMath /= #1000 rMath
execute if score Math.In0 rMath matches 500.. run scoreboard players operation Math.temp1 rMath *= #eback2 rMath
execute if score Math.In0 rMath matches 500.. run scoreboard players operation Math.temp1 rMath /= #1000 rMath
execute if score Math.In0 rMath matches 500.. run scoreboard players operation Math.temp1 rMath *= Math.temp0 rMath
execute if score Math.In0 rMath matches 500.. run scoreboard players operation Math.temp1 rMath /= #1000 rMath
execute if score Math.In0 rMath matches 500.. run return run scoreboard players add Math.temp1 rMath 1000
