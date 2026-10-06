
scoreboard players add #count EvasiveManuvers.PlayerID 1
#we increase each time the function is executed the count by 1 to make id unique to each player
# WARNING: this score should don't be reset after player have receive their id, two player can maybe have the same id

scoreboard players operation @s EvasiveManuvers.PlayerID = #count EvasiveManuvers.PlayerID
#we set the id score of the player to the count

tag @s add EvasiveManuvers.inited
#we add a tag to the player that avoid to receive several time an id
# IF TWO PLAYERS HAVE THE SAME ID in case of bad manipulation you can remove to their this tag


execute if entity @s[type=player] run scoreboard players set @s EvasiveManuvers.PlayerMaxHealth 3
execute if entity @s[type=player] run scoreboard players set @s EvasiveManuvers.PlayerHealth 3


