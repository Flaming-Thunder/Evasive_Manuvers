


execute if block ~ ~ ~ #trapdoors[open=false] run return 1
execute if block ~ ~ ~ #stairs[half=bottom] run return 1
execute if block ~ ~ ~ #slabs[type=bottom] run return 1
execute if block ~ ~ ~ #beds run return 1
execute if block ~ ~ ~ #campfires[lit=false] run return 1
execute if block ~ ~ ~ #evasive_manuvers:grabable_copper run return 1
execute if block ~ ~ ~ #stairs[half=top] positioned ~ ~-1 ~ unless function evasive_manuvers:system/player/move/climb/air run return 1
execute if block ~ ~ ~ #slabs[type=top] positioned ~ ~-1 ~ unless function evasive_manuvers:system/player/move/climb/air run return 1
execute if block ~ ~ ~ snow[layers=1] positioned ~ ~-1 ~ unless function evasive_manuvers:system/player/move/climb/air run return 1
execute if block ~ ~ ~ snow[layers=2] positioned ~ ~-1 ~ unless function evasive_manuvers:system/player/move/climb/air run return 1
execute if block ~ ~ ~ snow[layers=3] positioned ~ ~-1 ~ unless function evasive_manuvers:system/player/move/climb/air run return 1
execute if block ~ ~ ~ azalea positioned ~ ~-1 ~ unless function evasive_manuvers:system/player/move/climb/air run return 1
execute if block ~ ~ ~ flowering_azalea positioned ~ ~-1 ~ unless function evasive_manuvers:system/player/move/climb/air run return 1



