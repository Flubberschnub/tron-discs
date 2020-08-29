##drop self
execute at @s as @a[tag=matchedid] run function dot:disc/giveactive

tag @s add dropped

tag @a[tag=matchedid] remove uniquediscid

kill @s
