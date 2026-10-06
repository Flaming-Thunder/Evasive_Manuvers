
$execute if predicate fptrick_impulse:usable_mainhand run return run item modify entity @s weapon.mainhand {type:"set_components",components:{"consumable":$(x),"custom_data":$(y)}}
$execute unless predicate fptrick_impulse:usable_mainhand run return run item modify entity @s weapon.offhand {type:"set_components",components:{"consumable":$(x),"custom_data":$(y)}}
