#execute store result score #temp rMath run attribute @s air_drag_modifier get -910000
#execute store result score #temp1 rMath run attribute @s friction_modifier get -546000
#scoreboard players operation #temp rMath > #temp1 rMath
execute store result score #temp rMath run attribute @s friction_modifier get -546000
scoreboard players add #temp rMath 1000000


scoreboard players operation #temp rMath /= #speedMulti rMath
$data modify storage evasive_manuvers:data macro.x set value $(x)
execute store result score #temp1 rMath run data get storage evasive_manuvers:data macro.x 500

scoreboard players operation Math.In0 rMath = #temp1 rMath
scoreboard players operation Math.In0 rMath /= #10 rMath
scoreboard players add Math.In0 rMath 1000
#tellraw @a {score:{name:"Math.In0",objective:"rMath"}}
execute store result score @s EvasiveManuvers.MaxSpeedA run function math:function/log
#tellraw @a {score:{name:"@s",objective:"EvasiveManuvers.MaxSpeedA"}}

scoreboard players operation #temp1 rMath *= #temp rMath
execute store result storage evasive_manuvers:data macro.x float 0.0000001 run scoreboard players get #temp1 rMath

function evasive_manuvers:system/player/attribute/movement_speed with storage evasive_manuvers:data macro


