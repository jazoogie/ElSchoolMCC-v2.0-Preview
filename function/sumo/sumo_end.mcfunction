# change time
time set day

# Announce game has finished
title @a title {"text":"Finished!","color":"yellow","bold":true}
playsound minecraft:entity.player.levelup player @a 275 47 -1648 99 1

# Queue lobby continue
schedule function minecraft:lobby/lobby_continue 15s