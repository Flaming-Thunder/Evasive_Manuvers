execute store result storage evasive_manuvers:data temp.magnitude double 0.003921568627451 run scoreboard players get #temp rMath
execute store result storage evasive_manuvers:data temp.frequency double 0.003921568627451 run scoreboard players get #temp1 rMath

data modify storage evasive_manuvers:data temp.magnitude set string storage evasive_manuvers:data temp.magnitude 0 -1
data modify storage evasive_manuvers:data temp.frequency set string storage evasive_manuvers:data temp.frequency 0 -1

function evasive_manuvers:system/player/shaders/shake/particle with storage evasive_manuvers:data temp
