# Respawn in sky
execute if score $map one_shot_data matches 1 run spreadplayers -1198 -1 0 31 false @e[type=armor_stand, tag=one_shot, tag=respawn_location, limit=1]
execute if score $map one_shot_data matches 2 run spreadplayers -603 2 0 48 false @e[type=armor_stand, tag=one_shot, tag=respawn_location, limit=1]
execute at @e[type=armor_stand, tag=one_shot, tag=respawn_location, limit=1] run tp @s ~ ~-4 ~

# Spawn protection
effect give @s resistance 4 255 true
effect clear @s glowing