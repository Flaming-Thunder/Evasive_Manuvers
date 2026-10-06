setblock ~ ~ ~ air


$particle item{item:$(item)} ~ ~0.5 ~ 0.2 0.2 0.2 0.5 20 normal

execute on passengers if entity @s[type=item_display] run data merge entity @s {interpolation_duration:0,transformation:{scale:[0,0,0],translation:[0,-0.45,0]}}


scoreboard players operation @s EvasiveManuvers.PosX = Element.RespawnTime EvasiveManuvers.Settings


