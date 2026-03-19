# si_side = 'summon item side' - on the side of the arena

# Generate a number between 1 and 100 - this is used to assign rarity to items
execute store result score $random battle_box_arena run random value 1..100

#> Items
# Healing potion - 30%
execute if score $random battle_box_arena matches 1..30 run summon item ~ ~ ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:healing"}}}}

# Poison potion - 25%
execute if score $random battle_box_arena matches 31..55 run summon item ~ ~ ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:poison",amplifier:0,duration:180}]},"minecraft:custom_name":{"italic":false,"text":"Splash Potion of Poison"}}}}

# Harming potion - 20%
execute if score $random battle_box_arena matches 56..75 run summon item ~ ~ ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:harming"}}}}

# Crossbow - 10%
execute if score $random battle_box_arena matches 76..85 run summon item ~ ~ ~ {Item:{id:"minecraft:crossbow",count:1,components:{"minecraft:charged_projectiles":[{id:"minecraft:arrow",count:1}],"minecraft:unbreakable":{}}}}

# Fire aspect gold sword - 10%
execute if score $random battle_box_arena matches 86..95 run summon item ~ ~ ~ {Item:{id:"minecraft:golden_sword",count:1,components:{"minecraft:enchantments":{"fire_aspect":1,"sharpness":1},"minecraft:unbreakable":{}}}}

# Totem of undying - 5%
execute if score $random battle_box_arena matches 96..100 run summon item ~ ~ ~ {Item:{id:"minecraft:totem_of_undying",count:1}}