# Potion effects
effect give @s saturation infinite 255 true
effect give @s regeneration infinite 255 true

# Clear inventory
clear @s

# Set player status to dead (0)
scoreboard players set @s battle_box_status 0

# Move player back to their arena
function minecraft:battle_box/rounds/player_tp/tp_init