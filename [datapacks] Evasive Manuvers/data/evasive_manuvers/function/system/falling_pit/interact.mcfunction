
execute on target if items entity @s weapon.* *[custom_data~{EvasiveManuversSuppressor:true}] run return run function evasive_manuvers:api/element/remove
execute on attacker if items entity @s weapon.* *[custom_data~{EvasiveManuversSuppressor:true}] run return run function evasive_manuvers:api/element/remove


data remove storage evasive_manuvers:data temp.item
execute on target if entity @s[gamemode=creative] run data modify storage evasive_manuvers:data temp.item set from entity @s SelectedItem
execute on attacker if entity @s[gamemode=creative] run data modify storage evasive_manuvers:data temp.item set from entity @s SelectedItem

execute on passengers if entity @s[type=item_display] run data modify entity @s item set from storage evasive_manuvers:data temp.item
execute if data storage evasive_manuvers:data temp.item run function evasive_manuvers:system/falling_pit/setup



data remove entity @s interaction
data remove entity @s attack


