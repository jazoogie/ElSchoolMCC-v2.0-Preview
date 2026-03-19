# Allow players access to the platforms
fill -1203 152 634 -1196 152 634 air

# Add the force move bossbar
bossbar add force_move "Time to Move"
bossbar set force_move max 20
bossbar set minecraft:force_move players @a

# Pick the forced player
function minecraft:glass/force_move/assign

function minecraft:glass/play_round