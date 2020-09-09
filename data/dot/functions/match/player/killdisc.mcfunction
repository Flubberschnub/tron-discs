##killdisc match
scoreboard players operation IDMatcher DiscID = @s DiscID
execute as @e if score @s DiscID = IDMatcher DiscID run tag @s add matchedid
execute store result score tempDiscNumber Constant run execute if entity @e[tag=throwndisc,tag=matchedid]
execute if entity @e[tag=throwndisc,tag=matchedid] run function dot:disc/deathreturn
scoreboard players reset tempDiscNumber Constant
kill @e[tag=throwndisc,tag=matchedid]
tag @e[tag=matchedid] remove matchedid
scoreboard players reset IDMatcher DiscID
