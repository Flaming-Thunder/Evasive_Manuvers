execute if block ~ ~ ~ copper_bulb run setblock ~ ~ ~ copper_bulb[lit=true]
execute if block ~ ~ ~ exposed_copper_bulb run setblock ~ ~ ~ exposed_copper_bulb[lit=true]
execute if block ~ ~ ~ oxidized_copper_bulb run setblock ~ ~ ~ oxidized_copper_bulb[lit=true]
execute if block ~ ~ ~ weathered_copper_bulb run setblock ~ ~ ~ weathered_copper_bulb[lit=true]
execute if block ~ ~ ~ waxed_copper_bulb run setblock ~ ~ ~ waxed_copper_bulb[lit=true]
execute if block ~ ~ ~ waxed_exposed_copper_bulb run setblock ~ ~ ~ waxed_exposed_copper_bulb[lit=true]
execute if block ~ ~ ~ waxed_oxidized_copper_bulb run setblock ~ ~ ~ waxed_oxidized_copper_bulb[lit=true]
execute if block ~ ~ ~ waxed_weathered_copper_bulb run setblock ~ ~ ~ waxed_weathered_copper_bulb[lit=true]
execute if block ~ ~ ~ target run setblock ~ ~ ~ target[power=15]
execute if block ~ ~ ~ redstone_lamp run setblock ~ ~ ~ redstone_lamp[lit=true]
execute if block ~ ~ ~ #evasive_manuvers:laser_interact run summon item_display ~ ~ ~ {Tags:["EvasiveManuvers.LaserOutput"]}

