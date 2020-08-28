##disc tick

##disc life
scoreboard players add @s discLife 1

execute if score @s discLife matches 40.. at @s facing entity @a[tag=matchedid,limit=1] eyes run tp @s ~ ~ ~ ~ ~

execute if score @s discLife matches 100.. run function dot:disc/dropself
execute if score @s discLife matches 10.. at @s positioned ~ ~-1.5 ~ if entity @a[tag=matchedid,distance=..1] run function dot:disc/dropself
execute if score @s discLife matches 10.. at @s if entity @a[tag=matchedid,distance=..1] run function dot:disc/dropself

#execute as @s at @s if block ~ ~-0.2 ~ #dot:passthrough run function dot:disc/motion/tick
##six times motion for precision
execute as @s at @s if block ~ ~-0.01 ~ #dot:passthrough run function dot:disc/altmotion/tick
execute as @s at @s if block ~ ~-0.01 ~ #dot:passthrough run function dot:disc/altmotion/tick
execute as @s at @s if block ~ ~-0.01 ~ #dot:passthrough run function dot:disc/altmotion/tick
execute as @s at @s if block ~ ~-0.01 ~ #dot:passthrough run function dot:disc/altmotion/tick
execute as @s at @s if block ~ ~-0.01 ~ #dot:passthrough run function dot:disc/altmotion/tick
execute as @s at @s if block ~ ~-0.01 ~ #dot:passthrough run function dot:disc/altmotion/tick

#execute at @s positioned ^ ^ ^5 run particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0 10
