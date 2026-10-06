summon item_display ~ ~ ~ {Tags:["EvasiveManuvers.Shulker","EvasiveManuvers.myShulker","EvasiveManuvers.new","EvasiveManuvers.1"],Passengers:[{id:"shulker",DeathLootTable:"",PersistenceRequired:1b,FallFlying:1b,attributes:[{base:0.0625,id:"scale"}],Tags:["EvasiveManuvers.Shulker"],Silent:1b,Invulnerable:1b,NoAI:1b,active_effects:[{id:"invisibility",duration:-1,amplifier:255,show_particles:false}]}]}
summon item_display ~ ~ ~ {Tags:["EvasiveManuvers.Shulker","EvasiveManuvers.myShulker","EvasiveManuvers.new","EvasiveManuvers.2"],Passengers:[{id:"shulker",DeathLootTable:"",PersistenceRequired:1b,FallFlying:1b,attributes:[{base:0.0625,id:"scale"}],Tags:["EvasiveManuvers.Shulker"],Silent:1b,Invulnerable:1b,NoAI:1b,active_effects:[{id:"invisibility",duration:-1,amplifier:255,show_particles:false}]}]}
summon item_display ~ ~ ~ {Tags:["EvasiveManuvers.Shulker","EvasiveManuvers.myShulker","EvasiveManuvers.new","EvasiveManuvers.3"],Passengers:[{id:"shulker",DeathLootTable:"",PersistenceRequired:1b,FallFlying:1b,attributes:[{base:0.0625,id:"scale"}],Tags:["EvasiveManuvers.Shulker"],Silent:1b,Invulnerable:1b,NoAI:1b,active_effects:[{id:"invisibility",duration:-1,amplifier:255,show_particles:false}]}]}


scoreboard players operation @e[type=item_display,tag=EvasiveManuvers.new] EvasiveManuvers.PlayerID = @s EvasiveManuvers.PlayerID
tag @e[type=item_display,tag=EvasiveManuvers.new] remove EvasiveManuvers.new
# we summon it and give them the same score that the player
# thanks to the temporary tag EvasiveManuvers.new, you do a good job, but you need to go


