
data modify entity @e[tag=fptrick.temp,distance=..0.1,limit=1,type=item_display] item set from entity @s equipment.offhand.components."minecraft:custom_data".fptrick_original
data modify storage fptrick:math count set from entity @s equipment.offhand.count
item replace entity @s weapon.offhand from entity @e[tag=fptrick.temp,distance=..0.1,limit=1,type=item_display] container.0
item modify entity @s weapon.offhand fptrick_impulse:copy_count
