


execute if block ~ ~ ~ #stairs[facing=north,half=bottom,shape=straight] run data modify storage evasive_manuvers:data temp.hitbox set value {type:0,p0:[0d,0.5d,0.5d],p1:[1d,1d,1d]}
execute if block ~ ~ ~ #stairs[facing=south,half=bottom,shape=straight] run data modify storage evasive_manuvers:data temp.hitbox set value {type:0,p0:[0d,0.5d,0d],p1:[1d,1d,.5d]}
execute if block ~ ~ ~ #stairs[facing=west,half=bottom,shape=straight] run data modify storage evasive_manuvers:data temp.hitbox set value {type:0,p0:[0.5d,0.5d,0d],p1:[1d,1d,1d]}
execute if block ~ ~ ~ #stairs[facing=east,half=bottom,shape=straight] run data modify storage evasive_manuvers:data temp.hitbox set value {type:0,p0:[0d,0.5d,0d],p1:[0.5d,1d,1d]}

execute if block ~ ~ ~ #stairs[facing=north,half=top,shape=straight] run data modify storage evasive_manuvers:data temp.hitbox set value {type:0,p0:[0d,0d,0.5d],p1:[1d,.5d,1d]}
execute if block ~ ~ ~ #stairs[facing=south,half=top,shape=straight] run data modify storage evasive_manuvers:data temp.hitbox set value {type:0,p0:[0d,0d,0d],p1:[1d,.5d,.5d]}
execute if block ~ ~ ~ #stairs[facing=west,half=top,shape=straight] run data modify storage evasive_manuvers:data temp.hitbox set value {type:0,p0:[0.5d,0d,0d],p1:[1d,.5d,1d]}
execute if block ~ ~ ~ #stairs[facing=east,half=top,shape=straight] run data modify storage evasive_manuvers:data temp.hitbox set value {type:0,p0:[0d,0d,0d],p1:[0.5d,.5d,1d]}


execute if block ~ ~ ~ #stairs[facing=east,half=bottom,shape=inner_left] run data modify storage evasive_manuvers:data temp.hitbox set value {type:0,p0:[0d,0.5d,0.5d],p1:[0.5d,1d,1d]}
execute if block ~ ~ ~ #stairs[facing=south,half=bottom,shape=inner_left] run data modify storage evasive_manuvers:data temp.hitbox set value {type:0,p0:[0d,0.5d,0d],p1:[0.5d,1d,0.5d]}
execute if block ~ ~ ~ #stairs[facing=north,half=bottom,shape=inner_left] run data modify storage evasive_manuvers:data temp.hitbox set value {type:0,p0:[0.5d,0.5d,0.5d],p1:[1d,1d,1d]}
execute if block ~ ~ ~ #stairs[facing=west,half=bottom,shape=inner_left] run data modify storage evasive_manuvers:data temp.hitbox set value {type:0,p0:[0.5d,0.5d,0d],p1:[1d,1d,0.5d]}
execute if block ~ ~ ~ #stairs[facing=south,half=bottom,shape=inner_right] run data modify storage evasive_manuvers:data temp.hitbox set value {type:0,p0:[0.5d,0.5d,0d],p1:[1d,1d,0.5d]}
execute if block ~ ~ ~ #stairs[facing=west,half=bottom,shape=inner_right] run data modify storage evasive_manuvers:data temp.hitbox set value {type:0,p0:[0.5d,0.5d,0.5d],p1:[1d,1d,1d]}
execute if block ~ ~ ~ #stairs[facing=north,half=bottom,shape=inner_right] run data modify storage evasive_manuvers:data temp.hitbox set value {type:0,p0:[0d,0.5d,0.5d],p1:[0.5d,1d,1d]}
execute if block ~ ~ ~ #stairs[facing=east,half=bottom,shape=inner_right] run data modify storage evasive_manuvers:data temp.hitbox set value {type:0,p0:[0d,0.5d,0d],p1:[0.5d,1d,0.5d]}

execute if block ~ ~ ~ #stairs[facing=east,half=top,shape=inner_left] run data modify storage evasive_manuvers:data temp.hitbox set value {type:0,p0:[0d,0d,0.5d],p1:[0.5d,.5d,1d]}
execute if block ~ ~ ~ #stairs[facing=south,half=top,shape=inner_left] run data modify storage evasive_manuvers:data temp.hitbox set value {type:0,p0:[0d,0d,0d],p1:[0.5d,.5d,0.5d]}
execute if block ~ ~ ~ #stairs[facing=north,half=top,shape=inner_left] run data modify storage evasive_manuvers:data temp.hitbox set value {type:0,p0:[0.5d,0d,0.5d],p1:[1d,.5d,1d]}
execute if block ~ ~ ~ #stairs[facing=west,half=top,shape=inner_left] run data modify storage evasive_manuvers:data temp.hitbox set value {type:0,p0:[0.5d,0d,0d],p1:[1d,.5d,0.5d]}
execute if block ~ ~ ~ #stairs[facing=south,half=top,shape=inner_right] run data modify storage evasive_manuvers:data temp.hitbox set value {type:0,p0:[0.5d,0d,0d],p1:[1d,.5d,0.5d]}
execute if block ~ ~ ~ #stairs[facing=west,half=top,shape=inner_right] run data modify storage evasive_manuvers:data temp.hitbox set value {type:0,p0:[0.5d,0d,0.5d],p1:[1d,.5d,1d]}
execute if block ~ ~ ~ #stairs[facing=north,half=top,shape=inner_right] run data modify storage evasive_manuvers:data temp.hitbox set value {type:0,p0:[0d,0d,0.5d],p1:[0.5d,.5d,1d]}
execute if block ~ ~ ~ #stairs[facing=east,half=top,shape=inner_right] run data modify storage evasive_manuvers:data temp.hitbox set value {type:0,p0:[0d,0d,0d],p1:[0.5d,.5d,0.5d]}


execute if block ~ ~ ~ #stairs[facing=south,half=bottom,shape=outer_left] run data modify storage evasive_manuvers:data temp.hitbox set value {type:3,p0:[0.5d,0.5d,0.5d],p1:[1d,1d,1d]}
execute if block ~ ~ ~ #stairs[facing=north,half=bottom,shape=outer_left] run data modify storage evasive_manuvers:data temp.hitbox set value {type:3,p0:[0d,0.5d,0d],p1:[0.5d,1d,0.5d]}
execute if block ~ ~ ~ #stairs[facing=west,half=bottom,shape=outer_left] run data modify storage evasive_manuvers:data temp.hitbox set value {type:3,p0:[0d,0.5d,0.5d],p1:[0.5d,1d,1d]}
execute if block ~ ~ ~ #stairs[facing=east,half=bottom,shape=outer_left] run data modify storage evasive_manuvers:data temp.hitbox set value {type:3,p0:[0.5d,0.5d,0d],p1:[1d,1d,0.5d]}
execute if block ~ ~ ~ #stairs[facing=south,half=bottom,shape=outer_rigth] run data modify storage evasive_manuvers:data temp.hitbox set value {type:3,p0:[0.5d,0.5d,0.5d],p1:[1d,1d,1d]}
execute if block ~ ~ ~ #stairs[facing=north,half=bottom,shape=outer_rigth] run data modify storage evasive_manuvers:data temp.hitbox set value {type:3,p0:[0d,0.5d,0d],p1:[0.5d,1d,0.5d]}
execute if block ~ ~ ~ #stairs[facing=west,half=bottom,shape=outer_rigth] run data modify storage evasive_manuvers:data temp.hitbox set value {type:3,p0:[0d,0.5d,0.5d],p1:[0.5d,1d,1d]}
execute if block ~ ~ ~ #stairs[facing=east,half=bottom,shape=outer_rigth] run data modify storage evasive_manuvers:data temp.hitbox set value {type:3,p0:[0.5d,0.5d,0d],p1:[1d,1d,0.5d]}

execute if block ~ ~ ~ #stairs[facing=south,half=top,shape=outer_left] run data modify storage evasive_manuvers:data temp.hitbox set value {type:3,p0:[0.5d,0d,0.5d],p1:[1d,.5d,1d]}
execute if block ~ ~ ~ #stairs[facing=north,half=top,shape=outer_left] run data modify storage evasive_manuvers:data temp.hitbox set value {type:3,p0:[0d,0d,0d],p1:[0.5d,.5d,0.5d]}
execute if block ~ ~ ~ #stairs[facing=west,half=top,shape=outer_left] run data modify storage evasive_manuvers:data temp.hitbox set value {type:3,p0:[0d,0d,0.5d],p1:[0.5d,.5d,1d]}
execute if block ~ ~ ~ #stairs[facing=east,half=top,shape=outer_left] run data modify storage evasive_manuvers:data temp.hitbox set value {type:3,p0:[0.5d,0d,0d],p1:[1d,.5d,0.5d]}
execute if block ~ ~ ~ #stairs[facing=south,half=top,shape=outer_rigth] run data modify storage evasive_manuvers:data temp.hitbox set value {type:3,p0:[0.5d,0d,0.5d],p1:[1d,.5d,1d]}
execute if block ~ ~ ~ #stairs[facing=north,half=top,shape=outer_rigth] run data modify storage evasive_manuvers:data temp.hitbox set value {type:3,p0:[0d,0d,0d],p1:[0.5d,.5d,0.5d]}
execute if block ~ ~ ~ #stairs[facing=west,half=top,shape=outer_rigth] run data modify storage evasive_manuvers:data temp.hitbox set value {type:3,p0:[0d,0d,0.5d],p1:[0.5d,.5d,1d]}
execute if block ~ ~ ~ #stairs[facing=east,half=top,shape=outer_rigth] run data modify storage evasive_manuvers:data temp.hitbox set value {type:3,p0:[0.5d,0d,0d],p1:[1d,.5d,0.5d]}

