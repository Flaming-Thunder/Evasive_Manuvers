scoreboard players add #count fptrickID 1

scoreboard players operation @s fptrickID = #count fptrickID


execute store result storage fptrick:math macro.id int 1 run scoreboard players get @s fptrickID
function fptrick_impulse:use/create_data with storage dapvp:math macro
