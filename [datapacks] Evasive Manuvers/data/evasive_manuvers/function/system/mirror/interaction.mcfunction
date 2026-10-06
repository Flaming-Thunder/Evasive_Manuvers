




execute if data entity @s interaction run scoreboard players set #break rMath 0
execute if data entity @s interaction on target if items entity @s weapon.mainhand *[custom_data~{EvasiveManuversSuppressor:true}] run scoreboard players set #break rMath 1
execute if data entity @s interaction if score #break rMath matches 1 on vehicle run function evasive_manuvers:api/element/remove


execute on target if items entity @s weapon.* *[custom_data~{EvasiveManuversRenamer:true}] at @s run function evasive_manuvers:system/wrench/renamer/use
execute on target if items entity @s weapon.* *[custom_data~{EvasiveManuversWrench:true}] at @s run function evasive_manuvers:system/wrench/use



execute if data entity @s interaction run data remove entity @s interaction
execute if data entity @s attack run data remove entity @s attack



