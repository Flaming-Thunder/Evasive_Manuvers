
$scoreboard players set #temp rMath $(enable)

execute if score #temp rMath matches ..0 run return run tag @s remove EvasiveManuvers.CanJumpConversion
execute if score #temp rMath matches 1.. run return run tag @s add EvasiveManuvers.CanJumpConversion


