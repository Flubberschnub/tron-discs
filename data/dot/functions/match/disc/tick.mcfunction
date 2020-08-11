scoreboard players operation IDMatcher DiscID = @s DiscID
execute as @e if score @s DiscID = IDMatcher DiscID run tag @s add matchedid
execute as @s run function dot:disc/tick
tag @e[tag=matchedid] remove matchedid
scoreboard players reset IDMatcher DiscID
