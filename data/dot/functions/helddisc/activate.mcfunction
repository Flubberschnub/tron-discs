##activate held disc
scoreboard players set @s aestd.item.slot -1
scoreboard players set @s aestd.item.slot2 -2
function aestd1:item/swap
scoreboard players set @s aestd.item.slot -1

execute unless score @s circuitcolor matches 2.. run scoreboard players set @s aestd.item.cmd 991
execute if score @s circuitcolor matches 2 run scoreboard players set @s aestd.item.cmd 2991

data remove storage aestd:input nbt
data modify storage aestd:input nbt.activated set value 1
function aestd1:item/set_custom_model_data
function aestd1:item/merge_nbt
scoreboard players reset @s aestd.item.slot
scoreboard players reset @s aestd.item.slot2
scoreboard players reset @s aestd.item.cmd
execute at @s run playsound disc.activate master @a[distance=..7] ~ ~ ~
scoreboard players set @s humTimer 200
