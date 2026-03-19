schedule function minecraft:sumo/rounds/death_barrier/barrier_descend 5s

# Decrement the death barrier
scoreboard players remove $death_barrier_y sumo_data 1

# Sound Fx
execute if score $map sumo_data matches 1 run playsound minecraft:block.note_block.bass player @a 518.5 38 -499.5 3 0.5
execute if score $map sumo_data matches 2 run playsound minecraft:block.note_block.bass player @a 698.5 28 -804.5 3 0.5
execute if score $map sumo_data matches 3 run playsound minecraft:block.note_block.bass player @a 866.5 42 -1107.5 3 0.5
execute if score $map sumo_data matches 4 run playsound minecraft:block.note_block.bass player @a 580.5 35 -1366.5 3 0.5
execute if score $map sumo_data matches 5 run playsound minecraft:block.note_block.bass player @a 275.5 47 -1648.5 3 0.5