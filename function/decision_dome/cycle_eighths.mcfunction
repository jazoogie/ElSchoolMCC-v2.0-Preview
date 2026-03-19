# Loop (will be cancelled on piston extension)
schedule function minecraft:decision_dome/cycle_eighths 4t

# Increment $cycle_16
scoreboard players add $cycle_16 d_dome_data 1
# Loop $cycle_16 from 1 - 16
execute if score $cycle_16 d_dome_data matches 17 run scoreboard players set $cycle_16 d_dome_data 1

# Increment $cycle_4
scoreboard players add $cycle_4 d_dome_data 1
# Loop $cycle_4 from 1 - 4
execute if score $cycle_4 d_dome_data matches 5 run scoreboard players set $cycle_4 d_dome_data 1
# If $cycle_4 is 1, play SFX
execute if score $cycle_4 d_dome_data matches 1 run playsound block.note_block.bit voice @a 0.5 79 300.5 1.4

# Flash eighths
# Quadrant 1
execute if score $cycle_16 d_dome_data matches 1 run fill -1 77 301 -9 77 309 black_concrete replace light_gray_concrete
execute if score $cycle_16 d_dome_data matches 2 run fill -1 77 301 -9 77 309 light_gray_concrete replace black_concrete
execute if score $cycle_16 d_dome_data matches 3 run fill -1 77 301 -9 77 309 black_concrete replace white_concrete
execute if score $cycle_16 d_dome_data matches 4 run fill -1 77 301 -9 77 309 white_concrete replace black_concrete

# Quadrant 2
execute if score $cycle_16 d_dome_data matches 5 run fill -1 77 299 -9 77 291 black_concrete replace light_gray_concrete
execute if score $cycle_16 d_dome_data matches 6 run fill -1 77 299 -9 77 291 light_gray_concrete replace black_concrete
execute if score $cycle_16 d_dome_data matches 7 run fill -1 77 299 -9 77 291 black_concrete replace white_concrete
execute if score $cycle_16 d_dome_data matches 8 run fill -1 77 299 -9 77 291 white_concrete replace black_concrete

# Quadrant 3
execute if score $cycle_16 d_dome_data matches 9 run fill 1 77 299 9 77 291 black_concrete replace light_gray_concrete
execute if score $cycle_16 d_dome_data matches 10 run fill 1 77 299 9 77 291 light_gray_concrete replace black_concrete
execute if score $cycle_16 d_dome_data matches 11 run fill 1 77 299 9 77 291 black_concrete replace white_concrete
execute if score $cycle_16 d_dome_data matches 12 run fill 1 77 299 9 77 291 white_concrete replace black_concrete

# Quadrant 4
execute if score $cycle_16 d_dome_data matches 13 run fill 1 77 301 9 77 309 black_concrete replace light_gray_concrete
execute if score $cycle_16 d_dome_data matches 14 run fill 1 77 301 9 77 309 light_gray_concrete replace black_concrete
execute if score $cycle_16 d_dome_data matches 15 run fill 1 77 301 9 77 309 black_concrete replace white_concrete
execute if score $cycle_16 d_dome_data matches 16 run fill 1 77 301 9 77 309 white_concrete replace black_concrete