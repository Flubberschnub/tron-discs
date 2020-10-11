##actual putting on head
execute unless score @s circuitcolor matches 2.. run replaceitem entity @s armor.head minecraft:carrot_on_a_stick{display:{Name:'{"text":"[Back-Mounted Disc]","color":"dark_gray","italic":false}'},headdisc:1,CustomModelData:993}
replaceitem entity @s[scores={circuitcolor=2}] armor.head minecraft:carrot_on_a_stick{display:{Name:'{"text":"[Back-Mounted Disc]","color":"dark_gray","italic":false}'},headdisc:1,CustomModelData:2993}
