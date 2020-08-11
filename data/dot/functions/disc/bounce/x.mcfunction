function dot:library/motion/bouncex

execute at @s run playsound disc.bounce master @a[distance=..30] ~ ~ ~ 1

tag @s remove bouncing

##rotation from motion
execute at @s run function dot:library/position/rot_from_motion/rotation_from_motion
