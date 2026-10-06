data remove storage math:data out

execute store result score #x rMath run data get storage math:data in[0][0] 1000
execute store result score #y rMath run data get storage math:data in[0][1] 1000
execute store result score #z rMath run data get storage math:data in[0][2] 1000

execute store result score #dx rMath run data get storage math:data in[1][0] 1000
execute store result score #dy rMath run data get storage math:data in[1][1] 1000
execute store result score #dz rMath run data get storage math:data in[1][2] 1000


scoreboard players operation #x rMath *= #dx rMath
scoreboard players operation #y rMath *= #dy rMath
scoreboard players operation #z rMath *= #dz rMath

scoreboard players operation #x rMath += #y rMath
scoreboard players operation #x rMath += #z rMath
scoreboard players operation #x rMath /= #1000 rMath

return run scoreboard players get #x rMath
