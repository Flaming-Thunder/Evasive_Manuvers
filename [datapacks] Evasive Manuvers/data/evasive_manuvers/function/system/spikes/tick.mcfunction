


execute if entity @s[nbt={data:{Facing:0b}}] positioned ~-0.5 ~-1 ~-0.5 as @a[dx=0,gamemode=!creative,gamemode=!spectator] positioned ~ ~0.62 ~ if entity @s[dx=0] run function evasive_manuvers:api/player/kill
execute if entity @s[nbt={data:{Facing:1b}}] positioned ~-0.5 ~ ~-0.5 as @a[dx=0,gamemode=!creative,gamemode=!spectator] positioned ~ ~-0.62 ~ if entity @s[dx=0] run function evasive_manuvers:api/player/kill

execute if entity @s[nbt={data:{Facing:2b}}] positioned ~-0.5 ~-0.5 ~-1 as @a[dx=0,gamemode=!creative,gamemode=!spectator] positioned ~ ~ ~0.62 if entity @s[dx=0] run function evasive_manuvers:api/player/kill
execute if entity @s[nbt={data:{Facing:3b}}] positioned ~-0.5 ~-0.5 ~ as @a[dx=0,gamemode=!creative,gamemode=!spectator] positioned ~ ~ ~-0.62 if entity @s[dx=0] run function evasive_manuvers:api/player/kill

execute if entity @s[nbt={data:{Facing:4b}}] positioned ~-1 ~-0.5 ~-0.5 as @a[dx=0,gamemode=!creative,gamemode=!spectator] positioned ~0.62 ~ ~ if entity @s[dx=0] run function evasive_manuvers:api/player/kill
execute if entity @s[nbt={data:{Facing:5b}}] positioned ~ ~-0.5 ~-0.5 as @a[dx=0,gamemode=!creative,gamemode=!spectator] positioned ~-0.62 ~ ~ if entity @s[dx=0] run function evasive_manuvers:api/player/kill


execute if block ^ ^ ^-0.5 #air run function evasive_manuvers:api/element/remove




