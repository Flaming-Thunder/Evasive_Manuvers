
execute at @s if entity @a[distance=..7] run function evasive_manuvers:system/power_up/tick_player

execute if entity @s[tag=EvasiveManuvers.1] at @s positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0,dy=0.1,dz=0] run function evasive_manuvers:system/player/power_up/high_speed_init
execute if entity @s[tag=EvasiveManuvers.2] at @s positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0,dy=0,dz=0,tag=!EvasiveManuvers.CanHighJump] run function evasive_manuvers:system/player/power_up/high_jump_init
execute if entity @s[tag=EvasiveManuvers.3] at @s positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0,dy=0,dz=0,tag=!EvasiveManuvers.CanAirJump] run function evasive_manuvers:system/player/power_up/double_jump_init



