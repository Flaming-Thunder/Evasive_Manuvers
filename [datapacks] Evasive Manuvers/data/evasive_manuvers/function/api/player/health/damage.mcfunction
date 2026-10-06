
$data modify storage evasive_manuvers:data temp.amount set value $(amount)
execute store result score #temp rMath run data get storage evasive_manuvers:data temp.amount

execute if entity @s[gamemode=!creative,gamemode=!spectator] unless score @s EvasiveManuvers.HurtTime matches 1.. run function evasive_manuvers:system/player/health/damage
