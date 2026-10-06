

execute at @s rotated ~ 0 run function evasive_manuvers:system/math/unit_vector


scoreboard players operation #x fptrick_impulse = #dx rMath
scoreboard players operation #z fptrick_impulse = #dz rMath

scoreboard players operation #x fptrick_impulse *= #2 rMath
scoreboard players operation #z fptrick_impulse *= #2 rMath

scoreboard players set #y fptrick_impulse -100


function fptrick_impulse:launch_global
