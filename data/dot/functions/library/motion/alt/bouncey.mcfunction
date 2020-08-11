##bouncex
##reverse vector
scoreboard players operation @s discvectory *= -1 Constant

##face direction
summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Age:1,Tags:["dot.marker"]}
##store vector scores
scoreboard players operation @e[tag=dot.marker,limit=1] discvectorx = @s discvectorx
scoreboard players operation @e[tag=dot.marker,limit=1] discvectory = @s discvectory
scoreboard players operation @e[tag=dot.marker,limit=1] discvectorz = @s discvectorz
execute as @e[tag=dot.marker,limit=1] run function dot:disc/altmotion/move
execute at @s facing entity @e[tag=dot.marker,limit=1] feet run tp @s ~ ~ ~ ~ ~

##clean up
kill @e[tag=dot.marker]
