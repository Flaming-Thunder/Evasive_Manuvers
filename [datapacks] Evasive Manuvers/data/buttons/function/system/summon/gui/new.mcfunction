

function buttons:system/summon/get_id

scoreboard players operation #search buttons.id = #count buttons.id


data modify entity @s Tags set from storage buttons:storage temp.Tags

data modify entity @s data.UUID set from storage buttons:storage temp.UUID
data modify entity @s data.size set from storage buttons:storage temp.size
data modify entity @s data.dim set from storage buttons:storage temp.dim
data modify entity @s data.text set from storage buttons:storage temp.text_box.text


execute on passengers if entity @s[type=text_display,tag=button.text] run data modify entity @s text set from storage buttons:storage temp.text_box.text
execute on passengers if entity @s[type=text_display,tag=button.text] run data modify entity @s transformation.translation[0] set from storage buttons:storage temp.text_box.dx

execute store result score #temp0 buttons.main run data get storage buttons:storage temp.size 100
execute store result score #temp1 buttons.main run data get storage buttons:storage temp.text_box.size 200
scoreboard players operation #temp0 buttons.main *= #temp1 buttons.main
execute on passengers if entity @s[type=text_display,tag=button.text] store result entity @s transformation.scale[0] float 0.0001 run scoreboard players get #temp0 buttons.main
execute on passengers if entity @s[type=text_display,tag=button.text] store result entity @s transformation.scale[1] float 0.0001 run scoreboard players get #temp0 buttons.main


execute store result score #temp0 buttons.main run data get storage buttons:storage temp.dim[0]
execute store result score #temp1 buttons.main run data get storage buttons:storage temp.size 1000
scoreboard players operation #temp0 buttons.main *= #temp1 buttons.main
execute on passengers store result entity @s width float 0.001 run scoreboard players get #temp0 buttons.main
scoreboard players operation @s buttons.width = #temp0 buttons.main
scoreboard players operation #temp0 buttons.main /= #10 buttons.main
scoreboard players operation #temp6 buttons.main = #temp0 buttons.main
scoreboard players operation #temp6 buttons.main %= #2 buttons.main
scoreboard players operation #temp0 buttons.main /= #2 buttons.main

execute store result score #temp1 buttons.main run data get storage buttons:storage temp.dim[1]
execute store result score #temp2 buttons.main run data get storage buttons:storage temp.size 1000
scoreboard players operation #temp1 buttons.main *= #temp2 buttons.main
execute on passengers store result entity @s height float 0.001 run scoreboard players get #temp1 buttons.main
scoreboard players operation @s buttons.height = #temp1 buttons.main
scoreboard players operation #temp1 buttons.main /= #10 buttons.main

scoreboard players operation #temp3 buttons.main = #temp1 buttons.main
scoreboard players operation #temp3 buttons.main += #temp1 buttons.main
scoreboard players operation #temp3 buttons.main += #temp2 buttons.main
scoreboard players operation #temp3 buttons.main /= #2 buttons.main
execute on passengers if entity @s[type=text_display,tag=button.text] store result score #temp4 buttons.main run data get entity @s transformation.scale[0] 18
scoreboard players operation #temp3 buttons.main -= #temp4 buttons.main
execute on passengers if entity @s[type=text_display,tag=button.text] store result entity @s transformation.translation[1] float 0.01 run scoreboard players get #temp3 buttons.main


scoreboard players operation #temp2 buttons.main = #temp1 buttons.main
scoreboard players operation #temp2 buttons.main /= #2 buttons.main

execute store result score #temp3 buttons.main run data get entity @s Pos[1] 100
scoreboard players operation #temp3 buttons.main -= #temp1 buttons.main
scoreboard players operation #temp3 buttons.main += #temp2 buttons.main
execute store result entity @s Pos[1] double 0.01 run scoreboard players get #temp3 buttons.main

scoreboard players operation #temp2 buttons.main = #temp1 buttons.main

scoreboard players set #temp3 buttons.main 0
scoreboard players operation #temp3 buttons.main -= #temp1 buttons.main
scoreboard players operation #temp3 buttons.main += #temp2 buttons.main


execute store result score #temp4 buttons.main run data get storage buttons:storage temp.size 100
execute store result score #temp5 buttons.main run data get storage buttons:storage temp.size 50




scoreboard players set #border-x buttons.main 0
scoreboard players operation #border-x buttons.main -= #temp0 buttons.main

scoreboard players operation #border+x buttons.main = #temp0 buttons.main
scoreboard players operation #border+x buttons.main -= #temp4 buttons.main
scoreboard players operation #border+x buttons.main += #temp6 buttons.main

scoreboard players set #bordery buttons.main 0
scoreboard players operation #bordery buttons.main -= #temp5 buttons.main


scoreboard players set fct.count2 buttons.main 0
scoreboard players operation fct.count0 buttons.main = #temp2 buttons.main
function buttons:system/summon/gui/loopy



execute at @s run tp @e[tag=button.button,predicate=buttons:search_id,predicate=!buttons:have_vehicle,type=#buttons:button,distance=..1] ~ ~ ~
#execute as @e[tag=button.button,tag=button.new] run rotate @s ~180 0
#execute as @e[tag=button.button,tag=button.new] on passengers run rotate @s ~180 0
#execute as @e[tag=button.button,tag=button.new] on passengers on passengers run rotate @s ~180 0

execute as @e[tag=button.button,predicate=buttons:search_id,predicate=!buttons:have_vehicle,type=#buttons:button,distance=..1] run rotate @s ~180 0
execute as @e[tag=button.button,predicate=buttons:search_id,predicate=!buttons:have_vehicle,type=#buttons:button,distance=..1] on passengers run rotate @s ~180 0


tag @s remove button.new
