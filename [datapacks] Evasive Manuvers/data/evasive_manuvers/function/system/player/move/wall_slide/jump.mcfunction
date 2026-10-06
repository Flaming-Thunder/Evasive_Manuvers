 

attribute @s jump_strength modifier add temp 0.08 add_multiplied_total

function evasive_manuvers:system/player/move/_/air_jump

attribute @s jump_strength modifier remove temp


execute if block ~-0.5 ~ ~ #evasive_manuvers:slidable run scoreboard players add #x fptrick_impulse 1000
execute if block ~0.5 ~ ~ #evasive_manuvers:slidable run scoreboard players remove #x fptrick_impulse 1000
execute if block ~ ~ ~-0.5 #evasive_manuvers:slidable run scoreboard players add #z fptrick_impulse 1000
execute if block ~ ~ ~0.5 #evasive_manuvers:slidable run scoreboard players remove #z fptrick_impulse 1000


tag @s remove EvasiveManuvers.CanWallSlide
tag @s remove EvasiveManuvers.CanWallSlide.Coyote

scoreboard players set #customJump rMath 1
