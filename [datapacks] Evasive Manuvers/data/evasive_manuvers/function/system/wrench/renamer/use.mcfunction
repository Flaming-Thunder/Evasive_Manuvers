tag @s add EvasiveManuvers.MyOwner


execute if items entity @s weapon.offhand *[custom_data~{EvasiveManuversRenamer:true}] run data modify storage evasive_manuvers:data temp.name set from entity @s equipment.offhand.components."minecraft:custom_name"
execute if items entity @s weapon.mainhand *[custom_data~{EvasiveManuversRenamer:true}] run data modify storage evasive_manuvers:data temp.name set from entity @s SelectedItem.components."minecraft:custom_name"


scoreboard players set #count rMath 100

execute at @s anchored eyes positioned ^ ^ ^0.1 run function evasive_manuvers:system/wrench/renamer/raycast



advancement revoke @s only evasive_manuvers:renamer



tag @s remove EvasiveManuvers.MyOwner
