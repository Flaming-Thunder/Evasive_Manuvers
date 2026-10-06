advancement revoke @s only fptrick_impulse:consume

execute if items entity @s container.* *[custom_data~{fptrick_consume_temp:true}] run function fptrick_impulse:use/remove_force_use2
execute if items entity @s weapon.* *[custom_data~{fptrick_consume_temp:true}] run function fptrick_impulse:use/remove_force_use2


scoreboard players set @s fptrickUseTime 0

execute if entity @s[gamemode=creative] run return 1

execute if predicate fptrick_impulse:usable_mainhand run return run item modify entity @s weapon.mainhand {type:"set_count","count":-1,add:true}
item modify entity @s weapon.offhand {type:"set_count","count":-1,add:true}

