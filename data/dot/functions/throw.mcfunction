##throw disc (run as player)

tag @s add discthrown

##summon disc
execute at @s run summon armor_stand ~ ~1 ~ {CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Silent:1b,PersistenceRequired:1b,Tags:["throwndisc","justthrown"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:991}}],CustomName:'{"text":"disc"}'}

##set rotation/motion just once, magnitude per tick
execute at @s anchored eyes positioned ^ ^ ^0.1 run tp @e[tag=throwndisc,tag=justthrown,limit=1] ~ ~ ~ ~ ~
#execute at @s rotated as @s as @e[tag=throwndisc,tag=justthrown,limit=1] run function dot:library/motion/towardrotation
scoreboard players operation @e[tag=throwndisc,tag=justthrown,limit=1] discvelocity = basic throwSpeed

##scores and data
#execute store result score @e[tag=justthrown] DiscID run scoreboard players get @s DiscID
scoreboard players operation @e[tag=justthrown,limit=1] DiscID = @s DiscID
scoreboard players operation @e[tag=justthrown,limit=1] circuitcolor = @s circuitcolor
tag @e[tag=justthrown] remove justthrown

##delete item
replaceitem entity @s weapon.mainhand air

##playsound
execute at @s run playsound disc.throw master @a[distance=..30] ~ ~ ~ 1
