scoreboard players add $map sumo_data 1

execute if score $map sumo_data matches ..5 run function minecraft:sumo/maps/map_start
execute if score $map sumo_data matches 6 run function minecraft:sumo/sumo_end