execute store result score tempPosX Constant run data get entity @s Pos[0]
execute store result score tempPosY Constant run data get entity @s Pos[1]
execute store result score tempPosZ Constant run data get entity @s Pos[2]

execute store result score tempPosX2 Constant run data get entity @e[tag=tempmarker,limit=1] Motion[0] 100
execute store result score tempPosY2 Constant run data get entity @e[tag=tempmarker,limit=1] Motion[1] 100
execute store result score tempPosZ2 Constant run data get entity @e[tag=tempmarker,limit=1] Motion[2] 100

scoreboard players operation tempPosX Constant += tempPosX2 Constant
scoreboard players operation tempPosY Constant += tempPosY2 Constant
scoreboard players operation tempPosZ Constant += tempPosZ2 Constant

execute store result entity @s Pos[0] double 1 run scoreboard players get tempPosX Constant
execute store result entity @s Pos[1] double 1 run scoreboard players get tempPosY Constant
execute store result entity @s Pos[2] double 1 run scoreboard players get tempPosZ Constant

execute as @e[tag=tempmarker] at @s facing entity @e[tag=dot.marker,limit=1] feet run tp @s ~ ~ ~ ~ ~
kill @s

scoreboard players reset tempPosX Constant
scoreboard players reset tempPosY Constant
scoreboard players reset tempPosZ Constant
scoreboard players reset tempPosX2 Constant
scoreboard players reset tempPosY2 Constant
scoreboard players reset tempPosZ2 Constant
