function aestd1:entity/get_motion
scoreboard players operation @s aestd.vector.x = @s aestd.motion.x
scoreboard players operation @s aestd.vector.y = @s aestd.motion.y
scoreboard players operation @s aestd.vector.z = @s aestd.motion.z
function dot:library/motion/vectormagnitude
scoreboard players operation @s aestd.motion.x = @s aestd.vector.x
scoreboard players operation @s aestd.motion.y = @s aestd.vector.y
scoreboard players operation @s aestd.motion.z = @s aestd.vector.z
function dot:library/motion/set
