##main raycast
execute as @s[tag=!bouncing] positioned ~-0.25 ~ ~ unless block ~ ~ ~ #dot:passthrough run function dot:disc/altbounce/raycast/negx
execute as @s[tag=!bouncing] positioned ~0.25 ~ ~ unless block ~ ~ ~ #dot:passthrough run function dot:disc/altbounce/raycast/posx
execute as @s[tag=!bouncing] positioned ~ ~-0.25 ~ unless block ~ ~ ~ #dot:passthrough run function dot:disc/altbounce/raycast/negy
execute as @s[tag=!bouncing] positioned ~ ~0.25 ~ unless block ~ ~ ~ #dot:passthrough run function dot:disc/altbounce/raycast/posy
execute as @s[tag=!bouncing] positioned ~ ~ ~-0.25 unless block ~ ~ ~ #dot:passthrough run function dot:disc/altbounce/raycast/negz
execute as @s[tag=!bouncing] positioned ~ ~ ~0.25 unless block ~ ~ ~ #dot:passthrough run function dot:disc/altbounce/raycast/posz
