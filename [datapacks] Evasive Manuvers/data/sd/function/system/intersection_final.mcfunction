#Compute the value of the parameter of the axe

execute if score .mode rMath matches 0 run function sd:system/get_eyes




scoreboard players operation SD.d0 rMath = SD.o0 rMath
scoreboard players operation SD.d1 rMath = SD.o1 rMath
scoreboard players operation SD.d2 rMath = SD.o2 rMath

scoreboard players operation SD.d0 rMath -= SD.v0 rMath
scoreboard players operation SD.d1 rMath -= SD.v1 rMath
scoreboard players operation SD.d2 rMath -= SD.v2 rMath

scoreboard players operation SD.t0 rMath = SD.d0 rMath
scoreboard players operation SD.t1 rMath = SD.d1 rMath
scoreboard players operation SD.t2 rMath = SD.d2 rMath

scoreboard players operation SD.t0 rMath *= SD.n0 rMath
scoreboard players operation SD.t1 rMath *= SD.n1 rMath
scoreboard players operation SD.t2 rMath *= SD.n2 rMath


scoreboard players operation SD.temp0 rMath = SD.t0 rMath
scoreboard players operation SD.temp0 rMath += SD.t1 rMath
scoreboard players operation SD.temp0 rMath += SD.t2 rMath

scoreboard players operation SD.temp0 rMath /= SD.dot0 rMath

scoreboard players operation SD.dz rMath = SD.temp0 rMath


#Compute the relative positon of the intersection and plane origin

scoreboard players operation SD.w0 rMath = SD.u0 rMath
scoreboard players operation SD.w1 rMath = SD.u1 rMath
scoreboard players operation SD.w2 rMath = SD.u2 rMath

scoreboard players operation SD.w0 rMath *= SD.temp0 rMath
scoreboard players operation SD.w1 rMath *= SD.temp0 rMath
scoreboard players operation SD.w2 rMath *= SD.temp0 rMath

scoreboard players operation SD.w0 rMath /= #1000 rMath
scoreboard players operation SD.w1 rMath /= #1000 rMath
scoreboard players operation SD.w2 rMath /= #1000 rMath

scoreboard players operation SD.w0 rMath -= SD.d0 rMath
scoreboard players operation SD.w1 rMath -= SD.d1 rMath
scoreboard players operation SD.w2 rMath -= SD.d2 rMath



#Compute the plane director vectors
scoreboard players operation Math.In0 rMath = SD.n0 rMath
scoreboard players operation Math.In0 rMath *= SD.n0 rMath
scoreboard players operation SD.temp1 rMath = SD.n2 rMath
scoreboard players operation SD.temp1 rMath *= SD.n2 rMath
scoreboard players operation Math.In0 rMath += SD.temp1 rMath
execute store result score SD.s rMath run function math:function/sqrt


scoreboard players operation SD.dx rMath = SD.n2 rMath
scoreboard players operation SD.e2 rMath = SD.n0 rMath
scoreboard players operation SD.dx rMath *= #1000 rMath
scoreboard players operation SD.e2 rMath *= #1000 rMath
scoreboard players operation SD.e2 rMath *= #-1 rMath
scoreboard players operation SD.dx rMath /= SD.s rMath
scoreboard players operation SD.e2 rMath /= SD.s rMath

scoreboard players operation SD.dy rMath = SD.e2 rMath
scoreboard players operation SD.a1 rMath = SD.s rMath
scoreboard players operation SD.a2 rMath = SD.dx rMath

scoreboard players operation SD.dy rMath *= SD.n1 rMath
scoreboard players operation SD.a2 rMath *= SD.n1 rMath
scoreboard players operation SD.dy rMath /= #1000 rMath
scoreboard players operation SD.a2 rMath /= #1000 rMath


scoreboard players operation SD.dx rMath *= SD.w0 rMath
scoreboard players operation SD.e2 rMath *= SD.w2 rMath
scoreboard players operation SD.dx rMath += SD.e2 rMath
scoreboard players operation SD.dx rMath /= #1000 rMath

scoreboard players operation SD.dy rMath *= SD.w0 rMath
scoreboard players operation SD.a1 rMath *= SD.w1 rMath
scoreboard players operation SD.a2 rMath *= SD.w2 rMath
scoreboard players operation SD.dy rMath += SD.a1 rMath
scoreboard players operation SD.dy rMath -= SD.a2 rMath
scoreboard players operation SD.dy rMath /= #1000 rMath

#execute if entity @s[type=player] run tellraw RAC00NJOHN [{score:{name:"SD.dx",objective:"rMath"}},",",{score:{name:"SD.dy",objective:"rMath"}},",",{score:{name:"SD.dz",objective:"rMath"}}]

