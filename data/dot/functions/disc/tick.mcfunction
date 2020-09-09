##disc tick

##disc life
scoreboard players add @s discLife 1

execute if score @s discLife matches 40.. at @s facing entity @a[tag=matchedid,limit=1] eyes run tp @s ~ ~ ~ ~ ~

execute if score @s discLife matches 100.. run function dot:disc/dropself
execute if score @s discLife matches 10.. at @s[tag=!dropped] positioned ~ ~-1.5 ~ if entity @a[tag=matchedid,distance=..1] run function dot:disc/dropself
execute if score @s discLife matches 10.. at @s[tag=!dropped] if entity @a[tag=matchedid,distance=..1] run function dot:disc/dropself

#execute as @s at @s if block ~ ~-0.2 ~ #dot:passthrough run function dot:disc/motion/tick
##six times motion for precision
execute as @s at @s if block ~ ~-0.01 ~ #dot:passthrough run function dot:disc/altmotion/tick
execute as @s at @s if block ~ ~-0.01 ~ #dot:passthrough run function dot:disc/altmotion/tick
execute as @s at @s if block ~ ~-0.01 ~ #dot:passthrough run function dot:disc/altmotion/tick
execute as @s at @s if block ~ ~-0.01 ~ #dot:passthrough run function dot:disc/altmotion/tick
execute as @s at @s if block ~ ~-0.01 ~ #dot:passthrough run function dot:disc/altmotion/tick
execute as @s at @s if block ~ ~-0.01 ~ #dot:passthrough run function dot:disc/altmotion/tick

##store facing rotation
#data merge entity @s {Pose:{Head:[0.001f,0.00f,0.00f]}}
execute store result score @s discXAngle run data get entity @s Rotation[1] 1
execute store result entity @s Pose.Head.[0] float .001 run data get entity @s Rotation[1] 1000
#execute store result entity @s Pose.Head.[1] float .001 run data get entity @s Rotation[0] -1000

##slight aim assist toward entities
#execute at @s facing entity @e[tag=!matchedid,distance=..10,type=#lj:livingthings,type=!player,limit=1,sort=nearest] feet run tp ^ ^ ^0.02

#execute at @s positioned ^ ^ ^5 run tp @e[tag=teststand] ~ ~ ~
