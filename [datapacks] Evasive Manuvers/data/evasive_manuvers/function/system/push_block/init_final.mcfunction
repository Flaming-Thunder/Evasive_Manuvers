function evasive_manuvers:system/push_block/summon


execute as @e[type=slime,tag=EvasiveManuvers.new] run function evasive_manuvers:system/player/get_id

scoreboard players operation @e[tag=EvasiveManuvers.new,type=item_display] EvasiveManuvers.PlayerID = @e[type=slime,tag=EvasiveManuvers.new] EvasiveManuvers.PlayerID


data modify storage math:data Pos set from entity @s Pos
execute store result score @e[type=slime,tag=EvasiveManuvers.new] EvasiveManuvers.PosX run data get storage math:data Pos[0] 1000
execute store result score @e[type=slime,tag=EvasiveManuvers.new] EvasiveManuvers.PosY run data get storage math:data Pos[1] 1000
execute store result score @e[type=slime,tag=EvasiveManuvers.new] EvasiveManuvers.PosZ run data get storage math:data Pos[2] 1000

scoreboard players remove @e[type=slime,tag=EvasiveManuvers.new] EvasiveManuvers.PosY 500


tag @e[tag=EvasiveManuvers.new,type=item_display] remove EvasiveManuvers.new
tag @e[tag=EvasiveManuvers.new,type=slime] remove EvasiveManuvers.new

