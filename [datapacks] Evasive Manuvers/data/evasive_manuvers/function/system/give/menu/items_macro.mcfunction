
$loot replace entity @s container.0 loot $(loot)

data modify storage math:data macro.Items append value {}
data modify storage math:data macro.Items[-1] set from entity @s item
$data modify storage math:data macro.Items[-1] merge value {slot:$(slot),command:"loot give @a[tag=button.user] loot $(loot)"}

