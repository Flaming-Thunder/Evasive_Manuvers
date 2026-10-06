
execute if entity @s[tag=EvasiveManuvers.AutoSwitchBlock] at @s run setblock ~ ~ ~ air
execute if entity @s[tag=EvasiveManuvers.ManualSwitchBlock] at @s run setblock ~ ~ ~ air
execute if entity @s[tag=EvasiveManuvers.BlockSwitcher] at @s run setblock ~ ~ ~ air
execute if entity @s[tag=EvasiveManuvers.SnakeBlock] at @s run setblock ~ ~ ~ air
execute if entity @s[tag=EvasiveManuvers.CubeDropper] at @s run setblock ~ ~ ~ air
execute if entity @s[tag=EvasiveManuvers.CrumbleBlock] at @s run setblock ~ ~ ~ air
execute if entity @s[tag=EvasiveManuvers.FallingPit] at @s run setblock ~ ~ ~ air
execute if entity @s[tag=EvasiveManuvers.Checkpoint] at @s run setblock ~ ~ ~ air
execute if entity @s[tag=EvasiveManuvers.PowerUp] at @s run setblock ~ ~ ~ air


execute if entity @s[tag=EvasiveManuvers.Checkpoint] at @s run forceload remove ~ ~


execute if entity @s[tag=EvasiveManuvers.HeavyCube] run scoreboard players operation #temp rMath = @s EvasiveManuvers.PlayerID
execute if entity @s[tag=EvasiveManuvers.HeavyCube] as @e[tag=EvasiveManuvers.HeavyCube] if score @s EvasiveManuvers.PlayerID = #temp rMath run tag @s add EvasiveManuvers.WaitKill

execute if entity @s[tag=EvasiveManuvers.CubeDropper] run scoreboard players operation #temp rMath = @s EvasiveManuvers.PlayerID
execute if entity @s[tag=EvasiveManuvers.CubeDropper] as @e[tag=EvasiveManuvers.HeavyCube] if score @s EvasiveManuvers.PlayerID = #temp rMath run tag @s add EvasiveManuvers.WaitKill

tp @s[type=!player] ~ ~-100 ~

execute on passengers run kill @s

kill @s[type=!player]


#execute as @e[tag=EvasiveManuvers.WaitKill] run function evasive_manuvers:api/element/remove


