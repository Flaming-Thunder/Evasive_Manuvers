tag @s add EvasiveManuvers.Origin


execute on target unless items entity @s weapon.* *[custom_data~{EvasiveManuversSuppressor:true}] unless items entity @s weapon.* *[custom_data~{EvasiveManuversRenamer:true}] unless items entity @s weapon.* *[custom_data~{EvasiveManuversWrench:true}] run ride @s mount @e[type=interaction,limit=1,tag=EvasiveManuvers.Origin]


execute on passengers run function evasive_manuvers:system/laser/user




scoreboard players set #break rMath 1
execute on target if items entity @s weapon.* *[custom_data~{EvasiveManuversSuppressor:true}] run scoreboard players set #break rMath 0
execute if score #break rMath matches 0 on vehicle run function evasive_manuvers:api/element/remove

execute on target if items entity @s weapon.* *[custom_data~{EvasiveManuversRenamer:true}] at @s run function evasive_manuvers:system/wrench/renamer/use
execute on target if items entity @s weapon.* *[custom_data~{EvasiveManuversWrench:true}] at @s run function evasive_manuvers:system/wrench/use


execute if data entity @s interaction run data remove entity @s interaction






tag @s remove EvasiveManuvers.Origin


