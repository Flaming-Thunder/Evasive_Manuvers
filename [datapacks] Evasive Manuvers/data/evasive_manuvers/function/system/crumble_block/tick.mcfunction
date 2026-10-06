

execute if score @s EvasiveManuvers.PosX matches 0.. run scoreboard players remove @s EvasiveManuvers.PosX 1

execute if score @s EvasiveManuvers.PosX matches 0 run function evasive_manuvers:system/crumble_block/crumble

execute if score @s EvasiveManuvers.PosY matches -1 if score @s EvasiveManuvers.PosX matches 3.. at @s positioned ~-0.5 ~0.4 ~-0.5 unless entity @a[dx=0] run scoreboard players set @s EvasiveManuvers.PosX 3

execute if score @s EvasiveManuvers.PosY matches -1 if score @s EvasiveManuvers.PosX matches -1 at @s positioned ~-0.5 ~0.2 ~-0.5 if entity @a[dx=0] run function evasive_manuvers:system/crumble_block/start_crumble


scoreboard players operation #temp rMath = @s EvasiveManuvers.PosX
scoreboard players operation #temp rMath %= #2 rMath

execute if score #temp rMath matches 0 store result entity @s transformation.translation[0] float 0.01 run random value -60..-40
execute if score #temp rMath matches 0 store result entity @s transformation.translation[1] float 0.01 run random value -10..10
execute if score #temp rMath matches 0 store result entity @s transformation.translation[2] float 0.01 run random value -60..-40





execute if score @s EvasiveManuvers.PosY matches 0.. run scoreboard players remove @s EvasiveManuvers.PosY 1
execute if score @s EvasiveManuvers.PosY matches 0.. at @s run setblock ~ ~ ~ air
execute if score @s EvasiveManuvers.PosY matches 0.. at @s if items entity @a[distance=..7] weapon.mainhand *[custom_data~{EvasiveManuversSuppressor:true}] run setblock ~ ~ ~ barrier

execute if score @s EvasiveManuvers.PosY matches 0 run data modify entity @s block_state.Name set value "deepslate_bricks"
execute if score @s EvasiveManuvers.PosY matches 0 run data modify entity @s transformation.translation set value [-.5,0,-.5]

execute if score @s EvasiveManuvers.PosY matches -1 at @s run setblock ~ ~ ~ barrier











