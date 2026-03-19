# Reset the player_on_team boolean variable
scoreboard players set $player_on_team team_data 0
# If a player is on this team, set the boolean player_on_team to true
execute as @a[tag=player] if score @s team_data = $ts_marker_track team_data run scoreboard players set $player_on_team team_data 1

# Summon the marker ONLY IF there is a player on that team
#  - the ORIGIN IS FORCELOADED so these markers cannot be unloaded
execute if score $player_on_team team_data matches 1 run summon armor_stand 0 0 0 {Marker:1b,Invisible:1b,Tags:["ts_marker"]}

# Set marker's score to ts_marker_track
#  - this won't run unless the marker was spawned
#  - need 'unless' as newly spawned armorstands don't have a score of 0, they have no score at all
execute as @e[type=armor_stand,tag=ts_marker] unless score @s team_data matches 1.. run scoreboard players operation @s team_data = $ts_marker_track team_data

# Increment ts_marker_track
scoreboard players add $ts_marker_track team_data 1
# Recursion loop - till all 8 potential teams have been considered
execute if score $ts_marker_track team_data matches 1..8 run function minecraft:decision_dome/setup/summon_ts_markers