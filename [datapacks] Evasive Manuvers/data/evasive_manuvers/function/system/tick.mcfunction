

execute store result score gametime.current rMath run stopwatch query time_global 1000

scoreboard players operation gametime.delta rMath = gametime.current rMath
scoreboard players operation gametime.delta rMath -= gametime.previous rMath

scoreboard players operation gametime.delta.tick rMath = gametime.delta rMath
scoreboard players operation gametime.delta.tick rMath *= #20 rMath








effect give @a saturation infinite 255 true


execute store result score AutoBlockSwitch.State rMath run time query gametime
scoreboard players operation AutoBlockSwitch.State rMath %= #120 rMath
scoreboard players operation AutoBlockSwitch.Time rMath = AutoBlockSwitch.State rMath
scoreboard players operation AutoBlockSwitch.State rMath /= #60 rMath


execute as @e[type=shulker,tag=EvasiveManuvers.Shulker] unless predicate evasive_manuvers:have_vehicle run function evasive_manuvers:system/player/shulker/kill

execute as @e[type=item_frame,tag=EvasiveManuvers.HeavyCube] run function evasive_manuvers:system/push_block/init
execute as @e[type=item_display,tag=EvasiveManuvers.HeavyCube] at @s run function evasive_manuvers:system/push_block/tick
execute as @e[type=slime,tag=EvasiveManuvers.HeavyCube] run function evasive_manuvers:system/push_block/tick_slime

execute as @e[type=item_frame,tag=EvasiveManuvers.CubeDropper] run function evasive_manuvers:system/push_block/cube_dropper/init
execute as @e[type=item_display,tag=EvasiveManuvers.CubeDropper] run function evasive_manuvers:system/push_block/cube_dropper/tick

execute as @e[type=item_display,tag=EvasiveManuvers.PistonCorrector] at @s positioned ~-1.5 ~-1.5 ~-1.5 unless entity @e[type=slime,tag=EvasiveManuvers.HeavyCube,dx=2,dy=2,dz=2] run function evasive_manuvers:system/player/shulker/kill
execute as @e[type=item_display,tag=EvasiveManuvers.PistonCorrector] at @s unless block ~ ~ ~ piston[extended=true] run function evasive_manuvers:system/player/shulker/kill


execute as @e[type=item_frame,tag=EvasiveManuvers.Suppressor] run function evasive_manuvers:system/suppressor/main


execute as @e[type=item_frame,tag=EvasiveManuvers.ManualSwitchBlock] run function evasive_manuvers:system/switch_blocks/manual/init
execute as @e[type=item_frame,tag=EvasiveManuvers.BlockSwitcher] run function evasive_manuvers:system/switch_blocks/manual/init_switcher

execute as @e[type=block_display,tag=EvasiveManuvers.ManualSwitchBlock] at @s if entity @a[distance=..7] run function evasive_manuvers:system/switch_blocks/manual/auto_tick_player
execute as @e[type=block_display,tag=EvasiveManuvers.ManualSwitchBlock,scores={EvasiveManuvers.PosX=1}] run function evasive_manuvers:system/switch_blocks/manual/auto_tick
execute as @e[type=block_display,tag=EvasiveManuvers.BlockSwitcher] at @s if entity @a[distance=..7] run function evasive_manuvers:system/switch_blocks/manual/tick_switcher
scoreboard players remove @e[type=block_display,tag=EvasiveManuvers.ManualSwitchBlock,scores={EvasiveManuvers.PosX=1..}] EvasiveManuvers.PosX 1


execute as @e[type=item_frame,tag=EvasiveManuvers.AutoSwitchBlock] run function evasive_manuvers:system/switch_blocks/auto/init
execute if score AutoBlockSwitch.State rMath matches 0 if score AutoBlockSwitch.State-1 rMath matches 1 as @e[type=block_display,tag=EvasiveManuvers.AutoSwitchBlock] run function evasive_manuvers:system/switch_blocks/auto/tick0
execute if score AutoBlockSwitch.State rMath matches 1 if score AutoBlockSwitch.State-1 rMath matches 0 as @e[type=block_display,tag=EvasiveManuvers.AutoSwitchBlock] run function evasive_manuvers:system/switch_blocks/auto/tick1

execute if score AutoBlockSwitch.Time rMath matches 30 as @e[type=block_display,tag=EvasiveManuvers.AutoSwitchBlock,tag=EvasiveManuvers.Off] at @s run function evasive_manuvers:system/switch_blocks/auto/off_particle
execute if score AutoBlockSwitch.Time rMath matches 45 as @e[type=block_display,tag=EvasiveManuvers.AutoSwitchBlock,tag=EvasiveManuvers.Off] at @s run function evasive_manuvers:system/switch_blocks/auto/off_particle
execute if score AutoBlockSwitch.Time rMath matches 59 as @e[type=block_display,tag=EvasiveManuvers.AutoSwitchBlock,tag=EvasiveManuvers.Off] at @s run function evasive_manuvers:system/switch_blocks/auto/off_particle
execute if score AutoBlockSwitch.Time rMath matches 90 as @e[type=block_display,tag=EvasiveManuvers.AutoSwitchBlock,tag=EvasiveManuvers.On] at @s run function evasive_manuvers:system/switch_blocks/auto/on_particle
execute if score AutoBlockSwitch.Time rMath matches 105 as @e[type=block_display,tag=EvasiveManuvers.AutoSwitchBlock,tag=EvasiveManuvers.On] at @s run function evasive_manuvers:system/switch_blocks/auto/on_particle
execute if score AutoBlockSwitch.Time rMath matches 119 as @e[type=block_display,tag=EvasiveManuvers.AutoSwitchBlock,tag=EvasiveManuvers.On] at @s run function evasive_manuvers:system/switch_blocks/auto/on_particle



execute as @e[type=item_frame,tag=EvasiveManuvers.Checkpoint] run function evasive_manuvers:system/checkpoint/init
execute as @e[type=item_display,tag=EvasiveManuvers.Checkpoint] run function evasive_manuvers:system/checkpoint/tick
execute as @e[type=item_display,tag=EvasiveManuvers.DeathCamera] run function evasive_manuvers:system/checkpoint/death_camera/tick

execute as @e[type=item_frame,tag=EvasiveManuvers.SnakeBlock] run function evasive_manuvers:system/hitblock/init
execute as @e[type=block_display,tag=EvasiveManuvers.SnakeBlock] if score @s EvasiveManuvers.PosX matches ..-11 at @s unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute as @e[type=block_display,tag=EvasiveManuvers.SnakeBlock] if score @s EvasiveManuvers.PosX matches ..-11 at @s if entity @a[distance=..7] run function evasive_manuvers:system/hitblock/tick_player
execute as @e[type=block_display,tag=EvasiveManuvers.SnakeBlock] if score @s EvasiveManuvers.PosX matches -10.. run function evasive_manuvers:system/hitblock/tick
execute as @e[type=block_display,tag=EvasiveManuvers.SnakeBlock] if score @s EvasiveManuvers.PosY matches 0.. run function evasive_manuvers:system/hitblock/tick



execute as @e[type=item_frame,tag=EvasiveManuvers.PowerUp] run function evasive_manuvers:system/power_up/init
execute as @e[type=item_display,tag=EvasiveManuvers.PowerUp] run function evasive_manuvers:system/power_up/tick



execute as @e[type=item_frame,tag=EvasiveManuvers.Laser] run function evasive_manuvers:system/laser/init
execute as @e[type=item_frame,tag=EvasiveManuvers.LaserDust] run function evasive_manuvers:system/laser_dust/init
execute store result score #sound rMath run time query gametime
scoreboard players operation #raycast rMath = #sound rMath
scoreboard players operation #particle rMath = #sound rMath
scoreboard players operation #sound rMath %= #10 rMath
scoreboard players operation #raycast rMath %= #2 rMath
scoreboard players operation #particle rMath %= #6 rMath
scoreboard players operation #particle rMath /= #2 rMath
execute if score #raycast rMath matches 0 as @e[type=item_display,tag=EvasiveManuvers.LaserOutput] at @s run function evasive_manuvers:system/laser/output_update
execute if score #raycast rMath matches 0 as @e[type=item_display,tag=EvasiveManuvers.Laser] at @s if entity @a[distance=..80] run function evasive_manuvers:system/laser/tick

execute if score #raycast rMath matches 0 as @e[type=item_display,tag=EvasiveManuvers.LaserDust] at @s if entity @a[distance=..80] run function evasive_manuvers:system/laser_dust/tick


tag @e[type=interaction] remove EvasiveManuvers.laserMirror

execute as @e[type=item_frame,tag=EvasiveManuvers.Mirror] run function evasive_manuvers:system/mirror/init
execute as @e[type=item_display,tag=EvasiveManuvers.Mirror] at @s if entity @a[distance=..7] run function evasive_manuvers:system/mirror/tick






execute as @e[type=item_frame,tag=EvasiveManuvers.CrumbleBlock] run function evasive_manuvers:system/crumble_block/init
execute as @e[type=block_display,tag=EvasiveManuvers.CrumbleBlock] run function evasive_manuvers:system/crumble_block/tick


execute as @e[type=item_frame,tag=EvasiveManuvers.Spikes] run function evasive_manuvers:system/spikes/init
execute as @e[type=item_display,tag=EvasiveManuvers.Spikes] at @s if entity @a[distance=..7] run function evasive_manuvers:system/spikes/tick
 
execute as @e[type=item_frame,tag=EvasiveManuvers.FallingPit] run function evasive_manuvers:system/falling_pit/init
execute as @e[type=interaction,tag=EvasiveManuvers.FallingPit] run function evasive_manuvers:system/falling_pit/tick




execute as @e[type=text_display,tag=EvasiveManuvers.1,tag=EvasiveManuvers.WrenchSettings] run function evasive_manuvers:system/wrench/settings_update/laser_dust_name

execute as @e[type=block_display,tag=EvasiveManuvers.SettingsAnchor] run function evasive_manuvers:system/wrench/settings_update/main




execute as @a[tag=!EvasiveManuvers.inited] run function evasive_manuvers:system/player/get_id
# we ad a tag after give the id score to the player, like that the score is given only one time to each player with the tag selector

execute as @a[gamemode=!spectator] run function evasive_manuvers:system/player/tick
# we execute the function all tick by all the player one by one



scoreboard players operation AutoBlockSwitch.State-1 rMath = AutoBlockSwitch.State rMath




execute store result score #temp rMath run time query gametime
scoreboard players operation #temp rMath %= #10 rMath
execute if score #temp rMath matches 0 run function evasive_manuvers:system/tick10



forceload add 0 0

#execute if entity 00000001-0000-0002-0000-000300000004 run tellraw test {nbt:"Pos",entity:"00000001-0000-0002-0000-000300000004"}

tp 00000001-0000-0002-0000-000300000004 0.0 0.0 0.0

tp 00000005-0000-0006-0000-000700000008 0.0 0.0 0.0


scoreboard players operation gametime.previous rMath = gametime.current rMath