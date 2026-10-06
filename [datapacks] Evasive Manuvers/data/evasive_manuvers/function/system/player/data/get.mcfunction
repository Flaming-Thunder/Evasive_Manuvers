
data remove storage evasive_manuvers:data temp.player
$data modify storage evasive_manuvers:data temp.player set from storage evasive_manuvers:data player[{UUID:$(UUID)}]

execute unless data storage evasive_manuvers:data temp.player run data modify storage evasive_manuvers:data player append value {UUID:[],CheckPoint:{}}
execute unless data storage evasive_manuvers:data temp.player run data modify storage evasive_manuvers:data player[-1].UUID set from entity @s UUID
execute unless data storage evasive_manuvers:data temp.player run data modify storage evasive_manuvers:data temp.player set from storage evasive_manuvers:data player[-1]







