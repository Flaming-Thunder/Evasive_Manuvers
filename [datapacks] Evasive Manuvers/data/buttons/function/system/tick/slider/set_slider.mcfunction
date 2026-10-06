
function buttons:system/tick/slider/get_score with storage buttons:storage temp.score



execute store result score #temp1 buttons.main run data get storage buttons:storage temp.width -500
execute store result score #temp2 buttons.main run data get storage buttons:storage temp.width 500
execute store result score #temp3 buttons.main run data get storage buttons:storage temp.score.min
execute store result score #temp4 buttons.main run data get storage buttons:storage temp.score.max
scoreboard players operation #temp4 buttons.main -= #temp3 buttons.main
scoreboard players add #temp4 buttons.main 1

#tellraw @a {score:{name:"#temp1",objective:"buttons.main"}}

scoreboard players operation #dot buttons.main > #temp1 buttons.main
scoreboard players operation #dot buttons.main < #temp2 buttons.main


#scoreboard players add #temp2 buttons.main 5000


execute if entity @s[type=block_display] store result score #temp6 buttons.main run data get entity @s transformation.scale[0] -500
execute if entity @s[type=text_display] store result score #temp6 buttons.main run data get entity @s transformation.scale[0] -62.5

scoreboard players operation #temp6 buttons.main += #temp2 buttons.main
scoreboard players remove #temp6 buttons.main 50

#scoreboard players operation #temp1 buttons.main = #temp6 buttons.main
scoreboard players operation #temp1 buttons.main = #temp2 buttons.main


scoreboard players operation #temp3 buttons.main = @s buttons.width
scoreboard players operation #temp3 buttons.main /= #2 buttons.main
scoreboard players operation #dot buttons.main += #temp3 buttons.main

execute store result score #temp4 buttons.main run data get storage buttons:storage temp.score.inc
execute store result score #temp5 buttons.main run data get storage buttons:storage temp.score.min
execute store result score #temp6 buttons.main run data get storage buttons:storage temp.score.max

scoreboard players operation #temp7 buttons.main = #temp6 buttons.main
scoreboard players operation #temp7 buttons.main -= #temp5 buttons.main
scoreboard players add #temp7 buttons.main 1


scoreboard players operation #dot buttons.main *= #temp7 buttons.main
scoreboard players operation #dot buttons.main /= @s buttons.width
execute store result storage buttons:storage temp.pitch float 0.001 run scoreboard players get #dot buttons.main
scoreboard players operation #dot buttons.main /= #temp4 buttons.main
scoreboard players operation #dot buttons.main *= #temp4 buttons.main
scoreboard players operation #dot buttons.main += #temp5 buttons.main

scoreboard players operation #dot buttons.main > #temp5 buttons.main
scoreboard players operation #dot buttons.main < #temp6 buttons.main

execute if score #temp buttons.main = #dot buttons.main run return fail

function buttons:system/tick/slider/set_score with storage buttons:storage temp.score
scoreboard players operation #temp buttons.main = #dot buttons.main
function buttons:system/tick/slider/sound with storage buttons:storage temp
function buttons:system/tick/slider/animation

