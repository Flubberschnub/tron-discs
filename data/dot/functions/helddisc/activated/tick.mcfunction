##holding activated disc
scoreboard players operation @s humTimer += systick value
execute as @s[scores={humTimer=1200..}] at @s run playsound disc.hum master @s
scoreboard players reset @s[scores={humTimer=1200..}] humTimer
