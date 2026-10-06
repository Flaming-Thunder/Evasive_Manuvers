
attribute @s gravity modifier remove em:climb
effect clear @s slow_falling

scoreboard players set #Motion EvasiveManuvers.PosY 0

function evasive_manuvers:system/player/move/_/air_jump


scoreboard players set #customJump rMath 1
