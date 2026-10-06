

execute store result score Math.temp2 rMath run data get storage math:data temp[0]

scoreboard players operation Math.temp2 rMath /= Math.temp1 rMath
scoreboard players operation Math.temp2 rMath %= #10 rMath

execute if score Math.temp2 rMath matches 0 run data modify storage math:data out[0] append from storage math:data temp[0]
execute if score Math.temp2 rMath matches 1 run data modify storage math:data out[1] append from storage math:data temp[0]
execute if score Math.temp2 rMath matches 2 run data modify storage math:data out[2] append from storage math:data temp[0]
execute if score Math.temp2 rMath matches 3 run data modify storage math:data out[3] append from storage math:data temp[0]
execute if score Math.temp2 rMath matches 4 run data modify storage math:data out[4] append from storage math:data temp[0]
execute if score Math.temp2 rMath matches 5 run data modify storage math:data out[5] append from storage math:data temp[0]
execute if score Math.temp2 rMath matches 6 run data modify storage math:data out[6] append from storage math:data temp[0]
execute if score Math.temp2 rMath matches 7 run data modify storage math:data out[7] append from storage math:data temp[0]
execute if score Math.temp2 rMath matches 8 run data modify storage math:data out[8] append from storage math:data temp[0]
execute if score Math.temp2 rMath matches 9 run data modify storage math:data out[9] append from storage math:data temp[0]




data remove storage math:data temp[0]
execute if data storage math:data temp[0] run function math:system/sort/radix_loop1

