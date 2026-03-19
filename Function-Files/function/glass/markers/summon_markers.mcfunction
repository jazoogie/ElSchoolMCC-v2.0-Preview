# This function is being run as and at the master marker.

# Generate glass platforms (cool that it can do it)
fill ~ ~-2 ~ ~-1 ~-2 ~-1 glass
fill ~4 ~-2 ~ ~3 ~-2 ~-1 glass

# Safe marker
summon armor_stand ~ ~-1 ~ {Marker:1b, Invisible:1b, Tags:["safe", "glass_marker"]}
# First safe marker has glass_data score of 0 !
scoreboard players operation @e[type=armor_stand, tag=safe, distance=..2] glass_data = $m_counter glass_data

# UNsafe marker - SHOW ARMS
summon armor_stand ~ ~-1 ~ {ShowArms:1b, Marker:1b, Invisible:1b, Tags:["unsafe", "glass_marker"]}

# Tp one armor stand to the right, at random
execute as @e[type=armor_stand, tag=glass_marker, tag=!master, distance=..2, sort=random, limit=1] at @s run tp @s ~4 ~ ~

# Increment the counter
scoreboard players add $m_counter glass_data 1
# Move the master marker
tp @s ~ ~ ~-4

# Repeat for however many platforms
# 'matches ..(ONE LESS than number of platforms)'
execute at @s if score $m_counter glass_data matches ..15 run function minecraft:glass/markers/summon_markers