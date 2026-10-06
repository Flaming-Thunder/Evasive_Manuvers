
execute positioned 0.0 0.0 0.0 run tp 00000001-0000-0002-0000-000300000004 ^ ^ ^1

data modify storage math:data Pos set from entity 00000001-0000-0002-0000-000300000004 Pos

execute store result score #dx rMath run data get storage math:data Pos[0] 1000
execute store result score #dy rMath run data get storage math:data Pos[1] 1000
execute store result score #dz rMath run data get storage math:data Pos[2] 1000


