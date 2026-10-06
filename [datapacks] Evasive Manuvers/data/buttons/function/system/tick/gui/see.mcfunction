execute if function buttons:system/tick/gui/coord_to_slot run return fail


execute store success score #temp0 buttons.main if entity @e[tag=button.description,predicate=buttons:search_id,distance=..0.01,type=#buttons:button]
execute if score #temp0 buttons.main matches 0 run function buttons:system/tick/gui/description/summon

execute as @e[tag=button.slot,predicate=buttons:search_id,distance=..0.01,type=#buttons:button,nbt=!{brightness:{block:15,sky:15}}] run data modify entity @s brightness set value {block:15,sky:15}
execute as @e[tag=button.count,predicate=buttons:search_id,distance=..0.01,type=#buttons:button,nbt=!{brightness:{block:13,sky:13}}] run data modify entity @s brightness set value {block:13,sky:13}
execute as @e[tag=button.slot,predicate=buttons:search_id,predicate=buttons:search_slot,distance=..0.01,type=#buttons:button] run function buttons:system/tick/gui/description/modify



scoreboard players set #break1 buttons.main 0



