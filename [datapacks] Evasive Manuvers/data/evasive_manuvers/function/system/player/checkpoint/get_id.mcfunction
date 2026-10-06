
function evasive_manuvers:system/element/get_id

tag @s add EvasiveManuvers.inited

scoreboard players set @s EvasiveManuvers.PosY 100
execute store result score @s EvasiveManuvers.PosZ run data get entity @s Pos[1]

