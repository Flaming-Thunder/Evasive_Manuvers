


execute store result score #temp rMath run data modify entity @s data.name set from storage evasive_manuvers:data temp.name


execute if score #temp rMath matches 1 run tellraw @a[tag=EvasiveManuvers.MyOwner] [{text:"The data Name of "},{nbt:"data.ElementName",entity:"@s",interpret:true},{text:" is now "},{nbt:"temp.name",storage:"evasive_manuvers:data",interpret:true}]


scoreboard players set #count rMath 0

