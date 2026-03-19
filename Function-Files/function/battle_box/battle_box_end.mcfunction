# Announce game finish
title @a title {"text":"Finished!","color":"yellow","bold":true}
playsound minecraft:entity.player.levelup player @a -603 9999 2 9999

# Queue lobby continue
schedule function minecraft:lobby/lobby_continue 15s