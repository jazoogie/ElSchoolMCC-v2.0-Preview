# GET FUCKING HYPED !!
playsound minecraft:sound.custom.dejavu voice @a -529.50 9999 1071.50 9999

# Schedule intro and race start
# 550 ticks = 27.5 seconds
schedule function minecraft:boat_race/setup/enter_positions 550t
schedule function minecraft:boat_race/game/race_start 64s

# Schedule gasgasgas sound track after deja vu is finished
schedule function minecraft:boat_race/setup/gasgasgas 265s