
data modify storage math:data out set value [0,0,0]

execute store result score #x rMath run data get storage math:data in[0][0] 1000
execute store result score #y rMath run data get storage math:data in[0][1] 1000
execute store result score #z rMath run data get storage math:data in[0][2] 1000

execute store result score #dx rMath run data get storage math:data in[1][0] 1000
execute store result score #dy rMath run data get storage math:data in[1][1] 1000
execute store result score #dz rMath run data get storage math:data in[1][2] 1000

scoreboard players operation #a rMath = #y rMath
scoreboard players operation #a rMath *= #dz rMath
scoreboard players operation Math.temp0 rMath = #z rMath
scoreboard players operation Math.temp0 rMath *= #dy rMath
scoreboard players operation #a rMath -= Math.temp0 rMath

scoreboard players operation #b rMath = #z rMath
scoreboard players operation #b rMath *= #dx rMath
scoreboard players operation Math.temp0 rMath = #x rMath
scoreboard players operation Math.temp0 rMath *= #dz rMath
scoreboard players operation #b rMath -= Math.temp0 rMath

scoreboard players operation #c rMath = #x rMath
scoreboard players operation #c rMath *= #dy rMath
scoreboard players operation Math.temp0 rMath = #y rMath
scoreboard players operation Math.temp0 rMath *= #dx rMath
scoreboard players operation #c rMath -= Math.temp0 rMath

execute store result storage math:data out[0] double 0.000001 run scoreboard players get #a rMath
execute store result storage math:data out[1] double 0.000001 run scoreboard players get #b rMath
execute store result storage math:data out[2] double 0.000001 run scoreboard players get #c rMath




