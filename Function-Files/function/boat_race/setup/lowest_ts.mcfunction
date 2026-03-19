# Temporarily track this current team marker - brts -> 'boat race team score'
tag @s add brts

# If there is a un-processed player on this team, use them to help find the lowest scoring team
execute as @a[tag=player,scores={boat_race_data=0}] if score @s team_data = @e[type=armor_stand,tag=ts_marker,tag=brts,limit=1] team_data run scoreboard players operation $lowest_ts boat_race_data < @e[type=armor_stand,tag=ts_marker,tag=brts,limit=1] team_scores

# Remove the temporary tracking tag
tag @s remove brts