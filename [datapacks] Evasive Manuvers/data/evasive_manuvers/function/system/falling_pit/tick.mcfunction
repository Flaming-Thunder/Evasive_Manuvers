

execute at @s if entity @a[distance=..7] if data entity @s interaction run function evasive_manuvers:system/falling_pit/interact
execute at @s if entity @a[distance=..7] if data entity @s attack run function evasive_manuvers:system/falling_pit/interact

execute on passengers if entity @s[type=item_display] run data modify storage math:data macro.item set from entity @s item

execute at @s if entity @a[distance=..7] unless block ~ ~ ~ air if function evasive_manuvers:system/falling_pit/if_player positioned ~ ~0.5 ~ run function evasive_manuvers:system/falling_pit/break with storage math:data macro


execute if score @s EvasiveManuvers.PosX matches 0.. run scoreboard players remove @s EvasiveManuvers.PosX 1
execute if score @s EvasiveManuvers.PosX matches 0 at @s run function evasive_manuvers:system/falling_pit/setblock

