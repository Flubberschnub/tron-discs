scoreboard players add @s bounceTimes 1

function dot:library/motion/alt/bouncex

execute at @s[scores={bounceTimes=3..}] facing entity @a[tag=matchedid,limit=1] eyes run tp @s ~ ~ ~ ~ ~

execute at @s run playsound disc.bounce master @a[distance=..30] ~ ~ ~ 1

tag @s remove bouncing
