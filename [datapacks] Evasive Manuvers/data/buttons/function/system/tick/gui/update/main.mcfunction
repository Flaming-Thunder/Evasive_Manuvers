
data modify entity @s data.grid set from storage buttons:storage temp.grid




execute as @e[tag=!button.gui_background,predicate=buttons:search_id,distance=..0.01,type=#buttons:button] run data remove entity @s item
execute as @e[tag=button.gui_background,predicate=buttons:search_id,distance=..0.01,type=#buttons:button] run data modify entity @s item.components."minecraft:custom_model_data".colors[0] set from storage buttons:storage temp.color


execute if data storage buttons:storage temp.grid[0] run function buttons:system/tick/gui/update/loop


setblock 0 0 0 oak_sign

execute as @e[tag=!button.gui_background,predicate=buttons:search_id,distance=..0.01,type=#buttons:button] run function buttons:system/tick/gui/update/count

setblock 0 0 0 air

