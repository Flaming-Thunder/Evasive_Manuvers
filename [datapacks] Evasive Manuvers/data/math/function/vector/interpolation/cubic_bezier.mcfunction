#P = (1-t)**3 * P0 + t*P1*(3*(1-t)**2) + P2*(3*(1-t)*t**2) + P3*t**3


scoreboard players set Math.temp0 rMath 1000
scoreboard players operation Math.temp0 rMath -= Math.In0 rMath

scoreboard players operation Math.temp1 rMath = Math.temp0 rMath
scoreboard players operation Math.temp1 rMath *= Math.temp1 rMath
scoreboard players operation Math.temp1 rMath /= #1000 rMath


scoreboard players operation Math.temp2 rMath = Math.temp1 rMath
scoreboard players operation Math.temp2 rMath *= Math.temp0 rMath
scoreboard players operation Math.temp2 rMath /= #1000 rMath
execute store result score #x rMath run data get storage math:data in[0][0] 1000
execute store result score #y rMath run data get storage math:data in[0][1] 1000
execute store result score #z rMath run data get storage math:data in[0][2] 1000
scoreboard players operation #x rMath *= Math.temp2 rMath
scoreboard players operation #y rMath *= Math.temp2 rMath
scoreboard players operation #z rMath *= Math.temp2 rMath

scoreboard players operation Math.temp2 rMath = Math.temp1 rMath
scoreboard players operation Math.temp2 rMath *= #3 rMath
scoreboard players operation Math.temp2 rMath *= Math.In0 rMath
scoreboard players operation Math.temp2 rMath /= #1000 rMath
execute store result score #dx rMath run data get storage math:data in[1][0] 1000
execute store result score #dy rMath run data get storage math:data in[1][1] 1000
execute store result score #dz rMath run data get storage math:data in[1][2] 1000
scoreboard players operation #dx rMath *= Math.temp2 rMath
scoreboard players operation #dy rMath *= Math.temp2 rMath
scoreboard players operation #dz rMath *= Math.temp2 rMath
scoreboard players operation #x rMath += #dx rMath
scoreboard players operation #y rMath += #dy rMath
scoreboard players operation #z rMath += #dz rMath

scoreboard players operation Math.temp2 rMath = Math.temp0 rMath
scoreboard players operation Math.temp2 rMath *= #3 rMath
scoreboard players operation Math.temp2 rMath *= Math.In0 rMath
scoreboard players operation Math.temp2 rMath /= #1000 rMath
scoreboard players operation Math.temp2 rMath *= Math.In0 rMath
scoreboard players operation Math.temp2 rMath /= #1000 rMath
execute store result score #dx rMath run data get storage math:data in[2][0] 1000
execute store result score #dy rMath run data get storage math:data in[2][1] 1000
execute store result score #dz rMath run data get storage math:data in[2][2] 1000
scoreboard players operation #dx rMath *= Math.temp2 rMath
scoreboard players operation #dy rMath *= Math.temp2 rMath
scoreboard players operation #dz rMath *= Math.temp2 rMath
scoreboard players operation #x rMath += #dx rMath
scoreboard players operation #y rMath += #dy rMath
scoreboard players operation #z rMath += #dz rMath

scoreboard players operation Math.temp2 rMath = Math.In0 rMath
scoreboard players operation Math.temp2 rMath *= Math.In0 rMath
scoreboard players operation Math.temp2 rMath /= #1000 rMath
scoreboard players operation Math.temp2 rMath *= Math.In0 rMath
scoreboard players operation Math.temp2 rMath /= #1000 rMath
execute store result score #dx rMath run data get storage math:data in[3][0] 1000
execute store result score #dy rMath run data get storage math:data in[3][1] 1000
execute store result score #dz rMath run data get storage math:data in[3][2] 1000
scoreboard players operation #dx rMath *= Math.temp2 rMath
scoreboard players operation #dy rMath *= Math.temp2 rMath
scoreboard players operation #dz rMath *= Math.temp2 rMath
scoreboard players operation #x rMath += #dx rMath
scoreboard players operation #y rMath += #dy rMath
scoreboard players operation #z rMath += #dz rMath

data modify storage math:data out set value [0,0,0]
execute store result storage math:data out[0] double 0.000001 run scoreboard players get #x rMath
execute store result storage math:data out[1] double 0.000001 run scoreboard players get #y rMath
execute store result storage math:data out[2] double 0.000001 run scoreboard players get #z rMath

