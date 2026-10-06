data remove storage math:data out

scoreboard players operation Math.temp0 rMath = Math.In0 rMath
scoreboard players operation Math.temp0 rMath /= #20 rMath
scoreboard players operation Math.temp0 rMath %= #60 rMath

scoreboard players operation Math.temp1 rMath = Math.In0 rMath
scoreboard players operation Math.temp1 rMath /= #1200 rMath

execute if score Math.temp0 rMath matches 0 run data modify storage math:data out.sec set value "00"
execute if score Math.temp0 rMath matches 1 run data modify storage math:data out.sec set value "01"
execute if score Math.temp0 rMath matches 2 run data modify storage math:data out.sec set value "02"
execute if score Math.temp0 rMath matches 3 run data modify storage math:data out.sec set value "03"
execute if score Math.temp0 rMath matches 4 run data modify storage math:data out.sec set value "04"
execute if score Math.temp0 rMath matches 5 run data modify storage math:data out.sec set value "05"
execute if score Math.temp0 rMath matches 6 run data modify storage math:data out.sec set value "06"
execute if score Math.temp0 rMath matches 7 run data modify storage math:data out.sec set value "07"
execute if score Math.temp0 rMath matches 8 run data modify storage math:data out.sec set value "08"
execute if score Math.temp0 rMath matches 9 run data modify storage math:data out.sec set value "09"

execute if score Math.temp0 rMath matches 10.. store result storage math:data out.sec int 1.0 run scoreboard players get Math.temp0 rMath
execute if score Math.temp0 rMath matches 10.. run data modify storage math:data out.sec set string storage math:data out.sec

execute store result storage math:data out.min int 1.0 run scoreboard players get Math.temp1 rMath
data modify storage math:data out.min set string storage math:data out.min


