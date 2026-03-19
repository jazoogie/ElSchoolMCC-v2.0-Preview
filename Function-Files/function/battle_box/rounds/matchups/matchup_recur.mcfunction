# Reset side_tracker variable
scoreboard players set $side_tracker battle_box_side 1
# Assign sides (team 1 and 2) for this arena
function minecraft:battle_box/rounds/matchups/side_recur

# Increment the arena tracker
scoreboard players add $bba_tracker battle_box_arena 1

# Remove the previously commenced matchup from the fixture
data remove storage minecraft:fixture fixture[0][0]


# Setup the current arena
execute as @e[type=armor_stand,tag=bba_marker,limit=1] at @s run function minecraft:battle_box/rounds/arena_setup/arena_init


# Recursive loop - do until there are no more matchups in the round
execute if data storage minecraft:fixture fixture[0][0] run function minecraft:battle_box/rounds/matchups/matchup_recur