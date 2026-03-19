# Clear below_name scoreboards - good for one shot, boat race
scoreboard objectives setdisplay below_name

# Initialise player inventory, gamemode, etc
gamemode adventure @a[tag=player]
clear @a[tag=player]
effect clear @a[tag=player]

# Tp all to lobby
tp @a 86.5 44.5 -92.5


# Initialise lobby
function minecraft:lobby/lobby_init

# Refresh scoreboard
schedule function minecraft:lobby/scoreboard/scoreboard_init 4t

# Begin decision dome countdown (90s)
scoreboard players set $countdown lobby_data 91
function minecraft:lobby/countdown