forceload add 0 0 0 0

scoreboard objectives add EvasiveManuvers.Settings dummy
    execute unless score Element.RespawnTime EvasiveManuvers.Settings matches 0.. run scoreboard players set Element.RespawnTime EvasiveManuvers.Settings 160
    execute unless score Element.LaserLength EvasiveManuvers.Settings matches 0.. run scoreboard players set Element.LaserLength EvasiveManuvers.Settings 200

    execute unless score Movement.SlideTime EvasiveManuvers.Settings matches 0.. run scoreboard players set Movement.SlideTime EvasiveManuvers.Settings 10

    execute unless score Movement.MegaSprint.minTime EvasiveManuvers.Settings matches 0.. run scoreboard players set Movement.MegaSprint.minTime EvasiveManuvers.Settings 20

    execute unless score Movement.SpringInercy EvasiveManuvers.Settings matches 0.. run scoreboard players set Movement.SpringInercy EvasiveManuvers.Settings 900

scoreboard objectives add rMath dummy
    scoreboard players set #-10 rMath -10
    scoreboard players set #-1 rMath -1
    scoreboard players set #2 rMath 2
    scoreboard players set #3 rMath 3
    scoreboard players set #4 rMath 4
    scoreboard players set #5 rMath 5
    scoreboard players set #6 rMath 6
    scoreboard players set #7 rMath 7
    scoreboard players set #8 rMath 8
    scoreboard players set #9 rMath 9
    scoreboard players set #10 rMath 10
    scoreboard players set #20 rMath 20
    scoreboard players set #25 rMath 25
    scoreboard players set #30 rMath 30
    scoreboard players set #35 rMath 35
    scoreboard players set #50 rMath 50
    scoreboard players set #60 rMath 60
    scoreboard players set #90 rMath 90
    scoreboard players set #95 rMath 95
    scoreboard players set #100 rMath 100
    scoreboard players set #120 rMath 120
    scoreboard players set #150 rMath 150
    scoreboard players set #256 rMath 256
    scoreboard players set #360 rMath 360
    scoreboard players set #500 rMath 500
    scoreboard players set #1000 rMath 1000
    scoreboard players set #10000 rMath 10000
    scoreboard players set #36000 rMath 36000
    scoreboard players set #65536 rMath 65536
    scoreboard players set #16777216 rMath 16777216
    scoreboard players set #TeleportConstant rMath 30
    scoreboard players set #XpAtLvl100 rMath 742
    scoreboard players set #XpAtLvl1000 rMath 8842
    scoreboard players set #speedMulti rMath 1274
    scoreboard players set #AirMotion rMath 1000
    execute unless score ManualBlockSwitch.State rMath matches 0..1 run scoreboard players set ManualBlockSwitch.State rMath 0


scoreboard objectives add EvasiveManuvers.PosX dummy
scoreboard objectives add EvasiveManuvers.PosY dummy
scoreboard objectives add EvasiveManuvers.PosZ dummy

scoreboard objectives add EvasiveManuvers.MotionX dummy
scoreboard objectives add EvasiveManuvers.MotionY dummy
scoreboard objectives add EvasiveManuvers.MotionZ dummy



scoreboard objectives add EvasiveManuvers.applyVX dummy
scoreboard objectives add EvasiveManuvers.applyVY dummy
scoreboard objectives add EvasiveManuvers.applyVZ dummy

scoreboard objectives add EvasiveManuvers.Speed0 dummy
scoreboard objectives add EvasiveManuvers.Speed1 dummy

scoreboard objectives add EvasiveManuvers.PreSneak dummy
scoreboard objectives add EvasiveManuvers.PreJump dummy
scoreboard objectives add EvasiveManuvers.CanAirJump dummy
scoreboard objectives add EvasiveManuvers.Jump custom:jump


scoreboard objectives add EvasiveManuvers.Slide dummy


scoreboard objectives add EvasiveManuvers.SpringForce dummy

scoreboard objectives add EvasiveManuvers.MaxSpeedA dummy

scoreboard objectives add EvasiveManuvers.PlayerHealth dummy
scoreboard objectives add EvasiveManuvers.PlayerMaxHealth dummy
scoreboard objectives add EvasiveManuvers.HurtTime dummy

scoreboard objectives add EvasiveManuvers.PlayerID dummy
scoreboard objectives add EvasiveManuvers.ElementID dummy
scoreboard objectives add EvasiveManuvers.ElementProperty dummy
scoreboard objectives add EvasiveManuvers.OwnerID dummy

scoreboard objectives add EvasiveManuvers.CheckPointID dummy
scoreboard objectives add EvasiveManuvers.CheckPointGameMode dummy
scoreboard objectives add EvasiveManuvers.CheckPointSafeHeight dummy

scoreboard objectives add EvasiveManuvers.AirJumpTick dummy
scoreboard objectives add EvasiveManuvers.HighSpeedTick dummy
scoreboard objectives add EvasiveManuvers.HighJumpTick dummy


scoreboard objectives add EvasiveManuvers.UseWrench dummy
scoreboard objectives add EvasiveManuvers.PreUseWrench dummy
scoreboard objectives add EvasiveManuvers.WrenchSettings dummy

scoreboard objectives add EvasiveManuvers.SwitchState dummy

scoreboard objectives add EvasiveManuvers.SprintTime dummy


stopwatch create time_global

data modify storage evasive_manuvers:data give set value ["wrench","renamer","supressor"]



gamerule fall_damage false
gamerule spectators_generate_chunks true
gamerule minecraft:max_command_sequence_length 2147483647


team add EvasiveManuversNoCollision
team modify EvasiveManuversNoCollision collisionRule never



execute unless data storage evasive_manuvers:data player run data modify storage evasive_manuvers:data player set value []



summon marker 0 0 0 {Tags:["math"],UUID:[I;5,6,7,8],Invulnerable:1b,CustomName:"Maths (don't delete)",data:{name:"Maths (don't delete)"}}

