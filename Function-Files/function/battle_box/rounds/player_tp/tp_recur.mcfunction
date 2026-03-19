# Tp player over to the next arena
tp @s ~ ~ ~-48

# Increment bba_tracker
scoreboard players add $bba_tracker battle_box_arena 1

# Recursion - repeat until player is in their correct lobby area
execute if score $bba_tracker battle_box_arena < @s battle_box_arena at @s run function minecraft:battle_box/rounds/player_tp/tp_recur