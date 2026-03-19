# Increment this player's glass_data tracker (so they don't get rewarded multiple times)
scoreboard players add @s glass_data 1

# Effects
execute at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2
execute at @s run particle minecraft:totem_of_undying ^ ^1 ^1 0.1 0.1 0.1 1 25 force

# Add score
scoreboard players add @s scores 5

# Reset the timer for the forced player if they moved
execute if entity @s[scores={glass_force=1}] run function minecraft:glass/force_move/set_timer