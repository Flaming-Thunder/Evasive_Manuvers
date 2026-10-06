

execute if data storage buttons:storage temp.grid[0].Slot store result score #search buttons.slot run data get storage buttons:storage temp.grid[0].Slot
execute if data storage buttons:storage temp.grid[0].slot store result score #search buttons.slot run data get storage buttons:storage temp.grid[0].slot
execute as @e[tag=button.slot,predicate=buttons:search_id,predicate=buttons:search_slot,distance=..0.01,type=#buttons:button] run data modify entity @s item set from storage buttons:storage temp.grid[0]





data remove storage buttons:storage temp.grid[0]
execute if data storage buttons:storage temp.grid[0] run function buttons:system/tick/gui/update/loop



