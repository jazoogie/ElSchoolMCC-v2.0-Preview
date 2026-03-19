# Announce game has finished
title @a title {"text":"Finished!","color":"yellow","bold":true}
playsound minecraft:entity.player.levelup player @a -1199.00 151.00 601.00 9999

# Queue lobby continue
schedule function minecraft:lobby/lobby_continue 15s