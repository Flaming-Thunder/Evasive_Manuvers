
execute if block ~ ~ ~ #stairs run function evasive_manuvers:system/laser/check/stairs

execute if block ~ ~ ~ #slabs run function evasive_manuvers:system/laser/check/slabs







tp 00000001-0000-0002-0000-000300000004 ~ ~ ~
execute store result score #temp EvasiveManuvers.PosX run data get entity 00000001-0000-0002-0000-000300000004 Pos[0] 100
execute store result score #temp EvasiveManuvers.PosY run data get entity 00000001-0000-0002-0000-000300000004 Pos[1] 100
execute store result score #temp EvasiveManuvers.PosZ run data get entity 00000001-0000-0002-0000-000300000004 Pos[2] 100
scoreboard players operation #temp EvasiveManuvers.PosX %= #100 rMath
scoreboard players operation #temp EvasiveManuvers.PosY %= #100 rMath
scoreboard players operation #temp EvasiveManuvers.PosZ %= #100 rMath


execute store result score #temp1 EvasiveManuvers.PosX run data get storage evasive_manuvers:data temp.hitbox.p0[0] 100
execute store result score #temp1 EvasiveManuvers.PosY run data get storage evasive_manuvers:data temp.hitbox.p0[1] 100
execute store result score #temp1 EvasiveManuvers.PosZ run data get storage evasive_manuvers:data temp.hitbox.p0[2] 100

execute store result score #temp2 EvasiveManuvers.PosX run data get storage evasive_manuvers:data temp.hitbox.p1[0] 100
execute store result score #temp2 EvasiveManuvers.PosY run data get storage evasive_manuvers:data temp.hitbox.p1[1] 100
execute store result score #temp2 EvasiveManuvers.PosZ run data get storage evasive_manuvers:data temp.hitbox.p1[2] 100

execute store result score #temp rMath run data get storage evasive_manuvers:data temp.hitbox.type

execute if score #temp rMath matches 0 run scoreboard players set @s EvasiveManuvers.Jump 1
execute if score #temp rMath matches 0 if score #temp EvasiveManuvers.PosX >= #temp1 EvasiveManuvers.PosX if score #temp EvasiveManuvers.PosX <= #temp2 EvasiveManuvers.PosX if score #temp EvasiveManuvers.PosY >= #temp1 EvasiveManuvers.PosY if score #temp EvasiveManuvers.PosY <= #temp2 EvasiveManuvers.PosY if score #temp EvasiveManuvers.PosZ >= #temp1 EvasiveManuvers.PosZ if score #temp EvasiveManuvers.PosZ <= #temp2 EvasiveManuvers.PosZ run scoreboard players set @s EvasiveManuvers.Jump 0

execute if score #temp rMath matches 1 run scoreboard players set @s EvasiveManuvers.Jump 0
execute if score #temp rMath matches 1 if score #temp EvasiveManuvers.PosX >= #temp1 EvasiveManuvers.PosX if score #temp EvasiveManuvers.PosX <= #temp2 EvasiveManuvers.PosX if score #temp EvasiveManuvers.PosY >= #temp1 EvasiveManuvers.PosY if score #temp EvasiveManuvers.PosY <= #temp2 EvasiveManuvers.PosY if score #temp EvasiveManuvers.PosZ >= #temp1 EvasiveManuvers.PosZ if score #temp EvasiveManuvers.PosZ <= #temp2 EvasiveManuvers.PosZ run scoreboard players set @s EvasiveManuvers.Jump 1


execute if score #temp rMath matches 2 run scoreboard players set @s EvasiveManuvers.Jump 1
execute if score #temp rMath matches 2 if score #temp EvasiveManuvers.PosY matches 50.. if score #temp EvasiveManuvers.PosX >= #temp1 EvasiveManuvers.PosX if score #temp EvasiveManuvers.PosX <= #temp2 EvasiveManuvers.PosX if score #temp EvasiveManuvers.PosY >= #temp1 EvasiveManuvers.PosY if score #temp EvasiveManuvers.PosY <= #temp2 EvasiveManuvers.PosY if score #temp EvasiveManuvers.PosZ >= #temp1 EvasiveManuvers.PosZ if score #temp EvasiveManuvers.PosZ <= #temp2 EvasiveManuvers.PosZ run scoreboard players set @s EvasiveManuvers.Jump 0

execute if score #temp rMath matches 3 run scoreboard players set @s EvasiveManuvers.Jump 0
execute if score #temp rMath matches 3 if score #temp EvasiveManuvers.PosY matches 50.. if score #temp EvasiveManuvers.PosX >= #temp1 EvasiveManuvers.PosX if score #temp EvasiveManuvers.PosX <= #temp2 EvasiveManuvers.PosX if score #temp EvasiveManuvers.PosY >= #temp1 EvasiveManuvers.PosY if score #temp EvasiveManuvers.PosY <= #temp2 EvasiveManuvers.PosY if score #temp EvasiveManuvers.PosZ >= #temp1 EvasiveManuvers.PosZ if score #temp EvasiveManuvers.PosZ <= #temp2 EvasiveManuvers.PosZ run scoreboard players set @s EvasiveManuvers.Jump 1

execute if score #temp rMath matches 4 run scoreboard players set @s EvasiveManuvers.Jump 1
execute if score #temp rMath matches 4 if score #temp EvasiveManuvers.PosY matches ..50 if score #temp EvasiveManuvers.PosX >= #temp1 EvasiveManuvers.PosX if score #temp EvasiveManuvers.PosX <= #temp2 EvasiveManuvers.PosX if score #temp EvasiveManuvers.PosY >= #temp1 EvasiveManuvers.PosY if score #temp EvasiveManuvers.PosY <= #temp2 EvasiveManuvers.PosY if score #temp EvasiveManuvers.PosZ >= #temp1 EvasiveManuvers.PosZ if score #temp EvasiveManuvers.PosZ <= #temp2 EvasiveManuvers.PosZ run scoreboard players set @s EvasiveManuvers.Jump 0

execute if score #temp rMath matches 5 run scoreboard players set @s EvasiveManuvers.Jump 0
execute if score #temp rMath matches 5 if score #temp EvasiveManuvers.PosY matches ..50 if score #temp EvasiveManuvers.PosX >= #temp1 EvasiveManuvers.PosX if score #temp EvasiveManuvers.PosX <= #temp2 EvasiveManuvers.PosX if score #temp EvasiveManuvers.PosY >= #temp1 EvasiveManuvers.PosY if score #temp EvasiveManuvers.PosY <= #temp2 EvasiveManuvers.PosY if score #temp EvasiveManuvers.PosZ >= #temp1 EvasiveManuvers.PosZ if score #temp EvasiveManuvers.PosZ <= #temp2 EvasiveManuvers.PosZ run scoreboard players set @s EvasiveManuvers.Jump 1


#tellraw RAC00NJOHN {score:{name:".temp",objective:"EvasiveManuvers.PosX"}}
#tellraw RAC00NJOHN {score:{name:".temp",objective:"EvasiveManuvers.PosY"}}
#tellraw RAC00NJOHN {score:{name:".temp",objective:"EvasiveManuvers.PosZ"}}
#tellraw RAC00NJOHN {score:{name:".break",objective:"rMath"}}
#execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle flame

