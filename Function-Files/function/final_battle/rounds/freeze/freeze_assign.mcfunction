# Temporarily select all finalists that associate with the current freeze_track ID (either team 1, team 2, ...)
execute as @a[tag=player] if score @s final_battle_data = $freeze_track final_battle_data run tag @s add freeze_selected

# Assign each freeze_selected finalist either location (fb_freeze_N) 1 or 2
tag @r[tag=player, tag=freeze_selected] add fb_freeze_1
tag @p[tag=player, tag=freeze_selected, tag=!fb_freeze_1] add fb_freeze_2

# Remove freeze_selected tag from these finalists
tag @a[tag=player] remove freeze_selected

# Increment freeze_track
scoreboard players add $freeze_track final_battle_data 1
# Recursion loop - till all top 4 teams are selected
execute if score $freeze_track final_battle_data matches 1..4 run function minecraft:final_battle/rounds/freeze/freeze_assign