
scoreboard players operation #x fptrick_impulse = #iMotion EvasiveManuvers.PosX
scoreboard players operation #y fptrick_impulse = #iMotion EvasiveManuvers.PosY
scoreboard players operation #z fptrick_impulse = #iMotion EvasiveManuvers.PosZ

tag @s add EvasiveManuvers.fullDrag

scoreboard players operation #x fptrick_impulse *= #10 rMath
scoreboard players operation #y fptrick_impulse *= #10 rMath
scoreboard players operation #z fptrick_impulse *= #10 rMath


#scoreboard players operation #x fptrick_impulse -= @s EvasiveManuvers.MotionX
#scoreboard players operation #y fptrick_impulse -= @s EvasiveManuvers.MotionY
#scoreboard players operation #z fptrick_impulse -= @s EvasiveManuvers.MotionZ

#execute at @s if block ~ ~-0.1 ~ #air run scoreboard players operation #x fptrick_impulse *= #AirMotion rMath
#execute at @s if block ~ ~-0.1 ~ #air run scoreboard players operation #z fptrick_impulse *= #AirMotion rMath
#execute at @s if block ~ ~-0.1 ~ #air run scoreboard players operation #x fptrick_impulse /= #1000 rMath
#execute at @s if block ~ ~-0.1 ~ #air run scoreboard players operation #z fptrick_impulse /= #1000 rMath


function fptrick_impulse:launch_global

#scoreboard players operation @s EvasiveManuvers.applyVX += #x fptrick_impulse
#scoreboard players operation @s EvasiveManuvers.applyVY += #y fptrick_impulse
#scoreboard players operation @s EvasiveManuvers.applyVZ += #z fptrick_impulse


execute positioned as @s positioned ^ ^ ^0.5 unless block ~ ~ ~ #evasive_manuvers:laser_air run return run function evasive_manuvers:api/player/health/damage {amount:3}
execute positioned as @s positioned ^ ^ ^0.5 positioned ~-.5 ~ ~-.5 if entity @e[type=shulker,dx=0,tag=!EvasiveManuvers.HeavyCubeShulker] run return run function evasive_manuvers:api/player/health/damage {amount:3}
execute positioned as @s positioned ^ ^ ^0.5 positioned ~-.5 ~ ~-.5 if entity @e[type=slime,tag=!this,dx=0,tag=EvasiveManuvers.HeavyCube] run return run function evasive_manuvers:api/player/health/damage {amount:3}

