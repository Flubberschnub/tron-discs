scoreboard players add IDTester DiscID 1
execute as @a[scores={DiscID=1..}] if score @s DiscID = IDTester DiscID run function dot:id/findunusedid
