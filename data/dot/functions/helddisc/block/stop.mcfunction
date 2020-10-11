##stop block
tag @s remove blocking

##block held disc model
scoreboard players set @s aestd.item.slot -1

execute unless score @s circuitcolor matches 2.. run scoreboard players set @s aestd.item.cmd 991
execute if score @s circuitcolor matches 2 run scoreboard players set @s aestd.item.cmd 2991

function aestd1:item/set_custom_model_data

##offhand too
scoreboard players set @s aestd.item.slot -2
function aestd1:item/set_custom_model_data

scoreboard players reset @s aestd.item.slot
scoreboard players reset @s aestd.item.cmd
