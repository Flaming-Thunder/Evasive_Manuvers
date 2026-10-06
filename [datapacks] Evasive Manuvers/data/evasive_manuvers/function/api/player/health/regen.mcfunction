
$data modify storage evasive_manuvers:data temp.amount set value $(amount)
execute store result score #temp rMath run data get storage evasive_manuvers:data temp.amount

execute if entity @s[gamemode=!creative,gamemode=!spectator] run function evasive_manuvers:system/player/health/regen

