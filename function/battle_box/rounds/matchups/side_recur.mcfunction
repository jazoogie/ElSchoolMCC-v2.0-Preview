
# For this matchup, store the ID if the current team
execute store result score $fixture_id battle_box_team_id run data get storage minecraft:fixture fixture[0][0][0]

# Get the actual team ID from the abitrary ID from the fixture
execute as @e[type=armor_stand,tag=ts_marker] if score @s battle_box_team_id = $fixture_id battle_box_team_id run scoreboard players operation $team_id battle_box_team_id = @s team_data

# Set player data for the players on this team
execute as @a[tag=player] if score @s team_data = $team_id battle_box_team_id run function minecraft:battle_box/rounds/matchups/set_player_data


# Increment side tracker - from 1 to 2
scoreboard players add $side_tracker battle_box_side 1 

# Remove this team from the matchup list
data remove storage minecraft:fixture fixture[0][0][0]

# Recursive loop - do until there are no more teams in the matchup; i.e. both teams have been processed
execute if data storage minecraft:fixture fixture[0][0][0] run function minecraft:battle_box/rounds/matchups/side_recur