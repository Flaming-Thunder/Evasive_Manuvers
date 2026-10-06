
scoreboard players add #count EvasiveManuvers.ElementID 1
#we increase each time the function is executed the count by 1 to make id unique to each player
# WARNING: this score should don't be reset after player have receive their id, two player can maybe have the same id

scoreboard players operation @s EvasiveManuvers.ElementID = #count EvasiveManuvers.ElementID
#we set the id score of the player to the count

scoreboard players set @s EvasiveManuvers.ElementProperty 1
