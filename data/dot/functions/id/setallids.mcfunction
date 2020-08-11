##setallids
execute as @a[predicate=dot:dot/holdingdisc,limit=1] unless score AllUnique DiscID matches 1 run function dot:id/testuniquediscid
