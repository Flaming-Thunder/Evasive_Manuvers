
execute positioned .0 .0 .0 positioned ^ ^ ^1 summon marker run function math:system/trigo/tan

execute if score #dz rMath matches 0 run scoreboard players set #dz rMath 1


scoreboard players operation #dx rMath *= #-1 rMath
scoreboard players operation #dx rMath /= #dz rMath

return run scoreboard players get #dx rMath

