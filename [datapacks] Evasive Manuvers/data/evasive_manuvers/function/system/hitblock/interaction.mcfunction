


data remove storage evasive_manuvers:data temp.block
execute if score #break rMath matches 0 if data entity @s attack on vehicle run function evasive_manuvers:system/hitblock/activation
execute on target if entity @s[gamemode=creative] unless items entity @s weapon.mainhand *[custom_data~{EvasiveManuversWrench:true}] if data entity @s SelectedItem.components."minecraft:item_model" run data modify storage evasive_manuvers:data temp.block set from entity @s SelectedItem.components."minecraft:item_model"
execute on target if entity @s[gamemode=creative] unless items entity @s weapon.mainhand *[custom_data~{EvasiveManuversWrench:true}] unless data entity @s SelectedItem.components."minecraft:item_model" run data modify storage evasive_manuvers:data temp.block set from entity @s SelectedItem.id
execute if data storage evasive_manuvers:data temp.block on vehicle run data modify entity @s block_state.id set from storage evasive_manuvers:data temp.block









execute if data entity @s attack run data remove entity @s attack
execute if data entity @s interaction run data remove entity @s interaction




