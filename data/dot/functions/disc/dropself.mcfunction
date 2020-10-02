##drop self
execute at @s as @a[tag=matchedid] run function dot:disc/catch

tag @s add dropped

tag @a[tag=matchedid] remove uniquediscid

kill @s
