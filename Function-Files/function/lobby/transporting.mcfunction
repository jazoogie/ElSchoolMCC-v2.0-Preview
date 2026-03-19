# Transporting message
title @a actionbar [{"text":"Transporting...","color":"dark_purple","bold":true,"italic":true}]

# SFX
playsound minecraft:entity.elder_guardian.curse player @a 86.5 9999 -92.5 9999 0.5

# Levitation (with particles)
effect give @a[tag=player] levitation infinite 1 false

# Queue decision dome - either initialise (first time) or continue
execute if score $games_played d_dome_data matches 0 run schedule function minecraft:decision_dome/dd_init 2s
execute if score $games_played d_dome_data matches 1.. run schedule function minecraft:decision_dome/dd_continue 2s