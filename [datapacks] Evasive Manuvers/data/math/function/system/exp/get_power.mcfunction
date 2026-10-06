

execute if score Math.In0 rMath matches 0..1000 run scoreboard players operation Math.temp0 rMath *= #expLimit rMath
execute if score Math.In0 rMath matches 0..1000 run scoreboard players operation Math.temp0 rMath /= #1000 rMath
execute if score Math.In0 rMath matches 0..1000 run return 1

execute if score Math.In0 rMath matches 1001..10000 run scoreboard players operation Math.temp0 rMath *= #expLimit rMath
execute if score Math.In0 rMath matches 1001..10000 run scoreboard players operation Math.temp0 rMath /= #10000 rMath
execute if score Math.In0 rMath matches 1001..10000 run return 10

execute if score Math.In0 rMath matches 10001.. run scoreboard players operation Math.temp0 rMath *= #expLimit rMath
execute if score Math.In0 rMath matches 10001.. run scoreboard players operation Math.temp0 rMath /= #100000 rMath
execute if score Math.In0 rMath matches 10001.. run return 100
