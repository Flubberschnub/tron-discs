##color throw
execute unless score @s circuitcolor matches 2.. run summon armor_stand ~ ~1 ~ {CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Silent:1b,PersistenceRequired:1b,Tags:["throwndisc","justthrown"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:991}}],CustomName:'{"text":"throwndisc"}'}

execute if score @s circuitcolor matches 2 run summon armor_stand ~ ~1 ~ {CustomNameVisible:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Silent:1b,PersistenceRequired:1b,Tags:["throwndisc","justthrown"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:2991}}],CustomName:'{"text":"throwndisc"}'}

data merge entity @e[tag=justthrown,limit=1] {Pose:{Head:[0.001f,0.001f,0.001f]}}
