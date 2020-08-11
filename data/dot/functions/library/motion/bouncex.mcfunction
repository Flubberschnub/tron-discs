##bouncex
execute store result score @s discvectorx run data get entity @s Motion[0] -1000
execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s discvectorx
