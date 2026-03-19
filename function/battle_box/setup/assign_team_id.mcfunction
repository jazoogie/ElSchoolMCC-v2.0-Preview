# Increment n_teams tracker
scoreboard players add $n_teams battle_box_team_id 1

# Set this ts_marker's bb team id to the n_teams tracker value
scoreboard players operation @s battle_box_team_id = $n_teams battle_box_team_id