# Temporarily track this current team marker with 'match'
tag @s add match

# Add a point for each alive player on this team
execute as @a[tag=player,scores={sumo_data=1}] if score @s team_data = @e[type=armor_stand,tag=ts_marker,tag=match,limit=1] team_data run scoreboard players add @e[type=armor_stand,tag=ts_marker,tag=match,limit=1] sumo_data 1

# If there is at least one alive player on this team, increment alive_teams
execute if score @s sumo_data matches 1.. run scoreboard players add $alive_teams sumo_data 1

# Remove the temporary tracking tag
tag @s remove match