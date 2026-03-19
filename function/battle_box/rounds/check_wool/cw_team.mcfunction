# Loops over each colour wool (team) to check if a team has won

# Set compare 3x3 to the appropriate colored wool
execute if score $tid_tracker battle_box_team_id matches 1 run fill -608 112 483 -606 112 485 red_wool
execute if score $tid_tracker battle_box_team_id matches 2 run fill -608 112 483 -606 112 485 orange_wool
execute if score $tid_tracker battle_box_team_id matches 3 run fill -608 112 483 -606 112 485 yellow_wool
execute if score $tid_tracker battle_box_team_id matches 4 run fill -608 112 483 -606 112 485 lime_wool
execute if score $tid_tracker battle_box_team_id matches 5 run fill -608 112 483 -606 112 485 cyan_wool
execute if score $tid_tracker battle_box_team_id matches 6 run fill -608 112 483 -606 112 485 blue_wool
execute if score $tid_tracker battle_box_team_id matches 7 run fill -608 112 483 -606 112 485 purple_wool
execute if score $tid_tracker battle_box_team_id matches 8 run fill -608 112 483 -606 112 485 pink_wool

# Reset wool_filled boolean expression
scoreboard players set $wool_filled battle_box_arena 0

# Determine if wool is filled - if we have a player that is:
#  1. alive / active
#  2. on the given team
#  3. in the given arena
# And: 4. the team's color wool is filled
execute as @a[tag=player,scores={battle_box_status=1}] if score @s team_data = $tid_tracker battle_box_team_id if score @s battle_box_arena = $bba_tracker battle_box_arena at @e[type=armor_stand,tag=bb_cw,limit=1] if blocks ~-1 ~-1 ~-1 ~1 ~-1 ~1 -608 112 483 all run scoreboard players set $wool_filled battle_box_arena 1

# If the wool is filled, process winners and losers
execute if score $wool_filled battle_box_arena matches 1 run function minecraft:battle_box/rounds/check_wool/cw_success

# Increment tid_tracker
scoreboard players add $tid_tracker battle_box_team_id 1
# Recursion - repeat for all teams (1-8)
execute if score $tid_tracker battle_box_team_id matches 1..8 run function minecraft:battle_box/rounds/check_wool/cw_team