
scoreboard players set #break rMath 0
execute on target if items entity @s weapon.mainhand *[custom_data~{EvasiveManuversSuppressor:true}] run scoreboard players set #break rMath 1
execute if score #break rMath matches 1 as @e[type=slime,tag=EvasiveManuvers.mySlime,limit=1] run return run function evasive_manuvers:system/player/shulker/kill
execute if score #break rMath matches 1 on vehicle run return run function evasive_manuvers:system/player/shulker/kill





scoreboard players set #break1 rMath 1
execute as @e[distance=..0.01,type=slime,tag=EvasiveManuvers.mySlime,tag=EvasiveManuvers.Movable] at @s unless block ~ ~ ~ lava unless block ~ ~ ~ water run scoreboard players set #break1 rMath 0


scoreboard players set #break rMath 1
execute on target if predicate evasive_manuvers:is_sneaking run scoreboard players set #break rMath 0

execute if score #break1 rMath matches 0 if score #break rMath matches 0 run function evasive_manuvers:system/push_block/pre_move


data remove entity @s attack
data remove entity @s interaction
