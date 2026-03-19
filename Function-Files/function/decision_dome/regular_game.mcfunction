# Decision dome music
stopsound @a voice
playsound minecraft:music_disc.wait voice @a 0.5 9999 300.5 9999

# Eggs (has to happen after /clear)
give @a[tag=player] egg 2


# Schedule piston extension
schedule function minecraft:decision_dome/choose_game/extend_pistons 30s

# Cycle eighths
scoreboard players set $cycle_16 d_dome_data 0
scoreboard players set $cycle_4 d_dome_data 0
function minecraft:decision_dome/cycle_eighths

# Decision dome main loop
function minecraft:decision_dome/loop