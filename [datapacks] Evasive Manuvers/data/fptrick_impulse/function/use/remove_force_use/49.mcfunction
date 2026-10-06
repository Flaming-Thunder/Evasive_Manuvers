
data modify entity @e[tag=fptrick.temp,distance=..0.1,limit=1,type=item_display] item set from storage fptrick:math this[{Slot:49b}].components."minecraft:custom_data".fptrick_original
data modify storage fptrick:math count set from storage fptrick:math this[{Slot:49b}].count
item replace entity @s container.49 from entity @e[tag=fptrick.temp,distance=..0.1,limit=1,type=item_display] container.0
item modify entity @s container.49 fptrick_impulse:copy_count
