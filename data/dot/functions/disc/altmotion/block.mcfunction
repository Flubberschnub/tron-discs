##block
execute at @s rotated as @a[distance=..2,tag=blocking,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ ~
execute at @s run playsound disc.bounce master @a[distance=..20] ~ ~ ~
#scoreboard players set @s discLife 40
