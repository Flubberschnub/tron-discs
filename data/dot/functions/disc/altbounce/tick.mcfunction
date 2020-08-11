##bounce tick
execute at @s run function dot:disc/altbounce/raycast/main
execute as @s[tag=bouncing] if score @s bounceDir matches 1 run function dot:disc/altbounce/x
execute as @s[tag=bouncing] if score @s bounceDir matches 2 run function dot:disc/altbounce/y
execute as @s[tag=bouncing] if score @s bounceDir matches 3 run function dot:disc/altbounce/z
