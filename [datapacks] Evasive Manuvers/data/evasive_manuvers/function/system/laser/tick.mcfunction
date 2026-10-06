
function evasive_manuvers:system/element/tick

execute at @s positioned ~-0.5 ~-0.5 ~-0.5 run tag @a[dx=0] add EvasiveManuvers.LaserUser
execute if entity @s[tag=EvasiveManuvers.Interactable] on passengers if entity @s[type=interaction] on passengers if entity @s[type=player] run tag @s add EvasiveManuvers.LaserUser


execute if entity @s[tag=EvasiveManuvers.Interactable] on passengers if entity @s[type=interaction] run function evasive_manuvers:system/laser/interaction




scoreboard players set #count rMath 0
scoreboard players set #victim rMath 0



execute if score #sound rMath matches 0 run playsound minecraft:block.beacon.ambient ambient @a ~ ~ ~ 0.05 2 0
execute at @s positioned ~ ~0.5 ~ run function evasive_manuvers:system/laser/raycast


execute unless score @s EvasiveManuvers.PosX = #count rMath at @s on passengers if entity @s[tag=EvasiveManuvers.Beam] run function evasive_manuvers:system/laser/display


execute if score #victim rMath matches 1 run function evasive_manuvers:system/laser/hit


scoreboard players operation @s EvasiveManuvers.PosY = @s EvasiveManuvers.PosX
scoreboard players operation @s EvasiveManuvers.PosX = #count rMath



tag @a remove EvasiveManuvers.LaserUser