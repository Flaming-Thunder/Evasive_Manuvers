

data modify storage buttons:storage temp2 set from entity @s item
data modify entity @s brightness set value {block:5,sky:5}
execute on passengers run data modify entity @s brightness set value {block:5,sky:5}

execute if data entity @s item.id as @e[tag=button.description,predicate=buttons:search_id,distance=..0.01,type=#buttons:button] run return run function buttons:system/tick/gui/description/modify_final
kill @e[tag=button.description,predicate=buttons:search_id,distance=..0.01,type=#buttons:button]







