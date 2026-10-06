tp 00000001-0000-0002-0000-000300000004 ~ ~ ~

data modify storage math:data Pos set from entity 00000001-0000-0002-0000-000300000004 Pos

execute store result score SD.v0 rMath run data get storage math:data Pos[0] 1000
execute store result score SD.v1 rMath run data get storage math:data Pos[1] 1000
execute store result score SD.v2 rMath run data get storage math:data Pos[2] 1000
