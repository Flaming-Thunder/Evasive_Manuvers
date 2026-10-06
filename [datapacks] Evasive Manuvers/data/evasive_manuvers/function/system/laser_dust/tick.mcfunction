
function evasive_manuvers:system/element/tick

execute at @s positioned ~-0.5 ~-0.5 ~-0.5 run tag @a[dx=0] add EvasiveManuvers.LaserUser
execute if entity @s[tag=EvasiveManuvers.Interactable] on passengers if entity @s[type=interaction] on passengers if entity @s[type=player] run tag @s add EvasiveManuvers.LaserUser

scoreboard players set #breakMirror rMath 0
scoreboard players set #count rMath 0
scoreboard players set #victim rMath 0



execute if score #sound rMath matches 0 run playsound minecraft:block.beacon.ambient ambient @a ~ ~ ~ 0.05 2 0

scoreboard players operation #color rMath = @s EvasiveManuvers.PosZ

execute positioned ~ ~0.5 ~ run tp 00000005-0000-0006-0000-000700000008 ~ ~ ~ ~ ~
execute store result score #x rMath run data get entity 00000005-0000-0006-0000-000700000008 Rotation[0] 100
scoreboard players add #x rMath 18000
scoreboard players operation #x rMath %= #36000 rMath
execute store result entity 00000005-0000-0006-0000-000700000008 Rotation[0] float 0.01 run scoreboard players remove #x rMath 18000
execute positioned ~ ~0.5 ~ run function evasive_manuvers:system/laser_dust/raycast


execute if score #victim rMath matches 1 run function evasive_manuvers:system/laser/hit

kill @e[type=interaction,tag=EvasiveManuvers.LaserReflected]

execute if entity @s[tag=EvasiveManuvers.Interactable] on passengers if entity @s[type=interaction] run function evasive_manuvers:system/laser/interaction


tag @a remove EvasiveManuvers.LaserUser

