

setblock ~ ~ ~ air
execute if items entity @a[distance=..7,gamemode=creative] weapon.* *[custom_data~{EvasiveManuversSuppressor:true}] run setblock ~ ~ ~ barrier
execute if items entity @a[distance=..7,gamemode=creative] weapon.* *[custom_data~{EvasiveManuversRenamer:true}] run setblock ~ ~ ~ barrier



execute unless score @s EvasiveManuvers.PosX matches 1.. on passengers if entity @s[type=interaction] run function evasive_manuvers:system/switch_blocks/manual/interaction


execute if score @s EvasiveManuvers.PosX matches 1.. run scoreboard players remove @s EvasiveManuvers.PosX 1
execute if score @s EvasiveManuvers.PosX matches 4 run function evasive_manuvers:system/switch_blocks/manual/switch_end

