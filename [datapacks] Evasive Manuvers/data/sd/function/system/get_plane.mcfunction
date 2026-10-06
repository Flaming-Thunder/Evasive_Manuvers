
data modify storage math:data Pos set from entity @e[tag=sd.plane,limit=1] Pos


execute store result score SD.o0 rMath run data get storage math:data Pos[0] 1000
execute store result score SD.o1 rMath run data get storage math:data Pos[1] 1000
execute store result score SD.o2 rMath run data get storage math:data Pos[2] 1000

data modify storage math:data billboard set from entity @s billboard

execute as @e[tag=sd.plane,limit=1] unless data storage math:data billboard rotated as @s positioned .0 .0 .0 positioned ^ ^ ^1 run return run function sd:system/unit_normal
execute as @e[tag=sd.plane,limit=1] if data storage math:data {billboard:"fixed"} rotated as @s positioned .0 .0 .0 positioned ^ ^ ^1 run return run function sd:system/unit_normal

execute at @s rotated ~180 0 as @e[tag=sd.plane,limit=1] if data storage math:data {billboard:"vertical"} positioned .0 .0 .0 positioned ^ ^ ^1 run return run function sd:system/unit_normal
execute at @s rotated ~ ~ as @e[tag=sd.plane,limit=1] if data storage math:data {billboard:"center"} positioned .0 .0 .0 positioned ^ ^ ^-1 run return run function sd:system/unit_normal

#horizontal
execute store result entity @e[tag=sd.plane,limit=1] Rotation[1] float -0.001 run data get entity @s Rotation[1] 1000
execute as @e[tag=sd.plane,limit=1] rotated as @s positioned .0 .0 .0 positioned ^ ^ ^1 run return run function sd:system/unit_normal
