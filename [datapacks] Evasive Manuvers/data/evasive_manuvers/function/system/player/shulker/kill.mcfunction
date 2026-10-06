
execute if entity @s[tag=EvasiveManuvers.AutoSwitchBlock] at @s run setblock ~ ~ ~ air
execute if entity @s[tag=EvasiveManuvers.ManualSwitchBlock] at @s run setblock ~ ~ ~ air
execute if entity @s[tag=EvasiveManuvers.BlockSwitcher] at @s run setblock ~ ~ ~ air
execute if entity @s[tag=EvasiveManuvers.HitBlock] at @s run setblock ~ ~ ~ air


tp @s ~ ~-100 ~

execute on passengers run kill @s

kill @s


