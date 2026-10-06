
tag @e[type=#buttons:button,tag=button.button] remove button.min
execute on vehicle run tag @s add button.min
scoreboard players operation dx.min buttons.main = SD.dx rMath
scoreboard players operation dy.min buttons.main = SD.dy rMath
scoreboard players operation dot.min buttons.main = SD.dx rMath
scoreboard players operation #min buttons.main = SD.dz rMath

