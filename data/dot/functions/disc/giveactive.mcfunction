##give disc
execute unless score @s circuitcolor matches 2.. run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Identity Disc","color":"gray","bold":true,"italic":false}',Lore:['{"text":"A disc that stores","color":"dark_gray"}','{"text":"the memories of a program.","color":"dark_gray"}']},HideFlags:63,Unbreakable:1b,CustomModelData:991,disc:1,activated:1,color:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;-832210119,-259766934,-1219046730,-1143504729]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID:[I;1667580869,-344963044,-1435523797,-1616899539]}]}}}

execute if score @s circuitcolor matches 2 run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Identity Disc","color":"gray","bold":true,"italic":false}',Lore:['{"text":"A disc that stores","color":"dark_gray"}','{"text":"the memories of a program.","color":"dark_gray"}']},HideFlags:63,Unbreakable:1b,CustomModelData:2991,disc:1,activated:1,color:2,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;-832210119,-259766934,-1219046730,-1143504729]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID:[I;1667580869,-344963044,-1435523797,-1616899539]}]}}}


scoreboard players set @s humTimer 1200

tag @s add dot.catchdisc
