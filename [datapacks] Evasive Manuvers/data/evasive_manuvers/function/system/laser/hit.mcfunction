
execute as @a[tag=EvasiveManuvers.laserVictim,gamemode=!creative,gamemode=!spectator] run function evasive_manuvers:api/player/kill
tag @e remove EvasiveManuvers.laserVictim

