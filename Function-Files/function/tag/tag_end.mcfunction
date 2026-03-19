# # Stop the spectator restrict
# schedule clear minecraft:tag/rounds/spectator_restrict

# Finish game
title @a title {"text":"Finished!","color":"yellow","bold":true}
playsound minecraft:entity.player.levelup player @a -1202.00 9999 -602.00 9999

# Queue lobby continue
schedule function minecraft:lobby/lobby_continue 15s