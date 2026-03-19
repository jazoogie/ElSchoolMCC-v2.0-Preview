# Give players blindness
effect give @a[tag=player] blindness 35
effect give @a[tag=player] darkness 35

# Tp admin to track
tp @a[team=admin] -2126.50 143.00 -13.00 -90 20

# Get total players (won't change - important for force_ride)
scoreboard players set $total_players boat_race_data 0
execute as @a[tag=player] run scoreboard players add $total_players boat_race_data 1

# Assign positions
scoreboard players operation $assign_track boat_race_data = $total_players boat_race_data
scoreboard players set @a[tag=player] boat_race_data 0
scoreboard players set $alternate boat_race_data 0

# Kill previous boats - robustness
#  - includes the armor stands that disallow players from entering other players' boats
kill @e[tag=boat_race]

# Assigner marker
summon armor_stand -2111.00 134.00 -9.50 {Marker:1b, Invisible:1b, Tags:["assigner"]}
execute as @e[type=armor_stand, tag=assigner, limit=1] at @s run function minecraft:boat_race/setup/assign_positions
kill @e[type=armor_stand, tag=assigner]

# Save active players (will change)
scoreboard players operation $active_players boat_race_data = $total_players boat_race_data

# Begin game loop (force ride, laps, etc)
function minecraft:boat_race/game/loop