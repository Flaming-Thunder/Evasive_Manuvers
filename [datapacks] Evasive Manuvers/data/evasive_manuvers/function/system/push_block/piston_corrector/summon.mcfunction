execute positioned ^ ^ ^-1 align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~ ~ {Tags:["EvasiveManuvers.PistonCorrector"],Passengers:[{id:"shulker",Silent:1b,Invulnerable:1b,DeathLootTable:"",NoAI:1b,AttachFace:0,active_effects:[{id:"invisibility",duration:-1,amplifier:255,show_particles:false}],Team:"EvasiveManuversNoCollision"},{id:"block_display",block_state:{id:"piston_head",Properties:{short:"true",facing:"north"}},brightness:{block:10,sky:10},Tags:["EvasiveManuvers.new"],transformation:{left_rotation:[.70710678118,0,0,.70710678118],right_rotation:[0,0,0,1],scale:[1.062,1.062,0.797],translation:[-0.531,1.031,-0.531]}}]}


rotate @e[type=block_display,limit=1,tag=EvasiveManuvers.new] ~ ~
execute store result score #temp rMath run data get entity @e[type=block_display,limit=1,tag=EvasiveManuvers.new] Rotation[0]

execute if score #temp rMath matches -90 run data modify entity @e[type=block_display,limit=1,tag=EvasiveManuvers.new] transformation set value {left_rotation:[0,-.70710678118,0,.70710678118],right_rotation:[0,0,0,1],scale:[1.062,1.062,0.797],translation:[0.531,-0.031,-0.531]}
execute if score #temp rMath matches 90 run data modify entity @e[type=block_display,limit=1,tag=EvasiveManuvers.new] transformation set value {left_rotation:[0,.70710678118,0,.70710678118],right_rotation:[0,0,0,1],scale:[1.062,1.062,0.797],translation:[-0.531,-0.031,0.531]}
execute if score #temp rMath matches 0 run data modify entity @e[type=block_display,limit=1,tag=EvasiveManuvers.new] transformation set value {left_rotation:[0,1,0,0],right_rotation:[0,0,0,1],scale:[1.062,1.062,0.797],translation:[0.531,-0.031,0.531]}
execute if score #temp rMath matches -180 run data modify entity @e[type=block_display,limit=1,tag=EvasiveManuvers.new] transformation set value {left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[1.062,1.062,0.797],translation:[-0.531,-0.031,-0.531]}

execute if score #temp rMath matches 2 run data modify entity @e[type=block_display,limit=1,tag=EvasiveManuvers.new] transformation set value {left_rotation:[0,.70710678118,.70710678118,0],right_rotation:[0,0,0,1],scale:[1.062,1.062,0.797],translation:[0.531,-0.031,-0.531]}


rotate @e[type=block_display,limit=1,tag=EvasiveManuvers.new] 0 0


execute at @s run fill ~ ~ ~ ~ ~ ~ air replace piston_head


tag @e[type=block_display,tag=EvasiveManuvers.new] remove EvasiveManuvers.new

