


execute if block ~ ~ ~ #slabs[type=bottom] run data modify storage evasive_manuvers:data temp.hitbox set value {type:0,p0:[0d,0.5d,0d],p1:[1d,1d,1d]}
execute if block ~ ~ ~ #slabs[type=top] run data modify storage evasive_manuvers:data temp.hitbox set value {type:0,p0:[0d,0d,0d],p1:[1d,0.5d,1d]}
execute if block ~ ~ ~ #slabs[type=double] run data modify storage evasive_manuvers:data temp.hitbox set value {type:0,p0:[0d,0d,0d],p1:[0d,0d,0d]}
