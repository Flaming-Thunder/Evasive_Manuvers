
data modify storage math:data out set from entity @s Pos

execute store result score Math.Out0 rMath run data get storage math:data out[0] 1000
execute store result score Math.Out1 rMath run data get storage math:data out[1] 1000
execute store result score Math.Out2 rMath run data get storage math:data out[2] 1000


kill @s

