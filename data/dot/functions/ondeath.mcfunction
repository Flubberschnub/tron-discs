##ondeath
scoreboard players reset @s ThrownDeaded
execute store result score Temp Constant run gamerule keepInventory

execute if score Temp Constant matches 1 unless score @s circuitcolor matches 2.. run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Identity Disc","color":"gray","bold":true,"italic":false}',Lore:['{"text":"A disc that stores","color":"dark_gray"}','{"text":"the memories of a program.","color":"dark_gray"}']},HideFlags:63,Unbreakable:1b,CustomModelData:99,disc:1,activated:0,color:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;-832210119,-259766934,-1219046730,-1143504729]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID:[I;1667580869,-344963044,-1435523797,-1616899539]}]}

execute if score Temp Constant matches 1 if score @s circuitcolor matches 2 run give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Identity Disc","color":"gray","bold":true,"italic":false}',Lore:['{"text":"A disc that stores","color":"dark_gray"}','{"text":"the memories of a program.","color":"dark_gray"}']},HideFlags:63,Unbreakable:1b,CustomModelData:299,disc:1,activated:0,color:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;-832210119,-259766934,-1219046730,-1143504729]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID:[I;1667580869,-344963044,-1435523797,-1616899539]}]}

##kill old disc
execute as @s if score Temp Constant matches 1 run function dot:match/player/killdisc


scoreboard players reset Temp Constant
