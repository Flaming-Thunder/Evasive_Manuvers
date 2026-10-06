
execute positioned ~ ~-0.5 ~ run function evasive_manuvers:system/push_block/summon

scoreboard players operation @e[type=slime,tag=EvasiveManuvers.new] EvasiveManuvers.PlayerID = @s EvasiveManuvers.PlayerID
scoreboard players operation @e[type=item_display,tag=EvasiveManuvers.new] EvasiveManuvers.PlayerID = @s EvasiveManuvers.PlayerID

data modify entity @e[type=slime,tag=EvasiveManuvers.new,limit=1] data.name set from entity @s data.name

tag @e[type=slime,tag=EvasiveManuvers.new] remove EvasiveManuvers.new
tag @e[type=item_display,tag=EvasiveManuvers.new] remove EvasiveManuvers.new

playsound minecraft:entity.breeze.hurt block @a ~ ~ ~ 0.05 0.75 0

playsound minecraft:entity.evoker.cast_spell block @a ~1 ~ ~ 0.15 1.5 0

particle minecraft:wax_off ~.5 ~ ~.5 0 0.25 0 1.00 2 normal
particle minecraft:wax_off ~-.5 ~ ~.5 0 0.25 0 1.00 2 normal
particle minecraft:wax_off ~.5 ~ ~-.5 0 0.25 0 1.00 2 normal
particle minecraft:wax_off ~-.5 ~ ~-.5 0 0.25 0 1.00 2 normal
particle minecraft:wax_off ~ ~.5 ~.5 0.25 0 0 1.00 2 normal
particle minecraft:wax_off ~ ~.5 ~-.5 0.25 0 0 1.00 2 normal
particle minecraft:wax_off ~-.5 ~-.5 ~ 0 0 0.25 1.00 2 normal
particle minecraft:wax_off ~.5 ~-.5 ~ 0 0 0.25 1.00 2 normal
particle minecraft:wax_off ~-.5 ~.5 ~ 0 0 0.25 1.00 2 normal
particle minecraft:wax_off ~.5 ~.5 ~ 0 0 0.25 1.00 2 normal
particle minecraft:wax_off ~ ~-.5 ~-.5 0.25 0 0 1.00 2 normal
particle minecraft:wax_off ~ ~-.5 ~.5 0.25 0 0 1.00 2 normal
particle minecraft:flash{color:-11447983} ~ ~ ~ 0 0 0 0 1 normal


