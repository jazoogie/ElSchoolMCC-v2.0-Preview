# This determines if a given team (ts_marker) has any alive players

# Temporarily track this current team marker - gt -> 'glass teams'
tag @s add gt

# If there is a un-processed player on this team, mark this team (-1)
execute as @a[tag=player,scores={glass_data=0..}] if score @s team_data = @e[type=armor_stand,tag=ts_marker,tag=gt,limit=1] team_data run scoreboard players set @e[type=armor_stand,tag=ts_marker,tag=gt,limit=1] glass_force -1

# Remove the temporary tracking tag
tag @s remove gt