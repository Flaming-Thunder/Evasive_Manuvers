execute at @s run function evasive_manuvers:system/falling_pit/setblock
execute on passengers run kill @s[type=text_display]
rotate @s 0 90
data modify entity @s width set value 0.5
data modify entity @s height set value 0.5

