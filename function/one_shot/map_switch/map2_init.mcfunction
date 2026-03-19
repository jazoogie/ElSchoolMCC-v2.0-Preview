# Kill old summoner armour stand
kill @e[type=armor_stand, tag=one_shot, tag=respawn_location]

# Tp all into arena - loads area
tp @a -617.0 106 -18.0

# Map start has to be delayed to allow armor stand + map to load
schedule function minecraft:one_shot/map_switch/map2_start 4t