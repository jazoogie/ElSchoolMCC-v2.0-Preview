# Find score of highest performing team that isn't already selected
#  - $highest = 1 (not 0) is so that teams that have a score of 0 (i.e. essentially haven't participated in the minigames) 
#    can't be included considered for the top 4.
scoreboard players set $highest final_battle_data 1
scoreboard players operation $highest final_battle_data > @e[type=armor_stand,tag=ts_marker,scores={final_battle_data=0}] team_scores

# Temporarily mark the highest non-selected scoring teams (-1)
execute as @e[type=armor_stand,tag=ts_marker,scores={final_battle_data=0}] if score @s team_scores = $highest final_battle_data run scoreboard players set @s final_battle_data -1
# Select only one of these teams (1)
scoreboard players set @e[type=armor_stand,tag=ts_marker,scores={final_battle_data=-1},sort=random,limit=1] final_battle_data 1

# Mark players on the selected team as participants in the final battle
execute as @a[tag=player] if score @s team_data = @e[type=armor_stand,tag=ts_marker,scores={final_battle_data=1},limit=1] team_data run scoreboard players operation @s final_battle_data = $top4_tracker final_battle_data

# Mark this team as having been already selected and processed (2)
scoreboard players set @e[type=armor_stand,tag=ts_marker,scores={final_battle_data=1}] final_battle_data 2
# Reset all non-selected teams (0)
scoreboard players set @e[type=armor_stand,tag=ts_marker,scores={final_battle_data=-1}] final_battle_data 0

# Increment top4_tracker
scoreboard players add $top4_tracker final_battle_data 1
# Recursion loop - till all top 4 teams are selected
execute if score $top4_tracker final_battle_data matches 1..4 run function minecraft:decision_dome/final_battle/assign_highest