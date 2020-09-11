##tick main

##back mounting
execute as @a run function dot:backmount

##player discID
scoreboard players reset @a[predicate=!dot:dot/holdingdisc,tag=!discthrown] DiscID
tag @a[predicate=!dot:dot/holdingdisc,tag=!discthrown] remove uniquediscid

##unique discID
#execute as @a[predicated=!dot:dot/holdingdisc,predicate=!lc:lc/riding_cycle,tag=!rezzedvehicle] run tag @s remove uniqueid
execute as @a[predicate=dot:dot/holdingdisc,tag=!uniquediscid,tag=!discthrown] run function dot:id/getuniquediscid

execute as @a[predicate=dot:dot/holdingdisc,tag=!discthrown] store result score @s DiscID run data get entity @s SelectedItem.tag.DiscID 1

##activate disc
execute as @a[predicate=dot:dot/activatedisc] run function dot:helddisc/activate
execute as @a[predicate=dot:dot/deactivatedisc,tag=holdingactivedisc,tag=!blocking] run function dot:helddisc/deactivate
scoreboard players reset @a deactivateDisc

##blocking
execute as @a[predicate=dot:dot/blocking,tag=!blocking] run function dot:helddisc/block/start
execute as @a[predicate=dot:dot/blocking,tag=blocking] run function dot:helddisc/block/tick
execute as @a[predicate=!dot:dot/blocking,tag=blocking] run function dot:helddisc/block/stop

##throw
execute as @a[predicate=dot:dot/holdingactivedisc,tag=!blocking,scores={clickDisc=1..}] at @s run function dot:throw

##disc tick
execute as @e[tag=throwndisc] at @s run function dot:match/disc/tick

##reset clickDisc
scoreboard players reset @a[scores={clickDisc=1..}] clickDisc

##discthrown tag
execute as @a[tag=discthrown] at @s run function dot:match/player/throwndisc

##helddisc tick
execute as @a[predicate=dot:dot/holdingdisc] run function dot:helddisc/tick
execute as @a[predicate=!dot:dot/holdingdisc] run tag @s remove holdingactivedisc

##death event
execute as @a[tag=discthrown,scores={ThrownDeaded=1..}] run function dot:ondeath
scoreboard players reset @a ThrownDeaded
