



execute on target if entity @s[gamemode=creative] as @e[type=slime,tag=EvasiveManuvers.mySlime] run function evasive_manuvers:api/element/remove
execute on attacker if entity @s[gamemode=creative] as @e[type=slime,tag=EvasiveManuvers.mySlime] run function evasive_manuvers:api/element/remove

scoreboard players set #break rMath 0
execute on target if items entity @s weapon.mainhand *[custom_data~{EvasiveManuversSuppressor:true}] run scoreboard players set #break rMath 1
execute if score #break rMath matches 1 run function evasive_manuvers:api/element/remove




data remove entity @s interaction
data remove entity @s attack