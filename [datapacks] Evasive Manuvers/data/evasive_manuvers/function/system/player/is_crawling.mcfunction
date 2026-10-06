

execute at @s run tp 00000001-0000-0002-0000-000300000004 ~ ~ ~

scoreboard players operation Crawling.temp1 rMath = @s EvasiveManuvers.PosY
execute store result score Crawling.temp2 rMath run attribute @s scale get 650

scoreboard players operation Crawling.temp1 rMath += Crawling.temp2 rMath
execute store result entity 00000001-0000-0002-0000-000300000004 Pos[1] double 0.001 run scoreboard players get Crawling.temp1 rMath


execute at 00000001-0000-0002-0000-000300000004 if entity @s[dx=0] run return fail

return 1

