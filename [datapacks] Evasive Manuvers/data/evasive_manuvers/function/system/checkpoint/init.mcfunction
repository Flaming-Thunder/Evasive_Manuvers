


execute at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=EvasiveManuvers.Element,distance=..0.5] run setblock ~ ~ ~ waxed_chiseled_copper
execute at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=EvasiveManuvers.Element,distance=..0.5] run forceload add ~ ~
execute at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=EvasiveManuvers.Element,distance=..0.5] run summon item_display ~ ~ ~ {Tags:["EvasiveManuvers.Element","EvasiveManuvers.Checkpoint","EvasiveManuvers.new"],data:{name:"Default",ElementName:"CheckPoint",SafeHeight:100}}

execute at @s as @e[distance=..1,type=item_display,tag=EvasiveManuvers.new] run function evasive_manuvers:system/player/checkpoint/get_id

execute at @s run tag @e[distance=..1,type=item_display] remove EvasiveManuvers.new
kill @s





