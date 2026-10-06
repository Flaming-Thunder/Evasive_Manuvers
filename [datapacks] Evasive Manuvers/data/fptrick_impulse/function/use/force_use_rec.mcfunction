
data modify storage fptrick:math macro.y set from storage fptrick:math this.item.components."minecraft:custom_data"

execute if data storage fptrick:math this.item.components."minecraft:custom_data".fptrick_consume_temp run return fail



execute unless data storage fptrick:math this.item.components."minecraft:custom_data" run data modify storage fptrick:math macro.y set value {}
data modify storage fptrick:math macro.y.fptrick_original set from storage fptrick:math this.item
data modify storage fptrick:math macro.y.fptrick_consume_temp set value true
