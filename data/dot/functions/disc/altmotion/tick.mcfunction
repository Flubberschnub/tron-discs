##motion tick

##hit entity
execute if entity @e[tag=!matchedid,type=#lj:livingthings,distance=..1.5] at @s run function dot:disc/hit

##reset y motion
#data modify entity @s Motion.[1] set value 0d

##bounce
execute at @s run function dot:disc/altbounce/tick

##disc toward rotation and velocity
execute at @s run function dot:library/position/initialdir

##actually moving forward
function dot:disc/altmotion/move

##velocity
#function dot:disc/altmotion/drag
