setblock ~ ~ ~ barrier


execute on passengers if entity @s[type=item_display] run data merge entity @s {start_interpolation:-1,interpolation_duration:5,transformation:{scale:[1,1,1],translation:[0,-0.05,0]}}

