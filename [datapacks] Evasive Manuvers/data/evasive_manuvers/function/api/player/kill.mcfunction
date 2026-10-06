#execute if entity @s[tag=EvasiveManuvers.LaserUser] run tellraw RAC00NJOHN "true"


ride @s dismount


scoreboard players set @s EvasiveManuvers.CheckPointGameMode 0
execute if entity @s[gamemode=adventure] run scoreboard players set @s EvasiveManuvers.CheckPointGameMode 1
execute if entity @s[gamemode=survival] run scoreboard players set @s EvasiveManuvers.CheckPointGameMode 1
execute if entity @s[gamemode=creative] run scoreboard players set @s EvasiveManuvers.CheckPointGameMode 2


scoreboard players operation #search EvasiveManuvers.ElementID = @s EvasiveManuvers.CheckPointID
scoreboard players operation #search EvasiveManuvers.PlayerID = @s EvasiveManuvers.PlayerID

execute if entity @e[tag=EvasiveManuvers.Checkpoint,predicate=evasive_manuvers:search/element_id,type=item_display] if score @s EvasiveManuvers.CheckPointGameMode matches 1.. run function evasive_manuvers:system/player/checkpoint/dead


scoreboard players set @s EvasiveManuvers.HurtTime -100
function evasive_manuvers:system/player/health/damage_remove_display

tag @e[type=item_display,tag=EvasiveManuvers.Checkpoint] remove EvasiveManuvers.MyCheckpoint

