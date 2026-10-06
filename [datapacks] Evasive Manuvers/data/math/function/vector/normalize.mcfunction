data modify storage math:data out set value [0,0,0]

execute store result score #x rMath run data get storage math:data in[0] 1000
execute store result score #y rMath run data get storage math:data in[1] 1000
execute store result score #z rMath run data get storage math:data in[2] 1000

scoreboard players operation Math.In0 rMath = #x rMath
scoreboard players operation Math.In0 rMath *= #x rMath

scoreboard players operation Math.temp1 rMath = #y rMath
scoreboard players operation Math.temp1 rMath *= #y rMath
scoreboard players operation Math.In0 rMath += Math.temp1 rMath

scoreboard players operation Math.temp1 rMath = #z rMath
scoreboard players operation Math.temp1 rMath *= #z rMath
scoreboard players operation Math.In0 rMath += Math.temp1 rMath

execute store result score Math.temp1 rMath run function math:function/sqrt

execute store result score #x rMath run data get storage math:data in[0] 1000000
execute store result score #y rMath run data get storage math:data in[1] 1000000
execute store result score #z rMath run data get storage math:data in[2] 1000000

scoreboard players operation #x rMath /= Math.temp1 rMath
scoreboard players operation #y rMath /= Math.temp1 rMath
scoreboard players operation #z rMath /= Math.temp1 rMath

execute store result storage math:data out[0] double 0.001 run scoreboard players get #x rMath
execute store result storage math:data out[1] double 0.001 run scoreboard players get #y rMath
execute store result storage math:data out[2] double 0.001 run scoreboard players get #z rMath

