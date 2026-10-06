data modify storage buttons:storage temp.Tags append value "button.button"
data modify storage buttons:storage temp.Tags append value "button.gui"
data modify storage buttons:storage temp.Tags append value "button.new"

summon item_display ~ ~ ~ {Tags:["button.new"],Passengers:[{id:"interaction",width:0,height:0,Tags:["button.button"]},{id:"text_display",background:0,Tags:["button.button","button.text"],brightness:{block:15,sky:15}}]}


execute as @e[tag=button.new,limit=1,distance=..0.01,type=#buttons:button] run function buttons:system/summon/gui/new
