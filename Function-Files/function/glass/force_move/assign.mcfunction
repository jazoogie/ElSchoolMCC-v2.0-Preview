# Note: all of this logic is dealt with within glass_forced, not glass_data which stores player alive statuses and such


# Reset all player glass_force data - we need to pick another player to force to move
scoreboard players set @a[tag=player] glass_force 0

#> Find highest scoring team
# Reset team markers' glass_force
scoreboard players set @e[type=armor_stand,tag=ts_marker] glass_force 0
# Mark teams that have at least one ALIVE player (-1)
execute as @e[type=armor_stand,tag=ts_marker] run function minecraft:glass/force_move/alive_team

# Reset highest_ts (highest team score) tracker
scoreboard players set $highest_ts glass_force -1

# Find highest ts from teams that have an alive player
scoreboard players operation $highest_ts glass_force > @e[type=armor_stand,tag=ts_marker,scores={glass_force=-1}] team_scores

# Temporarily mark the highest ts teams with an alive player (-2)
execute as @e[type=armor_stand,tag=ts_marker,scores={glass_force=-1}] if score @s team_scores = $highest_ts glass_force run scoreboard players set @s glass_force -2

# Pick only one of these teams (1)
#  - in theory we mightn't have to pick any specific team, but rather just set all players that have team_data matching
#    the teams with the lowest score to being elligible.
#    in practice however, this approach would actually be more difficult.
scoreboard players set @e[type=armor_stand,tag=ts_marker,scores={glass_force=-2},sort=random,limit=1] glass_force 1

# Temporarily mark ALIVE players on the selected team as being elligble to be selected for force moving (-1)
execute as @a[tag=player,scores={glass_data=0..}] if score @s team_data = @e[type=armor_stand,tag=ts_marker,scores={glass_force=1},limit=1] team_data run scoreboard players set @s glass_force -1

#> Find highest scoring player on the highest scoring team
# Find the highest scoring player on this team
# Note: no need to check for alive status, we've only marked alive players anyway
scoreboard players set $highest_score glass_force -1
scoreboard players operation $highest_score glass_force > @a[tag=player,scores={glass_force=-1}] scores

# Temporarily track highest scoring players on the given team (-2)
execute as @a[tag=player,scores={glass_force=-1}] if score @s scores = $highest_score glass_force run scoreboard players set @s glass_force -2
# Randomly pick from the pool of highest scoring players
scoreboard players set @r[tag=player,scores={glass_force=-2}] glass_force 1

#> Reset player glass_force data and team glass_force data
# Reset all team marker data
scoreboard players set @e[type=armor_stand,tag=ts_marker] glass_force 0
# Reset all non-chosen players - all with glass_force < 0
scoreboard players set @a[tag=player,scores={glass_force=..0}] glass_force 0

# Set timer for this player
execute as @p[tag=player, scores={glass_force=1}] at @s run function minecraft:glass/force_move/set_timer
