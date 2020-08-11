##setdiscid
data remove storage aestd:input nbt
execute store result storage aestd:input nbt.DiscID int 1 run scoreboard players get IDTester DiscID
scoreboard players set @s aestd.item.slot -1
function aestd1:item/merge_nbt
tag @s add uniquediscid
scoreboard players reset IDTester DiscID
