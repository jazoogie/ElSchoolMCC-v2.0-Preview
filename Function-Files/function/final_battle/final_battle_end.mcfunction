# Clear
clear @a[tag=player]
# Stop music
stopsound @a
# Time set day
time set day

# Announce game finish
title @a title {"text":"Finished!","color":"yellow","bold":true}
playsound minecraft:entity.player.levelup player @a 0.00 74.00 600.00 3


# Queue MCC end :')
schedule function minecraft:lobby/mcc_end 15s