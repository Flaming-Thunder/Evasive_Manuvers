
scoreboard players operation #search buttons.id = @s buttons.id

execute on vehicle run kill @s
execute on passengers on passengers run kill @s
execute on passengers run kill @s

kill @s


execute at @s as @e[predicate=buttons:search_id,tag=button.button,type=#buttons:button,distance=..0.01] run function buttons:remove

