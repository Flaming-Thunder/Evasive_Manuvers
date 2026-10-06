execute store result score .notExist rMath unless entity 00000001-0000-0002-0000-000300000004 run summon block_display ~ ~ ~ {UUID:[I;1,2,3,4],Tags:["maths"]}


scoreboard players set .mode rMath 1

function sd:system/intersection


execute if score .notExist rMath matches 1 run kill 00000001-0000-0002-0000-000300000004


