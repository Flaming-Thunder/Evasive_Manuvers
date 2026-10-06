
setblock ~ ~ ~ air

execute if items entity @a[distance=..7,gamemode=creative] weapon.* *[custom_data~{EvasiveManuversSuppressor:true}] run return run setblock ~ ~ ~ barrier
execute if items entity @a[distance=..7,gamemode=creative] weapon.* *[custom_data~{EvasiveManuversPowerUp:true}] run return run setblock ~ ~ ~ barrier