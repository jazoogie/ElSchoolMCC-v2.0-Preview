# Tp the player to the default spawn location - to be moved accordingly
tp @s -620.50 118.06 556.50 90 0

# Move the player to the other side if required
execute if score @s battle_box_side matches 2 at @s run tp @s ~-26 ~ ~ -90 0

# Reset bba_tracker - 'battle box arena tracker'
scoreboard players set $bba_tracker battle_box_arena 1
# Move player to their appropriate arena
execute if score @s battle_box_arena matches 2..4 at @s run function minecraft:battle_box/rounds/player_tp/tp_recur