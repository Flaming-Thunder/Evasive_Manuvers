data modify storage evasive_manuvers:data temp.name set from entity @s data.name

scoreboard players set #temp rMath -1
execute as @e[type=block_display,tag=EvasiveManuvers.BlockSwitcher] if function evasive_manuvers:system/math/test_name run scoreboard players operation #temp rMath = @s EvasiveManuvers.SwitchState

execute if score #temp rMath matches 0 run function evasive_manuvers:system/switch_blocks/manual/tick0
execute if score #temp rMath matches 1 run function evasive_manuvers:system/switch_blocks/manual/tick1


