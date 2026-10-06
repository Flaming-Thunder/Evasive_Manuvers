data modify storage math:data out set value [0,0,0]

execute store result score #x rMath run data get storage math:data in[0][0] 1000
execute store result score #y rMath run data get storage math:data in[0][1] 1000
execute store result score #z rMath run data get storage math:data in[0][2] 1000

execute store result score #dx rMath run data get storage math:data in[1][0] 1000
execute store result score #dy rMath run data get storage math:data in[1][1] 1000
execute store result score #dz rMath run data get storage math:data in[1][2] 1000

scoreboard players operation #x rMath -= #dx rMath
scoreboard players operation #y rMath -= #dy rMath
scoreboard players operation #z rMath -= #dz rMath

execute store result storage math:data out[0] double 0.001 run scoreboard players get #x rMath
execute store result storage math:data out[1] double 0.001 run scoreboard players get #y rMath
execute store result storage math:data out[2] double 0.001 run scoreboard players get #z rMath

