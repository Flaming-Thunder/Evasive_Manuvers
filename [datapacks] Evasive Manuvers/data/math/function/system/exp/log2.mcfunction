


scoreboard players operation Math.temp0 rMath /= #2 rMath

scoreboard players add Math.temp1 rMath 1



execute if score Math.temp0 rMath > #expLimit rMath run function math:system/exp/log2
