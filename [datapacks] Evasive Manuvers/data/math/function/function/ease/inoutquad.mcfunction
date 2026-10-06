execute if score Math.In0 rMath matches ..499 store result score Math.temp0 rMath run function math:function/ease/inquad
execute if score Math.In0 rMath matches ..499 run return run scoreboard players operation Math.temp0 rMath *= #2 rMath


execute if score Math.In0 rMath matches 500.. store result score Math.temp0 rMath run function math:function/ease/outquad
execute if score Math.In0 rMath matches 500.. run scoreboard players operation Math.temp0 rMath *= #2 rMath
execute if score Math.In0 rMath matches 500.. run return run scoreboard players remove Math.temp0 rMath 1000



