

scoreboard players operation #temp rMath = @s EvasiveManuvers.PlayerID
execute as @e[type=text_display,tag=EvasiveManuvers.WrenchSettings] if score @s EvasiveManuvers.PlayerID = #temp rMath run function buttons:remove
execute as @e[type=block_display,tag=EvasiveManuvers.SettingsAnchor] if score @s EvasiveManuvers.PlayerID = #temp rMath run kill @s
execute as @e[type=text_display,tag=EvasiveManuvers.WrenchSettings.Name] if score @s EvasiveManuvers.PlayerID = #temp rMath run kill @s







tag @s remove EvasiveManuvers.InSettings