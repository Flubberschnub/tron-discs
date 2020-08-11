##rotation from motion
tag @s add tempmarker
kill @e[tag=dot.marker]
execute at @s run summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Age:1,Tags:["dot.marker"]}
execute as @e[tag=dot.marker] run function dot:library/position/rot_from_motion/marker
kill @e[tag=dot.marker]
tag @s remove tempmarker
