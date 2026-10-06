









execute at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=EvasiveManuvers.Element,distance=..0.5] run setblock ~ ~ ~ air
execute at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=EvasiveManuvers.Element,distance=..0.5] run summon block_display ~ ~ ~ {Tags:["EvasiveManuvers.CrumbleBlock","EvasiveManuvers.Element","EvasiveManuvers.new"],data:{name:"Default",ElementName:"Crumble Block"},block_state:{id:"deepslate_bricks"},interpolation_duration:5,transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[1,1,1],translation:[-0.5,0,-0.5]}}


scoreboard players set @e[type=block_display,tag=EvasiveManuvers.new,limit=1] EvasiveManuvers.PosY -1
scoreboard players set @e[type=block_display,tag=EvasiveManuvers.new,limit=1] EvasiveManuvers.PosX -1



tag @e[type=block_display,tag=EvasiveManuvers.new] remove EvasiveManuvers.new


kill @s


