##activate held disc
#scoreboard players set @s aestd.item.slot -1
#scoreboard players set @s aestd.item.slot2 -2
#function aestd1:item/swap

scoreboard players reset @s deactivateDisc
execute at @s run tp @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{disc:1,activated:1}}}] ~ ~-100 ~
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{disc:1,activated:1}}}]

#scoreboard players set @s aestd.item.slot -1

execute at @s run function dot:disc/give

#execute unless score @s circuitcolor matches 2.. run scoreboard players set @s aestd.item.cmd 99
#execute if score @s circuitcolor matches 2 run scoreboard players set @s aestd.item.cmd 299

#data remove storage aestd:input nbt
#data modify storage aestd:input nbt.activated set value 0
#function aestd1:item/set_custom_model_data
#function aestd1:item/merge_nbt
#scoreboard players reset @s aestd.item.slot
#scoreboard players reset @s aestd.item.slot2
#scoreboard players reset @s aestd.item.cmd
execute at @s run playsound disc.deactivate master @a[distance=..7] ~ ~ ~
stopsound @s master disc.hum
