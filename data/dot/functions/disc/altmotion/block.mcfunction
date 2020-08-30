##block
execute at @s rotated as @a[distance=..2,tag=blocking,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ ~
#scoreboard players set @s discLife 40
