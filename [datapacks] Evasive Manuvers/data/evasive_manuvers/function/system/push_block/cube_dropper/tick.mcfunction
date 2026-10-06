scoreboard players operation #temp rMath = @s EvasiveManuvers.PlayerID
execute as @e[type=slime,tag=EvasiveManuvers.HeavyCube] if score @s EvasiveManuvers.PlayerID = #temp rMath run tag @s add EvasiveManuvers.mySlime


execute unless entity @e[type=slime,tag=EvasiveManuvers.mySlime] at @s positioned ~ ~ ~ unless entity @e[tag=EvasiveManuvers.HeavyCube,distance=..0.5] run function evasive_manuvers:system/push_block/cube_dropper/summon



execute at @s if entity @a[distance=..7] on passengers if entity @s[type=interaction] run function evasive_manuvers:system/push_block/cube_dropper/interaction

execute at @s run setblock ~ ~ ~ air
execute at @s if items entity @a[distance=..7,gamemode=creative] weapon.* *[custom_data~{EvasiveManuversSuppressor:true}] run setblock ~ ~ ~ barrier
execute at @s if items entity @a[distance=..7,gamemode=creative] weapon.* *[custom_data~{EvasiveManuversRenamer:true}] run setblock ~ ~ ~ barrier






tag @e[type=slime,tag=EvasiveManuvers.HeavyCube,tag=EvasiveManuvers.mySlime] remove EvasiveManuvers.mySlime
