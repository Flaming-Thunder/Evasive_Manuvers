
function sd:system/get_plane

execute if score .mode rMath matches 0 run function sd:system/unit_player



scoreboard players operation SD.dot0 rMath = SD.n0 rMath
scoreboard players operation SD.dot0 rMath *= SD.u0 rMath

scoreboard players operation SD.dot1 rMath = SD.n1 rMath
scoreboard players operation SD.dot1 rMath *= SD.u1 rMath
scoreboard players operation SD.dot0 rMath += SD.dot1 rMath

scoreboard players operation SD.dot1 rMath = SD.n2 rMath
scoreboard players operation SD.dot1 rMath *= SD.u2 rMath
scoreboard players operation SD.dot0 rMath += SD.dot1 rMath
scoreboard players operation SD.dot0 rMath /= #1000 rMath


execute unless score SD.dot0 rMath matches 0 run function sd:system/intersection_final



