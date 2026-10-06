data modify storage math:data out set value [0,0,0]

execute store result storage math:data out[0] double -0.001 run data get storage math:data in[0] 1000
execute store result storage math:data out[1] double -0.001 run data get storage math:data in[1] 1000
execute store result storage math:data out[2] double -0.001 run data get storage math:data in[2] 1000


