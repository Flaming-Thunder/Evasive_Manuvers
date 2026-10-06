scoreboard players operation Math.temp0 rMath = Math.In0 rMath
scoreboard players operation Math.temp0 rMath *= #expLimit rMath
scoreboard players operation Math.temp0 rMath /= #1000 rMath

execute store result score #div rMath if score Math.temp0 rMath matches ..-1
execute if score #div rMath matches 1 run scoreboard players operation Math.temp0 rMath *= #-1 rMath


scoreboard players set Math.temp1 rMath 0
execute if score Math.temp0 rMath > #expLimit rMath run function math:system/exp/log2

#tellraw @a {score:{name:"Math.temp0",objective:"rMath"}}


scoreboard players operation Math.temp3 rMath = #expLimit rMath

scoreboard players operation Math.temp4 rMath = #expLimit rMath

scoreboard players operation Math.temp4 rMath *= Math.temp0 rMath
scoreboard players operation Math.temp4 rMath /= #expLimit rMath
scoreboard players operation Math.temp3 rMath += Math.temp4 rMath

scoreboard players operation Math.temp4 rMath *= Math.temp0 rMath
scoreboard players operation Math.temp4 rMath /= #expLimit rMath
scoreboard players operation Math.temp4 rMath /= #2 rMath
scoreboard players operation Math.temp3 rMath += Math.temp4 rMath

scoreboard players operation Math.temp4 rMath *= Math.temp0 rMath
scoreboard players operation Math.temp4 rMath /= #expLimit rMath
scoreboard players operation Math.temp4 rMath /= #3 rMath
scoreboard players operation Math.temp3 rMath += Math.temp4 rMath

scoreboard players operation Math.temp4 rMath *= Math.temp0 rMath
scoreboard players operation Math.temp4 rMath /= #expLimit rMath
scoreboard players operation Math.temp4 rMath /= #4 rMath
scoreboard players operation Math.temp3 rMath += Math.temp4 rMath

scoreboard players operation Math.temp4 rMath *= Math.temp0 rMath
scoreboard players operation Math.temp4 rMath /= #expLimit rMath
scoreboard players operation Math.temp4 rMath /= #5 rMath
scoreboard players operation Math.temp3 rMath += Math.temp4 rMath

scoreboard players operation Math.temp4 rMath *= Math.temp0 rMath
scoreboard players operation Math.temp4 rMath /= #expLimit rMath
scoreboard players operation Math.temp4 rMath /= #6 rMath
scoreboard players operation Math.temp3 rMath += Math.temp4 rMath


scoreboard players operation Math.temp3 rMath *= #1000 rMath
scoreboard players operation Math.temp3 rMath /= #expLimit rMath

scoreboard players operation Math.temp2 rMath = Math.temp1 rMath
scoreboard players operation Math.temp5 rMath = Math.temp1 rMath
scoreboard players set Math.temp4 rMath 0 


execute if score Math.temp1 rMath matches 1.. run function math:system/exp/power_loop

scoreboard players operation Math.temp4 rMath /= #1000 rMath
scoreboard players operation Math.temp3 rMath += Math.temp4 rMath


scoreboard players operation Math.temp5 rMath *= #1000 rMath
scoreboard players operation Math.temp5 rMath *= #expCorrector rMath

scoreboard players operation Math.temp2 rMath = Math.In0 rMath
#scoreboard players set Math.temp4 rMath 8059
scoreboard players set Math.temp4 rMath 8859
scoreboard players operation Math.temp4 rMath -= Math.temp2 rMath
scoreboard players operation Math.temp4 rMath *= Math.temp4 rMath
scoreboard players operation Math.temp4 rMath /= #1000 rMath
scoreboard players operation Math.temp5 rMath /= Math.temp4 rMath


execute if score Math.temp5 rMath matches 100.. run scoreboard players operation Math.temp3 rMath += Math.temp5 rMath

#tellraw @a {score:{name:"Math.temp5",objective:"rMath"}}



execute if score #div rMath matches 1 run function math:system/exp/inverse

return run scoreboard players get Math.temp3 rMath


