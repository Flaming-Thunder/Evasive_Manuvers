data modify storage evasive_manuvers:data temp.temp set from storage evasive_manuvers:data temp.name
execute store result score test.name rMath run data modify storage evasive_manuvers:data temp.temp set from entity @s data.name
execute if score test.name rMath matches 0 run return 1

