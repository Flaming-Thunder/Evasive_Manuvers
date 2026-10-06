#advancement revoke @s only evasive_manuvers:stepping_on_barrier
#
#tellraw RAC00NJOHN step
#
#execute align xyz positioned ~0.5 ~-1 ~0.5 if entity @e[tag=EvasiveManuvers.FallingPit,distance=..0.1] run tellraw RAC00NJOHN step
#execute align xyz positioned ~0.5 ~-1 ~0.5 if entity @e[tag=EvasiveManuvers.FallingPit,distance=..0.1] run attribute @s jump_strength modifier add cancel -1 add_multiplied_total
#
#
#tag @s add jumpCanceled
