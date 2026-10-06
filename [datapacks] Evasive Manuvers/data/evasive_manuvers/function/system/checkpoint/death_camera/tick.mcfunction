scoreboard players operation #temp rMath = @s EvasiveManuvers.PlayerID
execute as @a if score @s EvasiveManuvers.PlayerID = #temp rMath run tag @s add EvasiveManuvers.MyOwner

spectate @s @a[tag=EvasiveManuvers.MyOwner,limit=1]




execute store result score #temp rMath run data get entity @s data.cldwn
scoreboard players remove #temp rMath 1
execute store result entity @s data.cldwn int 1 run scoreboard players get #temp rMath
execute if score #temp rMath matches ..0 run function evasive_manuvers:system/checkpoint/death_camera/tp


tag @a remove EvasiveManuvers.MyOwner
tag @e[type=item_display] remove EvasiveManuvers.MyCheckpoint

