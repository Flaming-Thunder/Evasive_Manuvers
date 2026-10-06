

scoreboard players operation @s buttons.id = #search buttons.id

rotate @s ~ ~


execute store result entity @s transformation.scale[0] float 0.0012 run data get storage buttons:storage temp.size 1000
execute store result entity @s transformation.scale[1] float 0.0012 run data get storage buttons:storage temp.size 1000

execute store result entity @s transformation.translation[0] float 0.001 run scoreboard players get #dx buttons.main
execute store result entity @s transformation.translation[1] float 0.001 run scoreboard players get #dy buttons.main

data modify entity @s interpolation_duration set value 1




tag @s remove button.new

