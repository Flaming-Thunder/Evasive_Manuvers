



data modify storage math:data out set value [[],[],[],[],[],[],[],[],[],[]]

function math:system/sort/radix_loop1

data modify storage math:data temp append from storage math:data out[0][]
data modify storage math:data temp append from storage math:data out[1][]
data modify storage math:data temp append from storage math:data out[2][]
data modify storage math:data temp append from storage math:data out[3][]
data modify storage math:data temp append from storage math:data out[4][]
data modify storage math:data temp append from storage math:data out[5][]
data modify storage math:data temp append from storage math:data out[6][]
data modify storage math:data temp append from storage math:data out[7][]
data modify storage math:data temp append from storage math:data out[8][]
data modify storage math:data temp append from storage math:data out[9][]


scoreboard players operation Math.temp1 rMath *= #10 rMath
scoreboard players remove Math.temp0 rMath 1

execute if score Math.temp0 rMath matches 1.. run function math:system/sort/radix_loop0