execute if entity @s[tag=EvasiveManuvers.Off] at @s run setblock ~ ~ ~ nether_bricks

execute if entity @s[tag=EvasiveManuvers.On] at @s run setblock ~ ~ ~ air


execute if entity @s[tag=EvasiveManuvers.On] at @s if entity @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{EvasiveManuversSuppressor:true}}}},distance=..7] run setblock ~ ~ ~ barrier

execute if entity @s[tag=EvasiveManuvers.On] at @s if entity @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{EvasiveManuversSwitchBlock:true}}}},distance=..7] run setblock ~ ~ ~ barrier


