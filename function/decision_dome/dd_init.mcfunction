#> Player scores
# Reset player scores scoreboard
scoreboard objectives remove scores
scoreboard objectives add scores dummy "Scores"
scoreboard objectives setdisplay list scores
# From Boat Race: 'Note: assignment can break if any players don't have any score at all (not even 0)' - avoid this
scoreboard players set @a[tag=player] scores 0


#> Set team data
scoreboard objectives remove team_data
scoreboard objectives add team_data dummy

# Set player values for easier team targeting
scoreboard players set @a[tag=player,team=red] team_data 1
scoreboard players set @a[tag=player,team=orange] team_data 2
scoreboard players set @a[tag=player,team=yellow] team_data 3
scoreboard players set @a[tag=player,team=lime] team_data 4
scoreboard players set @a[tag=player,team=cyan] team_data 5
scoreboard players set @a[tag=player,team=blue] team_data 6
scoreboard players set @a[tag=player,team=purple] team_data 7
scoreboard players set @a[tag=player,team=pink] team_data 8

#> Team scores
# Reset team scores scoreboard
scoreboard objectives remove team_scores
scoreboard objectives add team_scores dummy "Team Scores"
scoreboard objectives setdisplay sidebar team_scores

# Create team-tagged armorstands - ts_marker -> 'team score marker'
#  - their team is given by their value in team_data (e.g. 1 -> red, 2 -> orange, etc)
#  - this is useful for finding what team is the highest/lowest scoring
#  - only teams that actually have a player on them will spawn an associated marker
kill @e[type=armor_stand,tag=ts_marker]
scoreboard players set $ts_marker_track team_data 1
function minecraft:decision_dome/setup/summon_ts_markers

# Change display names of these markers
scoreboard players display name @e[type=armor_stand,tag=ts_marker,scores={team_data=1}] team_scores {"text":"Red", color:"red"}
scoreboard players display name @e[type=armor_stand,tag=ts_marker,scores={team_data=2}] team_scores {"text":"Orange", color:"gold"}
scoreboard players display name @e[type=armor_stand,tag=ts_marker,scores={team_data=3}] team_scores {"text":"Yellow", color:"yellow"}
scoreboard players display name @e[type=armor_stand,tag=ts_marker,scores={team_data=4}] team_scores {"text":"Lime", color:"green"}
scoreboard players display name @e[type=armor_stand,tag=ts_marker,scores={team_data=5}] team_scores {"text":"Cyan", color:"dark_aqua"}
scoreboard players display name @e[type=armor_stand,tag=ts_marker,scores={team_data=6}] team_scores {"text":"Blue", color:"blue"}
scoreboard players display name @e[type=armor_stand,tag=ts_marker,scores={team_data=7}] team_scores {"text":"Purple", color:"dark_purple"}
scoreboard players display name @e[type=armor_stand,tag=ts_marker,scores={team_data=8}] team_scores {"text":"Pink", color:"light_purple"}

# Start function to continously update team scores
function minecraft:ts_refresh

# Reset $games_played
scoreboard players set $games_played d_dome_data 0

# Schedule section colours reset
schedule function minecraft:decision_dome/setup/reset_sections 4t

# Continue to decision dome
function minecraft:decision_dome/dd_continue