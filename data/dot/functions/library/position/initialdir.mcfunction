##initial direction
execute at @s positioned ^ ^ ^5 run summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Age:1,Tags:["dot.marker"]}

##get 3 positions (x1000)
execute store result score tempPosx Constant run data get entity @e[tag=dot.marker,limit=1] Pos[0] 1000
execute store result score tempPosy Constant run data get entity @e[tag=dot.marker,limit=1] Pos[1] 1000
execute store result score tempPosz Constant run data get entity @e[tag=dot.marker,limit=1] Pos[2] 1000

execute store result score tempPosx2 Constant run data get entity @s Pos[0] 1000
execute store result score tempPosy2 Constant run data get entity @s Pos[1] 1000
execute store result score tempPosz2 Constant run data get entity @s Pos[2] 1000

##subtract 3 positions
scoreboard players operation tempPosx Constant -= tempPosx2 Constant
scoreboard players operation tempPosy Constant -= tempPosy2 Constant
scoreboard players operation tempPosz Constant -= tempPosz2 Constant

##divide by 1000
#scoreboard players operation tempPosx Constant /= 1000 Constant
#scoreboard players operation tempPosy Constant /= 1000 Constant
#scoreboard players operation tempPosz Constant /= 1000 Constant

##set vector magnitude
scoreboard players operation @s aestd.math.in = @s discvelocity
#scoreboard players operation @s aestd.math.in *= 1000 Constant
scoreboard players operation @s aestd.vector.x = tempPosx Constant
scoreboard players operation @s aestd.vector.y = tempPosy Constant
scoreboard players operation @s aestd.vector.z = tempPosz Constant
function aestd1:math/set_vector_magnitude

##store in disc (x1000)
scoreboard players operation @s discvectorx = @s aestd.vector.x
scoreboard players operation @s discvectory = @s aestd.vector.y
scoreboard players operation @s discvectorz = @s aestd.vector.z

##clean up
kill @e[tag=dot.marker]
scoreboard players reset tempPosx Constant
scoreboard players reset tempPosy Constant
scoreboard players reset tempPosz Constant
scoreboard players reset tempPosx2 Constant
scoreboard players reset tempPosy2 Constant
scoreboard players reset tempPosz2 Constant
