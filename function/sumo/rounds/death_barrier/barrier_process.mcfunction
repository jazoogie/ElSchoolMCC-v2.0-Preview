# store the player's current y level
execute store result score $y_track sumo_data run data get entity @s Pos[1]

# player is below death barrier
execute if score $y_track sumo_data < $death_barrier_y sumo_data run function minecraft:sumo/rounds/death_barrier/barrier_safe

# # player is above death barrier
execute if score $y_track sumo_data >= $death_barrier_y sumo_data run function minecraft:sumo/rounds/death_barrier/barrier_warn