# Clear tnt of inventory
clear @s tnt

# Set tag_data score to 0
scoreboard players set @s tag_data 0

# Remove potion effects
effect clear @s jump_boost
effect clear @s speed
# Add temporary speed for getaway
effect give @s speed 5 0 true
effect give @s jump_boost 5 0 true

# Give temporary immunity
scoreboard players set @s tag_immunity 10

# Glowing
effect give @s glowing infinite 0 true

# Sound
playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2