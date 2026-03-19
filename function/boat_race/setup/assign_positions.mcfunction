# We assign the players in order from worst at the front, to best at the back
# Function is being run as and at the assigner marker

# Note: assignment can break if any players don't have any score at all (not even 0)

# Summon barriers
fill ~1 ~ ~2 ~-2 ~ ~-2 barrier
fill ~ ~ ~1 ~-1 ~ ~-1 light[level=15]

# Summon boat associated with player
summon cherry_boat ~ ~ ~ {Invulnerable:1b,Rotation:[90F,0F],Tags:["boat_race"],Passengers:[{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,Tags:["boat_race"]}]}
scoreboard players operation @e[type=cherry_boat,tag=boat_race,sort=nearest,limit=1] boat_race_data = $assign_track boat_race_data


#> Find lowest scoring team
# Reset team marker boat_race_data
scoreboard players set @e[type=armor_stand,tag=ts_marker] boat_race_data 0
# Mark teams that have at least one un-allocated player (-1)
execute as @e[type=armor_stand,tag=ts_marker] run function minecraft:boat_race/setup/unprocessed_team

# Reset lowest_ts (lowest team score) tracker
scoreboard players set $lowest_ts boat_race_data 999999

# Find lowest ts from teams that have un-allocated players
scoreboard players operation $lowest_ts boat_race_data < @e[type=armor_stand,tag=ts_marker,scores={boat_race_data=-1}] team_scores

# Temporarily mark the lowest ts teams that have un-allocated players  (-2)
execute as @e[type=armor_stand,tag=ts_marker,scores={boat_race_data=-1}] if score @s team_scores = $lowest_ts boat_race_data run scoreboard players set @s boat_race_data -2

# Pick only one of these teams (1)
# Note: see glass/force_move/assign for more info on why we pick a team
scoreboard players set @e[type=armor_stand,tag=ts_marker,scores={boat_race_data=-2},sort=random,limit=1] boat_race_data 1

# Temporarily mark un-processed players on the selected team as being elligble to be assigned this position (-1)
execute as @a[tag=player,scores={boat_race_data=0}] if score @s team_data = @e[type=armor_stand,tag=ts_marker,scores={boat_race_data=1},limit=1] team_data run scoreboard players set @s boat_race_data -1

#> Find lowest scoring player on the lowest scoring team
# Find the lowest scoring player on this team
scoreboard players set $lowest_score boat_race_data 999999
scoreboard players operation $lowest_score boat_race_data < @a[tag=player,scores={boat_race_data=-1}] scores

# Temporarily track lowest scoring players on the given team (-2)
execute as @a[tag=player,scores={boat_race_data=-1}] if score @s scores = $lowest_score boat_race_data run scoreboard players set @s boat_race_data -2

# Randomly pick from the pool of lowest scoring players
scoreboard players operation @r[tag=player,scores={boat_race_data=-2}] boat_race_data = $assign_track boat_race_data

#> Reset player boat_race_data data and team boat_race_data data
# Reset team marker boat_race_data - done again for robustness
scoreboard players set @e[type=armor_stand,tag=ts_marker] boat_race_data 0
# Reset all non-chosen players - all with boat_race_data < 0
scoreboard players set @a[tag=player,scores={boat_race_data=..0}] boat_race_data 0


# Reposition marker armor stand for next
# Move left or right, depending on the alternator's current state
execute if score $alternate boat_race_data matches 0 run tp @s ~6 ~ ~-7
execute if score $alternate boat_race_data matches 1 run tp @s ~6 ~ ~7
# Swap the alternator
scoreboard players add $alternate boat_race_data 1
execute if score $alternate boat_race_data matches 2 run scoreboard players set $alternate boat_race_data 0

# Rerun if more players need to be assigned a position
scoreboard players remove $assign_track boat_race_data 1
execute if score $assign_track boat_race_data matches 1.. at @s run function minecraft:boat_race/setup/assign_positions