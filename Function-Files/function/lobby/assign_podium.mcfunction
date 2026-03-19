# Note: fb = 'final battle', ts = 'team score'

# Find final battle score of highest performing team that isn't already selected
#  - we set $highest_fb_ts = 0 here as teams with 0 final_battle_team_scores still must have played
scoreboard players set $highest_fb_ts lobby_podium 0
scoreboard players operation $highest_fb_ts lobby_podium > @e[type=armor_stand,tag=ts_marker,scores={final_battle_data=2,lobby_podium=0}] final_battle_team_scores

# Temporarily mark the highest scoring non-selected fb ts teams (-1)
execute as @e[type=armor_stand,tag=ts_marker,scores={final_battle_data=2,lobby_podium=0}] if score @s final_battle_team_scores = $highest_fb_ts lobby_podium run scoreboard players set @s lobby_podium -1

# Find minigame score of the highest performing team that was selected (with lobby_podium = -1)
scoreboard players set $highest_ts lobby_podium 0
scoreboard players operation $highest_ts lobby_podium > @e[type=armor_stand,tag=ts_marker,scores={lobby_podium=-1}] team_scores

# Temporarily mark the highest ts teams (-2)
execute as @e[type=armor_stand,tag=ts_marker,scores={lobby_podium=-1}] if score @s team_scores = $highest_ts lobby_podium run scoreboard players set @s lobby_podium -2

# Pick only one of these teams (1)
scoreboard players set @e[type=armor_stand,tag=ts_marker,scores={lobby_podium=-2},sort=random,limit=1] lobby_podium 1

# Mark players on the selected team as being the podium_tracker position on the podium
execute as @a[tag=player] if score @s team_data = @e[type=armor_stand,tag=ts_marker,scores={lobby_podium=1},limit=1] team_data run scoreboard players operation @s lobby_podium = $podium_tracker lobby_podium

# Mark this team as having been already selected and processed (2)
scoreboard players set @e[type=armor_stand,tag=ts_marker,scores={lobby_podium=1}] lobby_podium 2
# Reset all non-selected teams (0)
scoreboard players set @e[type=armor_stand,tag=ts_marker,scores={lobby_podium=..-1}] lobby_podium 0


# Increment podium_tracker
scoreboard players add $podium_tracker lobby_podium 1
# Recursion loop - till all top 4 teams are selected
execute if score $podium_tracker lobby_podium matches 1..3 run function minecraft:lobby/assign_podium