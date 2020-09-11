##mount disc on back

##detect disc in inventory
execute store result score tempDiscCount Constant run clear @s minecraft:carrot_on_a_stick{disc:1} 0
execute store result score headDiscCount Constant run clear @s minecraft:carrot_on_a_stick{headdisc:1} 0

##clears headdisc if more than one
execute if score headDiscCount Constant matches 2.. as @s run clear @s minecraft:carrot_on_a_stick{headdisc:1}

##clears headdisc if invisible
execute as @s[nbt={ActiveEffects:[{Id:14b}]}] run clear @s minecraft:carrot_on_a_stick{headdisc:1}

##puts on back if not holding disc and has disc in inventory and not wearing helmet
execute if score tempDiscCount Constant matches 1.. unless entity @s[nbt={ActiveEffects:[{Id:14b}]}] as @s[tag=!discthrown,predicate=!dot:dot/is_wearing_head_item,predicate=!dot:dot/holdingdisc] run function dot:backmount/replaceitem

##clears head disc if holding disc
execute as @s[predicate=dot:dot/holdingdisc,predicate=dot:dot/is_wearing_disc_head] run function dot:backmount/clearfakedisc



##cleanup
scoreboard players reset tempDiscCount Constant
scoreboard players reset headDiscCount Constant
