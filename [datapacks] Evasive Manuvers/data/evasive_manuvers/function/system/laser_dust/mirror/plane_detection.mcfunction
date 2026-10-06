tag @s add sd.plane

execute as 00000005-0000-0006-0000-000700000008 run function sd:api/plane_coord2



execute unless score SD.dx rMath matches -508..508 run scoreboard players reset SD.dx rMath

execute unless score SD.dy rMath matches -8..2008 run scoreboard players reset SD.dx rMath

execute store result storage math:data macro.x double 0.001 run scoreboard players get SD.dx rMath
execute store result storage math:data macro.y double 0.001 run scoreboard players get SD.dy rMath




scoreboard players operation SD.n0 rMath *= SD.dot0 rMath
scoreboard players operation SD.n1 rMath *= SD.dot0 rMath
scoreboard players operation SD.n2 rMath *= SD.dot0 rMath
scoreboard players operation SD.n0 rMath /= #500 rMath
scoreboard players operation SD.n1 rMath /= #500 rMath
scoreboard players operation SD.n2 rMath /= #500 rMath

scoreboard players operation #temp rMath = SD.u0 rMath
execute store result storage math:data macro.x2 double 0.001 run scoreboard players operation #temp rMath -= SD.n0 rMath

scoreboard players operation #temp rMath = SD.u1 rMath
execute store result storage math:data macro.y2 double 0.001 run scoreboard players operation #temp rMath -= SD.n1 rMath

scoreboard players operation #temp rMath = SD.u2 rMath
execute store result storage math:data macro.z2 double 0.001 run scoreboard players operation #temp rMath -= SD.n2 rMath


execute if score SD.dx rMath matches -2147483648..2147483647 at @s run function evasive_manuvers:system/laser_dust/mirror/macro with storage math:data macro


tag @s remove sd.plane

