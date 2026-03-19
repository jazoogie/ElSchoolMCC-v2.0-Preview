# This determines if a given team (ts_marker) has any players that haven't already been assigned a position

# Temporarily track this current team marker - brts -> 'boat race team'
tag @s add brt

# If there is a un-processed player on this team, mark this team (-1)
execute as @a[tag=player,scores={boat_race_data=0}] if score @s team_data = @e[type=armor_stand,tag=ts_marker,tag=brt,limit=1] team_data run scoreboard players set @e[type=armor_stand,tag=ts_marker,tag=brt,limit=1] boat_race_data -1

# Remove the temporary tracking tag
tag @s remove brt