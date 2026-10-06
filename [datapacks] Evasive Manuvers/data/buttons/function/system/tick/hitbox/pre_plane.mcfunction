tag @s add button.user


scoreboard players set #min buttons.main 1000000000



execute as @e[distance=..10,type=interaction,tag=button.button] if function buttons:system/tick/hitbox/vehicle_is_plane run function buttons:system/tick/hitbox/check

scoreboard players operation #dot buttons.main = dot.min buttons.main
scoreboard players operation #dx buttons.main = dx.min buttons.main
scoreboard players operation #dy buttons.main = dy.min buttons.main

#tellraw @a {score:{"name":"#dx",objective:"buttons.main"}}
#tellraw @a {score:{"name":"#dy",objective:"buttons.main"}}

execute as @e[distance=..10,tag=button.min,type=#buttons:button] run function buttons:system/tick/hitbox/execute


scoreboard players reset #dot buttons.main
scoreboard players reset #dx buttons.main
scoreboard players reset #dy buttons.main

tag @s remove button.user


