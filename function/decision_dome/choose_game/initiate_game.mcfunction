# Retract pistons
fill 9 76 309 -9 76 291 glass replace redstone_block

# 'Silently' kill decision dome chickens
execute as @e[type=chicken, tag=decision_dome] run function minecraft:decision_dome/egg_throw/silent_kill

# Stop music
stopsound @a voice

# Increment the number of games played so far
scoreboard players add $games_played d_dome_data 1

# Start minigame
execute if score $mg_id d_dome_mg_id matches 1 run function minecraft:sumo/sumo_start
execute if score $mg_id d_dome_mg_id matches 2 run function minecraft:parkour/parkour_start
execute if score $mg_id d_dome_mg_id matches 3 run function minecraft:spleef/spleef_start
execute if score $mg_id d_dome_mg_id matches 4 run function minecraft:tag/tag_start
execute if score $mg_id d_dome_mg_id matches 5 run function minecraft:battle_box/battle_box_start
execute if score $mg_id d_dome_mg_id matches 6 run function minecraft:one_shot/one_shot_start
execute if score $mg_id d_dome_mg_id matches 7 run function minecraft:boat_race/boat_race_start
execute if score $mg_id d_dome_mg_id matches 8 run function minecraft:glass/glass_start