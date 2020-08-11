##bounce tick
execute at @s run function dot:disc/bounce/raycast/main
execute as @s[tag=bouncing] if score @s bounceDir matches 1 run function dot:disc/bounce/x
execute as @s[tag=bouncing] if score @s bounceDir matches 2 run function dot:disc/bounce/y
execute as @s[tag=bouncing] if score @s bounceDir matches 3 run function dot:disc/bounce/z
