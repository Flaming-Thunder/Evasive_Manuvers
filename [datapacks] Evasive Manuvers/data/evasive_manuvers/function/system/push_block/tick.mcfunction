scoreboard players operation #temp EvasiveManuvers.PlayerID = @s EvasiveManuvers.PlayerID
execute as @e[type=slime,tag=EvasiveManuvers.HeavyCube] if score @s EvasiveManuvers.PlayerID = #temp EvasiveManuvers.PlayerID run tag @s add EvasiveManuvers.mySlime

execute unless entity @e[type=slime,distance=0,tag=EvasiveManuvers.mySlime] run tp @s @e[type=slime,tag=EvasiveManuvers.mySlime,limit=1]
execute at @s unless entity @e[type=slime,distance=..0.01,tag=EvasiveManuvers.mySlime] run function evasive_manuvers:api/element/remove


execute at @s if entity @a[distance=..7] on passengers if entity @s[type=interaction] run function evasive_manuvers:system/push_block/interaction





tag @e[type=slime,tag=EvasiveManuvers.mySlime] remove EvasiveManuvers.mySlime

