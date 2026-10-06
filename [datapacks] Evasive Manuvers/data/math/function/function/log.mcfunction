scoreboard players operation Math.temp0 rMath = Math.In0 rMath
execute store result score Math.temp1 rMath run function math:system/log/get_power

#tellraw @a {score:{name:"Math.temp0",objective:"rMath"}}

scoreboard players remove Math.temp0 rMath 10000
scoreboard players operation Math.temp0 rMath /= #15 rMath
#-580

scoreboard players operation Math.temp9 rMath = Math.temp0 rMath
scoreboard players operation Math.temp9 rMath /= #2 rMath
#-290


scoreboard players set Math.temp2 rMath 10000
scoreboard players set Math.temp3 rMath 0
scoreboard players set Math.temp4 rMath 0

function math:system/log/loop

scoreboard players operation Math.temp3 rMath /= #10 rMath

#tellraw @a {score:{name:"Math.temp1",objective:"rMath"}}
scoreboard players operation Math.temp3 rMath += Math.temp1 rMath

scoreboard players set Math.temp1 rMath 4000
scoreboard players operation Math.temp1 rMath /= Math.In0 rMath
scoreboard players operation Math.temp3 rMath += Math.temp1 rMath

scoreboard players remove Math.temp3 rMath 4

return run scoreboard players get Math.temp3 rMath

