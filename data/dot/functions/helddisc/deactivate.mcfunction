##activate held disc
scoreboard players set @s aestd.item.slot -1
scoreboard players set @s aestd.item.slot2 -2
function aestd1:item/swap
scoreboard players set @s aestd.item.slot -1
scoreboard players set @s aestd.item.cmd 99
data remove storage aestd:input nbt
data modify storage aestd:input nbt.activated set value 0
function aestd1:item/set_custom_model_data
function aestd1:item/merge_nbt
scoreboard players reset @s aestd.item.slot
scoreboard players reset @s aestd.item.slot2
scoreboard players reset @s aestd.item.cmd
execute at @s run playsound disc.deactivate master @a[distance=..7] ~ ~ ~
