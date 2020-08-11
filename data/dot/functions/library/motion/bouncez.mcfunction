##bouncex
execute store result score @s discvectorz run data get entity @s Motion[2] -1000
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s discvectorz
