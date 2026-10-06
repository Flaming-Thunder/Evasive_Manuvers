
attribute @s jump_strength modifier remove cancel


## APROXIMATION OF IMMEDATE SPEED

data modify storage evasive_manuvers:data Pos set from entity @s Pos

    scoreboard players operation #Pos-1 EvasiveManuvers.PosX = @s EvasiveManuvers.PosX
    scoreboard players operation #Pos-1 EvasiveManuvers.PosY = @s EvasiveManuvers.PosY
    scoreboard players operation #Pos-1 EvasiveManuvers.PosZ = @s EvasiveManuvers.PosZ


    execute store result score @s EvasiveManuvers.PosX run data get storage evasive_manuvers:data Pos[0] 1000
    execute store result score @s EvasiveManuvers.PosY run data get storage evasive_manuvers:data Pos[1] 1000
    execute store result score @s EvasiveManuvers.PosZ run data get storage evasive_manuvers:data Pos[2] 1000


    scoreboard players operation #Motion EvasiveManuvers.PosX = @s EvasiveManuvers.PosX
    scoreboard players operation #Motion EvasiveManuvers.PosY = @s EvasiveManuvers.PosY
    scoreboard players operation #Motion EvasiveManuvers.PosZ = @s EvasiveManuvers.PosZ

    scoreboard players operation #Motion EvasiveManuvers.PosX -= #Pos-1 EvasiveManuvers.PosX
    execute store result score #Motion EvasiveManuvers.PosY run data get entity @s Motion[1] 1000
    scoreboard players operation #Motion EvasiveManuvers.PosZ -= #Pos-1 EvasiveManuvers.PosZ


    #scoreboard players operation #MotionNext EvasiveManuvers.PosY = #Motion EvasiveManuvers.PosY
    #scoreboard players operation #MotionNext EvasiveManuvers.PosY -= @s EvasiveManuvers.MotionY

    #tellraw @a {score:{name:".Motion",objective:"EvasiveManuvers.PosX"}}

    scoreboard players operation #Motion EvasiveManuvers.PosX *= #1000 rMath
    #scoreboard players operation #Motion EvasiveManuvers.PosY *= #1000 rMath
    scoreboard players operation #Motion EvasiveManuvers.PosZ *= #1000 rMath
    
    #tellraw @a {score:{name:".Motion",objective:"EvasiveManuvers.PosX"}}

    scoreboard players operation #Motion EvasiveManuvers.PosX /= gametime.delta.tick rMath
    #scoreboard players operation #Motion EvasiveManuvers.PosY /= gametime.delta.tick rMath
    scoreboard players operation #Motion EvasiveManuvers.PosZ /= gametime.delta.tick rMath

    scoreboard players operation @s EvasiveManuvers.MotionX = #Motion EvasiveManuvers.PosX
    scoreboard players operation @s EvasiveManuvers.MotionZ = #Motion EvasiveManuvers.PosZ

    #tellraw @a {score:{name:".Motion",objective:"EvasiveManuvers.PosX"}}


##################################


## DATA COPY


    execute store result score #OnGround rMath if predicate evasive_manuvers:on_ground

##################################


## Attributes flags

attribute @s air_drag_modifier modifier remove full
attribute @s air_drag_modifier modifier remove cancel
attribute @s friction_modifier modifier remove cancel

execute if entity @s[tag=EvasiveManuvers.fullDrag] run attribute @s air_drag_modifier modifier add full 1 add_value
execute if entity @s[tag=EvasiveManuvers.noDrag] run attribute @s air_drag_modifier modifier add cancel -1 add_multiplied_total
execute if entity @s[tag=EvasiveManuvers.noFriction] run attribute @s friction_modifier modifier add cancel -1 add_multiplied_total


tag @s remove EvasiveManuvers.fullDrag
tag @s remove EvasiveManuvers.noDrag
tag @s remove EvasiveManuvers.noFriction


#execute if score #OnGround rMath matches 1 run tag @s add EvasiveManuvers.CoyoteTime


##################################



##
attribute @s entity_interaction_range modifier remove em:looking_at_block_range
execute if predicate evasive_manuvers:look_at_block_range run function evasive_manuvers:system/player/looking_at/block_range




## SPEED CALCULATION

    scoreboard players operation #dx rMath = #Motion EvasiveManuvers.PosX
    scoreboard players operation #dx rMath *= #dx rMath

    scoreboard players operation #dz rMath = #Motion EvasiveManuvers.PosZ
    scoreboard players operation #dz rMath *= #dz rMath

    scoreboard players operation Math.In0 rMath = #dx rMath
    scoreboard players operation Math.In0 rMath += #dz rMath
    execute store result score #speed rMath run function math:function/sqrt

    #tellraw @a {score:{name:"#speed",objective:"rMath"}}
    

    scoreboard players operation #Mspeed rMath = #speed rMath
    scoreboard players operation #Mspeed rMath += @s EvasiveManuvers.Speed1
    scoreboard players operation #Mspeed rMath += @s EvasiveManuvers.Speed0
    scoreboard players operation #Mspeed rMath /= #3 rMath

    scoreboard players operation @s EvasiveManuvers.Speed0 = @s EvasiveManuvers.Speed1
    scoreboard players operation @s EvasiveManuvers.Speed1 = #speed rMath

    scoreboard players operation #deltaSpeed rMath = #Mspeed rMath
    scoreboard players operation #deltaSpeed rMath -= #speed rMath
    execute if score #deltaSpeed rMath matches ..-1 run scoreboard players set #deltaSpeed rMath 0

##################################


## CUSTOM MOVEMENTS

#tellraw @a {score:{name:"@s",objective:"EvasiveManuvers.applyVX"}}
#scoreboard players operation #x fptrick_impulse = @s EvasiveManuvers.applyVX
#scoreboard players operation #y fptrick_impulse = @s EvasiveManuvers.applyVY
#scoreboard players operation #z fptrick_impulse = @s EvasiveManuvers.applyVZ
scoreboard players set #x fptrick_impulse 0
scoreboard players set #y fptrick_impulse 0
scoreboard players set #z fptrick_impulse 0



attribute @s movement_efficiency modifier remove soul_sand_bypass
execute at @s positioned ~ ~-0.1 ~ if block ~ ~ ~ soul_sand positioned ~-0.5 ~ ~-0.5 if entity @e[type=slime,tag=EvasiveManuvers.HeavyCube,dx=0] run attribute @s movement_efficiency modifier add soul_sand_bypass 1 add_value

attribute @s jump_strength modifier remove em:slide
attribute @s movement_speed modifier remove em:slide
attribute @s air_drag_modifier modifier remove em:slide
attribute @s friction_modifier modifier remove em:slide
attribute @s gravity modifier remove em:climb
attribute @s gravity modifier remove em:wall_slide
attribute @s air_drag_modifier modifier remove em:wall_slide
effect clear @s slow_falling
attribute @s movement_speed modifier remove em:mega_sprint
attribute @s jump_strength modifier remove em:jump_conversion



## PASSIVE

#mega sprint
execute if predicate evasive_manuvers:is_sprinting if score #OnGround rMath matches 1 run scoreboard players add @s EvasiveManuvers.SprintTime 1
execute unless predicate evasive_manuvers:is_sprinting run scoreboard players set @s EvasiveManuvers.SprintTime 0
execute if entity @s[tag=EvasiveManuvers.CanMegaSprint] if score @s EvasiveManuvers.SprintTime >= Movement.MegaSprint.minTime EvasiveManuvers.Settings run attribute @s movement_speed modifier add em:mega_sprint .2 add_multiplied_base

#jump conversion
execute if score #OnGround rMath matches 1 run scoreboard players operation @s EvasiveManuvers.SpringForce += #deltaSpeed rMath
scoreboard players operation @s EvasiveManuvers.SpringForce *= Movement.SpringInercy EvasiveManuvers.Settings
scoreboard players operation @s EvasiveManuvers.SpringForce /= #1000 rMath
execute store result storage evasive_manuvers:data macro.x float 0.004 run scoreboard players get @s EvasiveManuvers.SpringForce
execute if entity @s[tag=EvasiveManuvers.CanJumpConversion] run function evasive_manuvers:system/player/attribute/jump_strength/conversion with storage evasive_manuvers:data macro

## 

scoreboard players operation #search EvasiveManuvers.PlayerID = @s EvasiveManuvers.PlayerID
execute as @e[type=item_display,tag=EvasiveManuvers.Shulker] if score @s EvasiveManuvers.PlayerID = #search EvasiveManuvers.PlayerID run tag @s add EvasiveManuvers.myShulker

scoreboard players set #slide rMath 0
function evasive_manuvers:system/player/move/branch

execute if score #slide rMath matches 0 if entity @s[tag=EvasiveManuvers.InSlide] run function evasive_manuvers:system/player/move/slide/remove
execute if entity @s[tag=EvasiveManuvers.WaitSlide] if score @s EvasiveManuvers.Slide matches 1.. run scoreboard players remove @s EvasiveManuvers.Slide 1
execute if entity @s[tag=EvasiveManuvers.WaitSlide] if score @s EvasiveManuvers.Slide matches ..0 run tag @s remove EvasiveManuvers.WaitSlide


tag @e[type=item_display,tag=EvasiveManuvers.myShulker] remove EvasiveManuvers.myShulker

    ## Power Up


        execute if score @s EvasiveManuvers.HighSpeedTick matches 1.. run function evasive_manuvers:system/player/power_up/high_speed

        execute if entity @s[tag=EvasiveManuvers.CanHighJump] run function evasive_manuvers:system/player/power_up/high_jump
        execute if entity @s[tag=!EvasiveManuvers.CanHighJump] if score #OnGround rMath matches 1 if data entity @s attributes[{id:"minecraft:jump_strength",modifiers:[{id:"minecraft:high_jump"}]}] run attribute @s jump_strength modifier remove high_jump

        execute if entity @s[tag=EvasiveManuvers.CanAirJump,tag=!EvasiveManuvers.CoyoteTime] if score #OnGround rMath matches 0 if score @s EvasiveManuvers.CanAirJump matches 1 if score #customJump rMath matches 0 if score @s EvasiveManuvers.Jump matches 0 if predicate evasive_manuvers:input_jump run function evasive_manuvers:system/player/move/double_jump/_

        #tellraw @s {score:{name:"@s",objective:"Ai"}}


    ##################################



execute if entity @s[tag=EvasiveManuvers.CoyoteTime] if score #OnGround rMath matches 0 if score @s EvasiveManuvers.Jump matches 0 if predicate evasive_manuvers:input_jump run function evasive_manuvers:system/player/move/_/air_jump

function evasive_manuvers:system/player/move/apply


##################################



## DISPLAY

    ##POWER UP

        data modify storage evasive_manuvers:data temp.display set value [{text:"",shadow_color:[0,0,0,0]}]


        execute unless score @s EvasiveManuvers.HighSpeedTick matches 1.. run data modify storage evasive_manuvers:data temp.display append value {text:"\ua020\ua001",font:"evasive_manuvers:custom"}
        execute if score @s EvasiveManuvers.HighSpeedTick matches 1.. run function evasive_manuvers:system/player/display/high_speed

        execute unless entity @s[tag=EvasiveManuvers.CanHighJump] run data modify storage evasive_manuvers:data temp.display append value {text:"\ua020\ua001",font:"evasive_manuvers:custom"}
        execute if entity @s[tag=EvasiveManuvers.CanHighJump] run function evasive_manuvers:system/player/display/high_jump

        execute unless entity @s[tag=EvasiveManuvers.CanAirJump] run data modify storage evasive_manuvers:data temp.display append value {text:"\ua020\ua001",font:"evasive_manuvers:custom"}
        execute if entity @s[tag=EvasiveManuvers.CanAirJump] run data modify storage evasive_manuvers:data temp.display append value {text:"\ue021",font:"evasive_manuvers:custom"}
        execute if entity @s[tag=EvasiveManuvers.CanAirJump] if score #OnGround rMath matches 0 at @s if score @s EvasiveManuvers.CanAirJump matches 1 run data modify storage evasive_manuvers:data temp.display[-1].text set value "\ue02C"




        title @s actionbar [{nbt:"temp.display",storage:"evasive_manuvers:data",interpret:true}]
    ##################################


    ##Speed
    scoreboard players operation Math.In0 rMath = #Mspeed rMath
    #tellraw @a {score:{name:"Math.In0",objective:"rMath"}}
    
    scoreboard players add Math.In0 rMath 1000
    execute store result score #temp rMath run function math:function/log

    #tellraw @a {score:{name:"#temp",objective:"rMath"}}

    scoreboard players operation #temp rMath *= #XpAtLvl1000 rMath
    scoreboard players operation #temp rMath /= @s EvasiveManuvers.MaxSpeedA
    scoreboard players operation #temp rMath /= #2 rMath
    #scoreboard players operation #temp rMath *= #1000 rMath
    scoreboard players operation #temp rMath < #XpAtLvl1000 rMath
    
    xp set @s 1000 levels
    xp set @s 0 points

    execute if score #temp rMath matches 4096.. run xp add @s 4096 points
    execute if score #temp rMath matches 4096.. run scoreboard players remove #temp rMath 4096
    execute if score #temp rMath matches 2048.. run xp add @s 2048 points
    execute if score #temp rMath matches 2048.. run scoreboard players remove #temp rMath 2048
    execute if score #temp rMath matches 1024.. run xp add @s 1024 points
    execute if score #temp rMath matches 1024.. run scoreboard players remove #temp rMath 1024
    execute if score #temp rMath matches 512.. run xp add @s 512 points
    execute if score #temp rMath matches 512.. run scoreboard players remove #temp rMath 512
    execute if score #temp rMath matches 128.. run xp add @s 128 points
    execute if score #temp rMath matches 128.. run scoreboard players remove #temp rMath 128
    execute if score #temp rMath matches 64.. run xp add @s 64 points
    execute if score #temp rMath matches 64.. run scoreboard players remove #temp rMath 64
    execute if score #temp rMath matches 32.. run xp add @s 32 points
    execute if score #temp rMath matches 32.. run scoreboard players remove #temp rMath 32
    execute if score #temp rMath matches 16.. run xp add @s 16 points
    execute if score #temp rMath matches 16.. run scoreboard players remove #temp rMath 16
    execute if score #temp rMath matches 8.. run xp add @s 8 points
    execute if score #temp rMath matches 8.. run scoreboard players remove #temp rMath 8
    execute if score #temp rMath matches 4.. run xp add @s 4 points
    execute if score #temp rMath matches 4.. run scoreboard players remove #temp rMath 4
    execute if score #temp rMath matches 2.. run xp add @s 2 points
    execute if score #temp rMath matches 2.. run scoreboard players remove #temp rMath 2
    execute if score #temp rMath matches 1.. run xp add @s 1 points
    execute if score #temp rMath matches 1.. run scoreboard players remove #temp rMath 1

    xp set @s 0 levels

    ##################################




##################################


## Checkpoint

    execute if entity @s[gamemode=!spectator,gamemode=!creative] if score @s EvasiveManuvers.CheckPointSafeHeight matches -2147483648..2147483647 run function evasive_manuvers:system/player/checkpoint/safe_height




##################################









## HEALTH

    execute if score @s EvasiveManuvers.HurtTime matches -15.. run scoreboard players remove @s EvasiveManuvers.HurtTime 1
    execute if score @s EvasiveManuvers.HurtTime matches -14.. run function evasive_manuvers:system/player/health/damage_display
    execute if score @s EvasiveManuvers.HurtTime matches -15 run function evasive_manuvers:system/player/health/damage_remove_display

##################################


## WRENCH


    execute at @s if items entity @s weapon.* *[custom_data~{EvasiveManuversWrench:true}] at @e[tag=EvasiveManuvers.Element,distance=..80] run particle item{item:{id:"barrier",components:{"minecraft:item_model":"evasive_manuvers:block/heavy_cube"}}} ~ ~ ~ 0.1 0.1 0.1 0 1 force @s
    execute at @s if items entity @s weapon.* *[custom_data~{EvasiveManuversRenamer:true}] at @e[tag=EvasiveManuvers.Element,distance=..80] run particle item{item:{id:"barrier",components:{"minecraft:item_model":"evasive_manuvers:block/heavy_cube"}}} ~ ~ ~ 0.1 0.1 0.1 0 1 force @s

    execute if items entity @s weapon.* *[custom_data~{EvasiveManuversWrench:true}] if score @s EvasiveManuvers.UseWrench matches 1 if score @s EvasiveManuvers.PreUseWrench matches 0 run function evasive_manuvers:system/wrench/tick
    
    execute if entity @s[tag=EvasiveManuvers.InSettings] unless items entity @s weapon.* *[custom_data~{EvasiveManuversWrench:true}] run function evasive_manuvers:system/wrench/remove



    execute if items entity @s weapon.* *[custom_data~{EvasiveManuversRenamer:true}] run function evasive_manuvers:system/wrench/renamer/tick/use



##################################



execute if score #OnGround rMath matches 0 run tag @s remove EvasiveManuvers.CoyoteTime
execute if score @s EvasiveManuvers.Jump matches 1.. run tag @s remove EvasiveManuvers.CoyoteTime




scoreboard players set @s EvasiveManuvers.Jump 0
scoreboard players set @s EvasiveManuvers.PreJump 0
execute if predicate evasive_manuvers:input_jump run scoreboard players set @s EvasiveManuvers.PreJump 1


execute store result score @s EvasiveManuvers.PreSneak if predicate evasive_manuvers:input_sneak

scoreboard players set @s EvasiveManuvers.CanAirJump 0
execute if score #OnGround rMath matches 0 unless predicate evasive_manuvers:input_jump run scoreboard players set @s EvasiveManuvers.CanAirJump 1



effect give @s resistance infinite 255 true

scoreboard players operation @s EvasiveManuvers.PreUseWrench = @s EvasiveManuvers.UseWrench
scoreboard players set @s EvasiveManuvers.UseWrench 0


scoreboard players operation @s EvasiveManuvers.MotionY = #Motion EvasiveManuvers.PosY



execute unless entity @s[gamemode=spectator] unless entity @s[gamemode=creative] unless predicate evasive_manuvers:have_vehicle at @s positioned ~ -64 ~ if entity @s[dy=-100] run function evasive_manuvers:api/player/kill

