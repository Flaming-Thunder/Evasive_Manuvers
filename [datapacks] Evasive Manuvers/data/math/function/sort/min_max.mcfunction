 
data modify storage math:data temp set from storage math:data in
scoreboard players set Math.temp0 rMath 2147483647
scoreboard players set Math.temp1 rMath -2147483648

function math:system/sort/min_max_loop

scoreboard players operation Math.Out0 rMath = Math.temp0 rMath
scoreboard players operation Math.Out1 rMath = Math.temp1 rMath


