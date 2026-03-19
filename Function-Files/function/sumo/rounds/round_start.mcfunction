# enable gamerules
gamerule pvp true
team modify red collisionRule always
team modify orange collisionRule always
team modify yellow collisionRule always
team modify lime collisionRule always
team modify cyan collisionRule always
team modify blue collisionRule always
team modify purple collisionRule always
team modify pink collisionRule always

# set players alive status to 1 (true)
scoreboard players set @a[tag=player] sumo_data 1

# apply glowing effect
effect give @a[tag=player] glowing infinite 1 true

# reset wind charge cooldown
scoreboard players set @a[tag=player] sumo_cooldown 0


# schedule kb increase
scoreboard players set $kb_level sumo_data 1
schedule function minecraft:sumo/rounds/kb_stick/kb_increase 30s

# start death barrier descension
# 15
execute if score $map sumo_data matches 1 run scoreboard players set $death_barrier_y sumo_data 50
# 13
execute if score $map sumo_data matches 2 run scoreboard players set $death_barrier_y sumo_data 44
# 13
execute if score $map sumo_data matches 3 run scoreboard players set $death_barrier_y sumo_data 60
# 8 (upper), 16 (lower)
execute if score $map sumo_data matches 4 run scoreboard players set $death_barrier_y sumo_data 55
# 19
execute if score $map sumo_data matches 5 run scoreboard players set $death_barrier_y sumo_data 61
scoreboard players set @a[tag=player] sumo_barrier 101
function minecraft:sumo/rounds/death_barrier/barrier_descend

# start play_round loop
function minecraft:sumo/rounds/round_play