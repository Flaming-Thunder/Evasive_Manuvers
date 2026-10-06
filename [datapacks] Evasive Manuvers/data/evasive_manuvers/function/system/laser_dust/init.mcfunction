
execute if entity @s[tag=!EvasiveManuvers.Interactable] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[distance=..0.5,tag=EvasiveManuvers.Element] run summon item_display ~ ~ ~ {Tags:["EvasiveManuvers.Element","EvasiveManuvers.LaserDust","EvasiveManuvers.new"],data:{name:"Default",ElementName:"Laser Dust"}}
execute if entity @s[tag=EvasiveManuvers.Interactable] at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[distance=..0.5,tag=EvasiveManuvers.Element] run summon item_display ~ ~ ~ {Tags:["EvasiveManuvers.Element","EvasiveManuvers.LaserDust","EvasiveManuvers.Interactable","EvasiveManuvers.new"],data:{name:"Default",ElementName:"Laser Dust"},Passengers:[{id:"interaction",width:0.8,height:0.65}]}



execute at @s rotated as @a[sort=nearest,limit=1] run rotate @e[type=item_display,limit=1,tag=EvasiveManuvers.new] ~ 0
scoreboard players set @e[type=item_display,limit=1,tag=EvasiveManuvers.new] EvasiveManuvers.PosZ 12




tag @e[type=item_display,tag=EvasiveManuvers.new] remove EvasiveManuvers.new


kill @s


