



execute store result score Math.temp1 rMath run data get storage math:data temp[0]

execute if score Math.temp1 rMath > Math.temp0 rMath run scoreboard players operation Math.temp0 rMath = Math.temp1 rMath


data remove storage math:data temp[0]
execute if data storage math:data temp[0] run function math:system/sort/max_loop

