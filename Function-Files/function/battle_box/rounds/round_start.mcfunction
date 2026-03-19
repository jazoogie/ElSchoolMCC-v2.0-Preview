# Enable pvp
gamerule pvp true

# Clear player potion effects
effect clear @a[tag=player,scores={battle_box_status=1}]

# Reset player death status
scoreboard players set @a[tag=player] died 0
# Reset player kill status
scoreboard players set @a[tag=player] killed_player 0


# Give all players mining fatigue
effect give @a[tag=player,scores={battle_box_status=1}] mining_fatigue 10 4 true

# Destroy floor - let players in arena
# Side 1
fill -622 117 559 -620 117 409 air replace warped_slab destroy
# Side 2
fill -646 117 559 -648 117 409 air replace warped_slab destroy

#> Player items
# Wooden sword
item replace entity @a[tag=player,scores={battle_box_status=1}] container.0 with wooden_sword[unbreakable={}]
# Shears
item replace entity @a[tag=player,scores={battle_box_status=1}] container.1 with shears[unbreakable={},can_break=[{blocks:"white_wool"},{blocks:"red_wool"},{blocks:"orange_wool"},{blocks:"yellow_wool"},{blocks:"lime_wool"},{blocks:"cyan_wool"},{blocks:"blue_wool"},{blocks:"purple_wool"},{blocks:"pink_wool"}],enchantments={"efficiency":2}]
# Team-colored wool
item replace entity @a[tag=player,scores={battle_box_status=1},team=red] weapon.offhand with red_wool[can_place_on=[{blocks:"gray_concrete"}]] 64
item replace entity @a[tag=player,scores={battle_box_status=1},team=orange] weapon.offhand with orange_wool[can_place_on=[{blocks:"gray_concrete"}]] 64
item replace entity @a[tag=player,scores={battle_box_status=1},team=yellow] weapon.offhand with yellow_wool[can_place_on=[{blocks:"gray_concrete"}]] 64
item replace entity @a[tag=player,scores={battle_box_status=1},team=lime] weapon.offhand with lime_wool[can_place_on=[{blocks:"gray_concrete"}]] 64
item replace entity @a[tag=player,scores={battle_box_status=1},team=cyan] weapon.offhand with cyan_wool[can_place_on=[{blocks:"gray_concrete"}]] 64
item replace entity @a[tag=player,scores={battle_box_status=1},team=blue] weapon.offhand with blue_wool[can_place_on=[{blocks:"gray_concrete"}]] 64
item replace entity @a[tag=player,scores={battle_box_status=1},team=purple] weapon.offhand with purple_wool[can_place_on=[{blocks:"gray_concrete"}]] 64
item replace entity @a[tag=player,scores={battle_box_status=1},team=pink] weapon.offhand with pink_wool[can_place_on=[{blocks:"gray_concrete"}]] 64

# Schedule delayed re-filling of floors and moving players that haven't exited their lobby areas
schedule function minecraft:battle_box/rounds/delayed_fill 5s

# Begin game loop
function minecraft:battle_box/rounds/round_loop