# Set the scene ;)
playsound minecraft:sound.custom.intense voice @a 0.5 9999 300.5 99999
summon lightning_bolt 0.5 79 300.5
time set midnight

# Hide team scores
scoreboard objectives setdisplay sidebar
# Hide player scores
scoreboard objectives setdisplay list

# Cancel 'team_scores' refreshing loop - don't need anymore
schedule clear minecraft:ts_refresh

#> Finding the top 4 teams
# Reset final_battle_data for all players
scoreboard players set @a[tag=player] final_battle_data 0

# Initialise top4 tracking variable
scoreboard players set $top4_tracker final_battle_data 1
# Set ts_marker final_battle_data scores to 0 
#  - if this were missing, we wouldn't be able to target them with scores={final_battle_data=0}
scoreboard players set @e[type=armor_stand,tag=ts_marker] final_battle_data 0
# Begin assigning recursion
function minecraft:decision_dome/final_battle/assign_highest


# Schedule reveal of top 4 - 670t -> 33.5s
schedule function minecraft:decision_dome/final_battle/reveal_top4 670t