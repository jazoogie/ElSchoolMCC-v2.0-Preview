# Reset tag data
#  0 = not tagged (alive)
#  1 = tagged
#  -1 = dead
scoreboard players set @a[tag=player] tag_data 0

# Choose players to begin as taggers
function minecraft:tag/rounds/elimination/init_elim

# Begin round loop
function minecraft:tag/rounds/round_loop