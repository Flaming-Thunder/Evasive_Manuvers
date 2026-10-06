execute at @s align xyz positioned ~0.5 ~0.05 ~0.5 unless entity @e[tag=EvasiveManuvers.Element,distance=..0.5] run summon interaction ~ ~ ~ {Tags:["EvasiveManuvers.Element","EvasiveManuvers.FallingPit","EvasiveManuvers.new"],width:0.9,height:0.9,data:{name:"Default",ElementName:"Falling Pit"},Passengers:[{id:"item_display",transformation:{scale:[1,1,1],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,-0.05,0]}},{id:"text_display",text:{text:"Click with an item\n to set the model",color:"yellow"},billboard:"vertical",transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5],translation:[0,-0.45,0]}}]}




kill @s

