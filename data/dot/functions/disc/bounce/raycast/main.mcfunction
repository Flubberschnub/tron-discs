##main raycast
execute as @s[tag=!bouncing] positioned ~-0.3 ~ ~ unless block ~ ~ ~ #dot:passthrough run function dot:disc/bounce/raycast/negx
execute as @s[tag=!bouncing] positioned ~0.3 ~ ~ unless block ~ ~ ~ #dot:passthrough run function dot:disc/bounce/raycast/posx
#execute as @s[tag=!bouncing] positioned ~ ~-0.5 ~ unless block ~ ~ ~ #dot:passthrough run function dot:disc/bounce/raycast/negy
execute as @s[tag=!bouncing] positioned ~ ~0.3 ~ unless block ~ ~ ~ #dot:passthrough run function dot:disc/bounce/raycast/posy
execute as @s[tag=!bouncing] positioned ~ ~ ~-0.3 unless block ~ ~ ~ #dot:passthrough run function dot:disc/bounce/raycast/negz
execute as @s[tag=!bouncing] positioned ~ ~ ~0.3 unless block ~ ~ ~ #dot:passthrough run function dot:disc/bounce/raycast/posz
