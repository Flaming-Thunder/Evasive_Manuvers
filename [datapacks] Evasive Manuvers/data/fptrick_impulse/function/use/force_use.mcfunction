tag @s add fptrick.force_use

data remove storage fptrick:math macro.x
data modify storage fptrick:math macro.x set from storage fptrick:math this.item.components."minecraft:consumable"
execute unless data storage fptrick:math this.item.components."minecraft:consumable" run function fptrick_impulse:use/get_consumable



function fptrick_impulse:use/force_use_rec


scoreboard players operation #time fptrick_impulse -= @s fptrickUseTime
execute if score #time fptrick_impulse matches ..-1 run scoreboard players set #time fptrick_impulse 0
execute store result storage fptrick:math macro.x."consume_seconds" float 0.05 run scoreboard players get #time fptrick_impulse

function fptrick_impulse:use/force_use_macro with storage fptrick:math macro


tag @s add fptrick.force_use