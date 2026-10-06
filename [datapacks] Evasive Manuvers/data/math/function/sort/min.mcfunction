 
data modify storage math:data temp set from storage math:data in
scoreboard players set Math.temp0 rMath 2147483647

function math:system/sort/min_loop

return run scoreboard players get Math.temp0 rMath


