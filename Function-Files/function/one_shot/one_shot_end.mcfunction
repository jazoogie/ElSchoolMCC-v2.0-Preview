# Note: Kills below name is hidden in lobby_continue

# Stop timer
schedule clear minecraft:one_shot/game/timer

# Stop gameplay looping
scoreboard players set $loop one_shot_data 0
schedule clear minecraft:one_shot/game/loop_check

# Disable pvp
gamerule pvp false

# Kill spectral arrows
kill @e[type=spectral_arrow]
# Clear player inventories
clear @a[tag=player]

# Kill summoner armour stand
kill @e[type=armor_stand, tag=one_shot, tag=respawn_location]

# Announce game finish
title @a title {"text":"Finished!","color":"yellow","bold":true}
playsound minecraft:entity.player.levelup player @a -603 9999 2 9999

# Queue lobby continue
schedule function minecraft:lobby/lobby_continue 15s
