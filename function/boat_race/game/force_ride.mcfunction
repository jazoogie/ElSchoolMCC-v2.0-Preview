# Increment ride track
scoreboard players add $ride_track boat_race_data 1

# Find the matching player
execute as @a[tag=player] if score @s boat_race_data = $ride_track boat_race_data run tag @s add match
# Force the matching player to ride their respective boat
execute as @e[type=cherry_boat, tag=boat_race] if score @s boat_race_data = $ride_track boat_race_data run ride @p[tag=player, tag=match] mount @s

tag @a[tag=player] remove match

# Run iteratively for every player
execute if score $ride_track boat_race_data < $total_players boat_race_data run function minecraft:boat_race/game/force_ride