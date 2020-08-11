##alternate motion

##store current position
execute store result score tempPosx Constant run data get entity @s Pos[0] 1000
execute store result score tempPosy Constant run data get entity @s Pos[1] 1000
execute store result score tempPosz Constant run data get entity @s Pos[2] 1000

##addition
scoreboard players operation tempPosx Constant += @s discvectorx
scoreboard players operation tempPosy Constant += @s discvectory
scoreboard players operation tempPosz Constant += @s discvectorz

##store (/1000)
execute store result entity @s Pos[0] double 0.001 run scoreboard players get tempPosx Constant
execute store result entity @s Pos[1] double 0.001 run scoreboard players get tempPosy Constant
execute store result entity @s Pos[2] double 0.001 run scoreboard players get tempPosz Constant

##clean up
scoreboard players reset tempPosx Constant
scoreboard players reset tempPosy Constant
scoreboard players reset tempPosz Constant
