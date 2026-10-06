
execute store result score #break rMath if entity @s[tag=EvasiveManuvers.NonInteractable]

execute unless entity @s[tag=EvasiveManuvers.activated] on passengers if entity @s[type=interaction] run function evasive_manuvers:system/hitblock/interaction

execute if items entity @a[distance=..7,gamemode=creative] weapon.* *[custom_data~{EvasiveManuversSuppressor:true}] run setblock ~ ~ ~ barrier
execute if items entity @a[distance=..7,gamemode=creative] weapon.* *[custom_data~{EvasiveManuversSnakeBlock:true}] run setblock ~ ~ ~ barrier
