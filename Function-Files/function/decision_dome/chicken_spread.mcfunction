# Randomly move the chicken
spreadplayers 0.5 300.5 0 7 under 79 false @s

# If still on an invalid spot, move
execute at @s if block ~ ~-1 ~ red_concrete run function minecraft:decision_dome/chicken_spread