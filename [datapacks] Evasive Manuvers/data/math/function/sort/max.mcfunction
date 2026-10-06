 
data modify storage math:data temp set from storage math:data in
scoreboard players set Math.temp0 rMath -2147483648

function math:system/sort/max_loop

return run scoreboard players get Math.temp0 rMath


