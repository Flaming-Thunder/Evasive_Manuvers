
$data modify storage evasive_manuvers:data temp.amount set value $(amount)
execute store result score #temp rMath run data get storage evasive_manuvers:data temp.amount

scoreboard players operation @s EvasiveManuvers.PlayerMaxHealth += #temp rMath



