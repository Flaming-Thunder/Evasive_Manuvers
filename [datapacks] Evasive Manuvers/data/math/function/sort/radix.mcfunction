
data modify storage math:data temp set from storage math:data in
scoreboard players operation Math.temp0 rMath = Math.In0 rMath
scoreboard players set Math.temp1 rMath 1

function math:system/sort/radix_loop0


data modify storage math:data out set from storage math:data temp


