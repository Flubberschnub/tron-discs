tag @e remove testid
scoreboard players reset @s DiscID
scoreboard players reset IDTester DiscID
function dot:id/findunusedid
scoreboard players operation @s DiscID = IDTester DiscID
execute as @s[tag=!uniquediscid] unless entity @e[tag=testid] if score IDTester DiscID matches 1.. run function dot:id/setdiscid
