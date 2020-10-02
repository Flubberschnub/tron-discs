##catch disc

##mainhand empty
execute as @s[tag=!dot.catchdisc] if predicate dot:dot/emptymainhand run function dot:disc/replaceactive

##offhand empty
execute as @s[tag=!dot.catchdisc] if predicate dot:dot/emptyoffhand run function dot:disc/replaceactiveoff

##mainhand empty
execute as @s[tag=!dot.catchdisc] run function dot:disc/giveactive


##remove catch tag
tag @s remove dot.catchdisc
