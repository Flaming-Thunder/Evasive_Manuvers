data modify storage math:data out set value [0,0,0]

scoreboard players operation #y rMath = Math.In0 rMath
scoreboard players operation #dy rMath = Math.In01 rMath


execute store result score #x rMath run function math:trigo/fast_cos
scoreboard players operation Math.In0 rMath = #dy rMath
execute store result score #dx rMath run function math:trigo/fast_cos
scoreboard players operation #x rMath *= #dx rMath
execute store result storage math:data out[2] double 0.000001 run scoreboard players get #x rMath

scoreboard players operation Math.In0 rMath = #y rMath
execute store result score #x rMath run function math:trigo/fast_sin
scoreboard players operation #x rMath *= #dx rMath
execute store result storage math:data out[0] double 0.000001 run scoreboard players get #x rMath

scoreboard players operation Math.In0 rMath = #dy rMath
execute store result score #x rMath run function math:trigo/fast_sin
execute store result storage math:data out[1] double 0.001 run scoreboard players get #x rMath


scoreboard players operation Math.In0 rMath = #y rMath


