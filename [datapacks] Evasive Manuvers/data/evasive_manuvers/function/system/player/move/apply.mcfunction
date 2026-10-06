
scoreboard players set @s EvasiveManuvers.applyVX 0
scoreboard players set @s EvasiveManuvers.applyVY 0
scoreboard players set @s EvasiveManuvers.applyVZ 0


execute if score #x fptrick_impulse matches 0 if score #y fptrick_impulse matches 0 if score #z fptrick_impulse matches 0 run return fail


scoreboard players operation #dx fptrick_impulse = #Motion EvasiveManuvers.PosX
scoreboard players operation #dz fptrick_impulse = #Motion EvasiveManuvers.PosZ

scoreboard players operation #dx fptrick_impulse *= #2 rMath
scoreboard players operation #dz fptrick_impulse *= #2 rMath

execute if predicate evasive_manuvers:is_sprinting store result score #s0 rMath run attribute @s movement_speed get 1300
execute unless predicate evasive_manuvers:is_sprinting store result score #s0 rMath run attribute @s movement_speed get 910


scoreboard players set #dz2 rMath 0
scoreboard players set #dx2 rMath 0

execute if predicate evasive_manuvers:input_forward run scoreboard players operation #dz2 rMath += #s0 rMath
execute if predicate evasive_manuvers:input_backward run scoreboard players operation #dz2 rMath -= #s0 rMath
execute if predicate evasive_manuvers:input_right run scoreboard players operation #dx2 rMath += #s0 rMath
execute if predicate evasive_manuvers:input_left run scoreboard players operation #dx2 rMath -= #s0 rMath


execute at @s rotated ~ 0 run function evasive_manuvers:system/math/unit_vector
scoreboard players operation #dx rMath *= #dz2 rMath
scoreboard players operation #dz rMath *= #dz2 rMath
scoreboard players operation #dx rMath /= #100 rMath
scoreboard players operation #dz rMath /= #100 rMath
scoreboard players operation #dx fptrick_impulse += #dx rMath
scoreboard players operation #dz fptrick_impulse += #dz rMath

execute at @s rotated ~90 0 run function evasive_manuvers:system/math/unit_vector
scoreboard players operation #dx rMath *= #dx2 rMath
scoreboard players operation #dz rMath *= #dx2 rMath
scoreboard players operation #dx rMath /= #100 rMath
scoreboard players operation #dz rMath /= #100 rMath

scoreboard players operation #dx fptrick_impulse += #dx rMath
scoreboard players operation #dz fptrick_impulse += #dz rMath

scoreboard players operation #x fptrick_impulse += #dx fptrick_impulse
scoreboard players operation #z fptrick_impulse += #dz fptrick_impulse


function fptrick_impulse:launch_global