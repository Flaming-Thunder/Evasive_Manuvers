scoreboard players operation @s EvasiveManuvers.PosY = Element.RespawnTime EvasiveManuvers.Settings
execute at @s run particle block{block_state:{id:"cracked_deepslate_bricks"}} ~ ~0.5 ~ 0.2 0.2 0.2 4 50 normal
data modify entity @s block_state.Name set value "air"
