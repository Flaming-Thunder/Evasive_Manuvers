execute unless loaded ~ ~ ~ run return fail

execute if block ~ ~ ~ #evasive_manuvers:laser_interact run function evasive_manuvers:system/laser/check/active

execute unless block ~ ~ ~ #evasive_manuvers:laser_air unless block ~ ~ ~ #evasive_manuvers:laser_transparent run return 1

execute if block ~ ~ ~ #evasive_manuvers:laser_transparent run function evasive_manuvers:system/laser/check/main












