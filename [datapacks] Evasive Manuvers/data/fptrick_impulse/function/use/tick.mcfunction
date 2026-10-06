

execute if score @s[tag=!fptrick.force_use] fptrickUse matches 0 if items entity @s container.* *[custom_data~{fptrick_consume_temp:true}] run function fptrick_impulse:use/remove_force_use2
execute if score @s[tag=!fptrick.force_use] fptrickUse matches 0 if items entity @s weapon *[custom_data~{fptrick_consume_temp:true}] run function fptrick_impulse:use/remove_force_use2



scoreboard players set @s[scores={fptrickUse=0,fptrickUseTime=1..}] fptrickUseTime 0

scoreboard players remove @s[scores={fptrickUse=1..}] fptrickUse 1

tag @s remove fptrick.force_use
