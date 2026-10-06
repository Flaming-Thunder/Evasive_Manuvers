#tag @s add inited

execute store result score @s buttons.width run data get entity @s data.width 1000
execute store result score @s buttons.height run data get entity @s data.height 1000


data modify storage buttons:storage temp set from entity @s data

function buttons:system/tick/slider/get_score with storage buttons:storage temp.score
function buttons:system/tick/slider/animation
