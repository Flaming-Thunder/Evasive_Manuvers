execute if entity @s[tag=EvasiveManuvers.On] at @s run setblock ~ ~ ~ air
execute if entity @s[tag=EvasiveManuvers.On] at @s if items entity @a[distance=..7,gamemode=creative] weapon.* *[custom_data~{EvasiveManuversSuppressor:true}] run setblock ~ ~ ~ barrier
execute if entity @s[tag=EvasiveManuvers.On] at @s if items entity @a[distance=..7,gamemode=creative] weapon.* *[custom_data~{EvasiveManuversSwitchBlock:true}] run setblock ~ ~ ~ barrier

