


execute if score Math.In0 rMath matches 0..9 run scoreboard players operation Math.temp0 rMath *= #10000 rMath
execute if score Math.In0 rMath matches 0..9 run return -6908
execute if score Math.In0 rMath matches 10..99 run scoreboard players operation Math.temp0 rMath *= #1000 rMath
execute if score Math.In0 rMath matches 10..99 run return -4605
execute if score Math.In0 rMath matches 100..999 run scoreboard players operation Math.temp0 rMath *= #100 rMath
execute if score Math.In0 rMath matches 100..999 run return -2303
execute if score Math.In0 rMath matches 1000..9999 run scoreboard players operation Math.temp0 rMath *= #10 rMath
execute if score Math.In0 rMath matches 1000..9999 run return 0

execute if score Math.In0 rMath matches 10000..99999 run return 2303

execute if score Math.In0 rMath matches 100000..999999 run scoreboard players operation Math.temp0 rMath /= #10 rMath
execute if score Math.In0 rMath matches 100000..999999 run return 4605
execute if score Math.In0 rMath matches 1000000..9999999 run scoreboard players operation Math.temp0 rMath /= #100 rMath
execute if score Math.In0 rMath matches 1000000..9999999 run return 6908
execute if score Math.In0 rMath matches 10000000..99999999 run scoreboard players operation Math.temp0 rMath /= #1000 rMath
execute if score Math.In0 rMath matches 10000000..99999999 run return 9210
execute if score Math.In0 rMath matches 100000000..999999999 run scoreboard players operation Math.temp0 rMath /= #10000 rMath
execute if score Math.In0 rMath matches 100000000..999999999 run return 11513
execute if score Math.In0 rMath matches 1000000000.. run scoreboard players operation Math.temp0 rMath /= #100000 rMath
execute if score Math.In0 rMath matches 1000000000.. run return 13816

