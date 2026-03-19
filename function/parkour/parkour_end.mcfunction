# Clear invisibility
effect clear @a[tag=players] invisibility
# Note: boots are removed in lobby_continue

# Clear loops
schedule clear minecraft:parkour/game/loop
schedule clear minecraft:parkour/game/timer

gamemode spectator @a[tag=player]

# Announce game finish
title @a title {"text":"Finished!","color":"yellow","bold":true}
playsound minecraft:entity.player.levelup player @a -672.50 9999 -589.50 99999

# Schedule lobby continue
schedule function minecraft:lobby/lobby_continue 15s