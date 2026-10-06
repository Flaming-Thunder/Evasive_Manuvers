
scoreboard players operation @s EvasiveManuvers.PlayerHealth -= #temp rMath

scoreboard players set @s EvasiveManuvers.HurtTime 10

execute at @s run playsound entity.player.hurt player @s ~ ~ ~ 1 0.5 0.5

execute if score @s EvasiveManuvers.PlayerHealth matches ..0 run function evasive_manuvers:api/player/kill


attribute @s knockback_resistance modifier add damage 100 add_value
damage @s 0.0000001
attribute @s knockback_resistance modifier remove damage




