# Empty admin team
team empty admin

# Add admins to admin team
team join admin JesseM702
team join admin Roomab

# Reset all admin scores
scoreboard players reset @a[team=admin]
# Reset admin player tags
tag @a[team=admin] remove player


# Reset lobby data
scoreboard objectives remove lobby_data 
scoreboard objectives add lobby_data dummy

# Kill previous scoreboard
kill @e[type=text_display, tag=scoreboard_text]


# Reset scoreboard sidebar
scoreboard objectives setdisplay sidebar


# Reset games played
scoreboard players set $games_played d_dome_data 0


# Display bat kills - only on lobby start
scoreboard objectives remove bat_kills
scoreboard objectives add bat_kills dummy
scoreboard objectives setdisplay list bat_kills


# Deop notification
tellraw @a[team=admin] {"text":"MAKE SURE TO DEOP EVERYONE!","color":"red","bold":true}

# Boat race player heads notification
tellraw @a[team=admin] {"text":"Change the player heads in the boat race waiting area!","color":"yellow","bold":true}


# Initialise lobby
function minecraft:lobby/lobby_init