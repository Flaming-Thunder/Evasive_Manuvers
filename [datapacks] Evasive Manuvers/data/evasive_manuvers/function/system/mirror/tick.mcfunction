

function evasive_manuvers:system/element/tick


execute if entity @s[tag=EvasiveManuvers.Interactable] if score @s EvasiveManuvers.PosX matches 0 on passengers if entity @s[type=interaction] run function evasive_manuvers:system/mirror/interaction2
execute if entity @s[tag=EvasiveManuvers.Interactable] if score @s EvasiveManuvers.PosX matches 1.. run scoreboard players remove @s EvasiveManuvers.PosX 1
execute if entity @s[tag=EvasiveManuvers.Interactable] if score @s EvasiveManuvers.PosX matches 1 on passengers run data modify entity @s response set value 1b


execute if entity @s[tag=!EvasiveManuvers.Interactable] on passengers if entity @s[type=interaction] run function evasive_manuvers:system/mirror/interaction



