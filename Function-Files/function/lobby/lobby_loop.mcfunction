# Looping
schedule function minecraft:lobby/lobby_loop 1t

# Register players - add to team, etc 
# Note: needs to be unless, as new players have NO score (not 0)
# Note: this can stay in the loop for robustness, as players could theoretically join midway through the MCC.
#       When continuing from a minigame, no player already registered would have a lobby_data != 1.
execute as @a[team=!admin] unless score @s lobby_data matches 1 run function minecraft:lobby/new_player

# Effects for players
effect give @a[tag=player] saturation infinite 255 true
effect give @a[tag=player] regeneration infinite 255 true

# Shooting range handling
function minecraft:lobby/ranges/shooting_range
# Bat range handling
function minecraft:lobby/ranges/bat_range