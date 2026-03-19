# Fill wool square with white wool
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 white_wool

#> Summon loot items
#  - each area uses a different item loot pool

# 4 main area items - left and right below the spawn area
execute positioned ~-13.50 ~5.20 ~5.50 run function minecraft:battle_box/rounds/arena_setup/si_main
execute positioned ~-13.50 ~5.20 ~-5.50 run function minecraft:battle_box/rounds/arena_setup/si_main
execute positioned ~13.50 ~5.20 ~5.50 run function minecraft:battle_box/rounds/arena_setup/si_main
execute positioned ~13.50 ~5.20 ~-5.50 run function minecraft:battle_box/rounds/arena_setup/si_main

# 2 side area items - on the upper areas on the sides of the arena
execute positioned ~ ~7 ~9 run function minecraft:battle_box/rounds/arena_setup/si_side
execute positioned ~ ~7 ~-9 run function minecraft:battle_box/rounds/arena_setup/si_side


# Move marker over to next arena
tp @s ~ ~ ~-48