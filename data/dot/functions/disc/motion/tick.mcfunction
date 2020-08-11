##motion tick

##reset y motion
#data modify entity @s Motion.[1] set value 0d

##bounce
execute at @s run function dot:disc/bounce/tick

##disc toward rotation
function dot:library/motion/towardrotation

##disc velocity
scoreboard players operation @s aestd.math.in = @s discvelocity
#execute unless entity @s[nbt={OnGround:1b}] run function aestd1:entity/set_motion_magnitude
function dot:library/motion/magnitude

##velocity
function dot:disc/motion/drag
