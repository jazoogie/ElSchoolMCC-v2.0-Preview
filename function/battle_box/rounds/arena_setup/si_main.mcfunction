# si_side = 'summon item side' - on the side of the arena

# Generate a number between 1 and 100 - this is used to assign rarity to items
execute store result score $random battle_box_arena run random value 1..100

#> Items
# Wooden axe - 30%
execute if score $random battle_box_arena matches 1..30 run summon item ~ ~ ~ {Item:{id:"minecraft:wooden_axe",count:1,components:{"minecraft:unbreakable":{}}}}

# Chainmail chestplate - 30%
execute if score $random battle_box_arena matches 31..60 run summon item ~ ~ ~ {Item:{id:"minecraft:chainmail_chestplate",count:1,components:{"minecraft:unbreakable":{}}}}

# Poison potion - 15%
execute if score $random battle_box_arena matches 61..75 run summon item ~ ~ ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:poison",amplifier:0,duration:180}]},"minecraft:custom_name":{"italic":false,"text":"Splash Potion of Poison"}}}}

# Harming potion - 15%
execute if score $random battle_box_arena matches 76..90 run summon item ~ ~ ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:harming"}}}}

# Healing potion - 10%
execute if score $random battle_box_arena matches 91..100 run summon item ~ ~ ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:healing"}}}}