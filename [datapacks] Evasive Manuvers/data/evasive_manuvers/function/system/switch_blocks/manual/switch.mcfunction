execute on vehicle run data modify storage evasive_manuvers:data temp.name set from entity @s data.name


execute as @e[type=block_display,tag=EvasiveManuvers.BlockSwitcher] if function evasive_manuvers:system/math/test_name run function evasive_manuvers:system/switch_blocks/manual/switch_start

execute as @e[type=block_display,tag=EvasiveManuvers.ManualSwitchBlock] if function evasive_manuvers:system/math/test_name run function evasive_manuvers:system/switch_blocks/manual/pre_switch




