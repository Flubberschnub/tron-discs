##drop self
execute unless score @s circuitcolor matches 2.. at @s run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Identity Disc","color":"gray","bold":true,"italic":false}',Lore:['{"text":"A disc that stores","color":"dark_gray"}','{"text":"the memories of a program.","color":"dark_gray"}']},HideFlags:63,Unbreakable:1b,CustomModelData:991,disc:1,activated:1,color:1}}}
execute if score @s circuitcolor matches 2 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Identity Disc","color":"gray","bold":true,"italic":false}',Lore:['{"text":"A disc that stores","color":"dark_gray"}','{"text":"the memories of a program.","color":"dark_gray"}']},HideFlags:63,Unbreakable:1b,CustomModelData:991,disc:1,activated:1,color:2}}}

kill @s
