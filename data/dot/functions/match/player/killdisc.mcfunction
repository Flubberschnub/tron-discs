##killdisc match
scoreboard players operation IDMatcher DiscID = @s DiscID
execute as @e if score @s DiscID = IDMatcher DiscID run tag @s add matchedid
kill @e[tag=throwndisc,tag=matchedid]
tag @e[tag=matchedid] remove matchedid
scoreboard players reset IDMatcher DiscID
