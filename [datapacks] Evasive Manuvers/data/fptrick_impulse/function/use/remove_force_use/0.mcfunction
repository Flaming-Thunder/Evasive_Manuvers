
data modify entity @e[tag=fptrick.temp,distance=..0.1,limit=1,type=item_display] item set from storage fptrick:math this[{Slot:0b}].components."minecraft:custom_data".fptrick_original
data modify storage fptrick:math count set from storage fptrick:math this[{Slot:0b}].count
item replace entity @s container.0 from entity @e[tag=fptrick.temp,distance=..0.1,limit=1,type=item_display] container.0
item modify entity @s container.0 fptrick_impulse:copy_count
