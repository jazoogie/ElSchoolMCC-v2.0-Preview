# Note: Boat race laps below name is hidden in lobby_continue

# Stop music sounds
stopsound @a voice

# Cancel game loop
schedule clear minecraft:boat_race/game/loop

# Announce game has finished
title @a title {"text":"Finished!","color":"yellow","bold":true}
playsound minecraft:entity.player.levelup player @a -2229.50 9999 -22.50 9999

# Queue lobby continue
schedule function minecraft:lobby/lobby_continue 15s
