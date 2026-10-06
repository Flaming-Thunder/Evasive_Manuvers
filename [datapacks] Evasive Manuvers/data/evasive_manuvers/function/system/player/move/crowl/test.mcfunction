
execute if block ~ ~1 ~ #slabs[type=top] run return 0
execute positioned ~ ~1 ~ unless function evasive_manuvers:system/player/move/crowl/air run return 0
execute if block ~ ~1 ~ #trapdoors[half=top] run return 0
execute if block ~ ~1 ~ #trapdoors[open=true] run return 0
execute if block ~ ~ ~ #evasive_manuvers:crowlable_air positioned ~ ~1 ~ unless function evasive_manuvers:system/player/move/crowl/air run return 1
execute if block ~ ~ ~ #evasive_manuvers:carpet positioned ~ ~1 ~ unless function evasive_manuvers:system/player/move/crowl/air run return 1
execute if block ~ ~ ~ #trapdoors positioned ~ ~1 ~ unless function evasive_manuvers:system/player/move/crowl/air run return 1


