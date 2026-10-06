
tag @s add sd.plane


execute as @a[tag=button.user] at @s anchored eyes positioned ^ ^ ^0.001 run function sd:api/plane_coord


execute on vehicle run scoreboard players operation #temp1 buttons.main = @s buttons.width
scoreboard players operation #temp1 buttons.main /= #2 buttons.main
scoreboard players add #temp1 buttons.main 50
scoreboard players operation #temp2 buttons.main = #temp1 buttons.main
scoreboard players operation #temp2 buttons.main *= #-1 buttons.main


execute if score SD.dx rMath < #temp2 buttons.main run scoreboard players reset SD.dx rMath
execute if score SD.dx rMath > #temp1 buttons.main run scoreboard players reset SD.dx rMath


execute on vehicle run scoreboard players operation #temp1 buttons.main = @s buttons.height
scoreboard players add #temp1 buttons.main 50
execute if score SD.dy rMath > #temp1 buttons.main run scoreboard players reset SD.dx rMath
execute if score SD.dy rMath matches ..-50 run scoreboard players reset SD.dx rMath

#tellraw @a {score:{name:"#temp1",objective:"buttons.main"}}
#tellraw @a {score:{name:"SD.dx",objective:"rMath"}}
#tellraw @a {score:{name:"SD.dz",objective:"rMath"}}


execute if score SD.dx rMath matches -2147483648..2147483647 if score SD.dz rMath matches 1.. if score SD.dz rMath < #min buttons.main run function buttons:system/tick/hitbox/new_min






tag @s remove sd.plane

