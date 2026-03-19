# Reset tid_tracker (team id tracker)
#  - this could be more robust and only iterate through teams we know are participating in the MCC, but i'll just go over all 8 possible
scoreboard players set $tid_tracker battle_box_team_id 1
# Loop over every (8 in total) team id to check for completed wool
function minecraft:battle_box/rounds/check_wool/cw_team


# Move bb_cw marker to next arena
execute as @e[type=armor_stand,tag=bb_cw,limit=1] at @s run tp @s ~ ~ ~-48

# Increment bba_tracker - will end up as 1 more than the number of active arenas
scoreboard players add $bba_tracker battle_box_arena 1

# Recursion - repeat for all active arenas
execute if score $bba_tracker battle_box_arena <= $active_arenas battle_box_arena run function minecraft:battle_box/rounds/check_wool/cw_arena