execute at @s run summon text_display ~ ~ ~ {Tags:["button.button","button.description","button.new"],alignment:"left",background:-15269560,transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[1,1,1],translation:[0,0,0.01]}}


execute at @s as @e[tag=button.description,tag=button.new,distance=..0.1,type=#buttons:button] run function buttons:system/tick/gui/description/init
