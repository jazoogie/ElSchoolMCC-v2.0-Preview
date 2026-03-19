# Stop gameplay looping
scoreboard players set $loop one_shot_data 0
schedule clear minecraft:one_shot/game/loop_check

# Disable pvp
gamerule pvp false

# Kill spectral arrows
kill @e[type=spectral_arrow]
# Clear player inventories
clear @a[tag=player]

# Transporting message
title @a actionbar [{"text":"Transporting...","color":"dark_purple","bold":true,"italic":true}]

# SFX
playsound entity.elder_guardian.curse player @a -1200.5 93 0.0 9999 0.5

# Levitation (with particles)
effect give @a[tag=player] levitation infinite 1 false

schedule function minecraft:one_shot/map_switch/map2_init 4s