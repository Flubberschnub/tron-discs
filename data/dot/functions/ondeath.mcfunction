##ondeath
scoreboard players reset @s ThrownDeaded
execute store result score Temp Constant run gamerule keepInventory

##kill old disc
execute as @s if score Temp Constant matches 1 run function dot:match/player/killdisc


scoreboard players reset Temp Constant
