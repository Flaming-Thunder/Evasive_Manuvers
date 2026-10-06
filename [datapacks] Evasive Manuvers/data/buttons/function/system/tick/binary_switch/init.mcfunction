
data modify storage buttons:storage temp set from entity @s data


function buttons:system/tick/binary_switch/get_score with storage buttons:storage temp.score


execute if score #temp buttons.main matches 0 store result entity @s transformation.translation[0] float -0.0045 run data get storage buttons:storage temp.width 100
execute if score #temp buttons.main matches 1 store result entity @s transformation.translation[0] float 0.0005 run data get storage buttons:storage temp.width 100
execute on passengers if entity @s[tag=button.icon] if score #temp buttons.main matches 0 store result entity @s transformation.translation[0] float -0.005 run data get storage buttons:storage temp.width 100
execute on passengers if entity @s[tag=button.icon] if score #temp buttons.main matches 1 store result entity @s transformation.translation[0] float 0.005 run data get storage buttons:storage temp.width 100




execute store result score @s buttons.width run data get entity @s data.width 1000
execute store result score @s buttons.height run data get entity @s data.height 1000
