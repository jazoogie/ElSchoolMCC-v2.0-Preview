# Loop
schedule function minecraft:ts_refresh 1t

# Reset ts_markers' team scores
scoreboard players set @e[type=armor_stand,tag=ts_marker] team_scores 0

# Find the sum of the scores of the team's players
# Note: this really should be done in a recursive loop, but I cba
scoreboard players operation @e[type=armor_stand,tag=ts_marker,scores={team_data=1}] team_scores += @a[tag=player,team=red] scores
scoreboard players operation @e[type=armor_stand,tag=ts_marker,scores={team_data=2}] team_scores += @a[tag=player,team=orange] scores
scoreboard players operation @e[type=armor_stand,tag=ts_marker,scores={team_data=3}] team_scores += @a[tag=player,team=yellow] scores
scoreboard players operation @e[type=armor_stand,tag=ts_marker,scores={team_data=4}] team_scores += @a[tag=player,team=lime] scores
scoreboard players operation @e[type=armor_stand,tag=ts_marker,scores={team_data=5}] team_scores += @a[tag=player,team=cyan] scores
scoreboard players operation @e[type=armor_stand,tag=ts_marker,scores={team_data=6}] team_scores += @a[tag=player,team=blue] scores
scoreboard players operation @e[type=armor_stand,tag=ts_marker,scores={team_data=7}] team_scores += @a[tag=player,team=purple] scores
scoreboard players operation @e[type=armor_stand,tag=ts_marker,scores={team_data=8}] team_scores += @a[tag=player,team=pink] scores