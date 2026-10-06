execute store result score #temp rMath run attribute @s block_interaction_range get 1000

execute store result score #temp1 rMath run attribute @s entity_interaction_range get 1000


execute store result storage math:data macro.x float 0.001 run scoreboard players operation #temp rMath -= #temp1 rMath
execute if score #temp rMath matches 1.. run function evasive_manuvers:system/player/looking_at/macro with storage math:data macro
