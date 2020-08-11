##throwndisc match
scoreboard players operation IDMatcher DiscID = @s DiscID
execute as @e if score @s DiscID = IDMatcher DiscID run tag @s add matchedid
execute unless entity @e[tag=throwndisc,tag=matchedid] run tag @s remove discthrown
tag @e[tag=matchedid] remove matchedid
scoreboard players reset IDMatcher DiscID
