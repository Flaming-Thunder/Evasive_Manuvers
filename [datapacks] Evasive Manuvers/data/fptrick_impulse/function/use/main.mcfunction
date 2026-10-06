advancement revoke @s only fptrick_impulse:use



#return fail

execute store result storage fptrick:math macro.id int 1 run scoreboard players get @s fptrickID
function fptrick_impulse:use/get_data with storage fptrick:math macro




execute if predicate fptrick_impulse:usable_mainhand run data modify storage fptrick:math item set from entity @s SelectedItem
execute unless predicate fptrick_impulse:usable_mainhand run data modify storage fptrick:math item set from entity @s equipment.offhand

execute store success score #test fptrick_impulse run data modify storage fptrick:math this.item set from storage fptrick:math item
#execute if data storage fptrick:math this.item.component."minecraft:custom_data".fptrick_consume_temp run scoreboard players set #test fptrick_impulse 0
execute if score #test fptrick_impulse matches 1 run scoreboard players set @s fptrickUseTime 0

function fptrick_impulse:use/set_data with storage fptrick:math macro

scoreboard players add @s fptrickUseTime 1



scoreboard players set @s fptrickUse 2
