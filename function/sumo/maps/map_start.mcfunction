# Tp players
# map 1
execute if score $map sumo_data matches 1 run tp @a 518.5 38 -499.5
# map 2
execute if score $map sumo_data matches 2 run tp @a 698.5 28 -804.5
# map 3
execute if score $map sumo_data matches 3 run tp @a 866.5 42 -1107.5
# map 4
execute if score $map sumo_data matches 4 run tp @a 580.5 35 -1366.5
# map 5
execute if score $map sumo_data matches 5 run tp @a 275.5 47 -1648.5

# set times for specific maps - first map is day in sumo_start
execute if score $map sumo_data matches 2 run time set night
execute if score $map sumo_data matches 3 run time set noon
execute if score $map sumo_data matches 4 run time set night
execute if score $map sumo_data matches 5 run time set midnight

# adventure mode players
gamemode adventure @a[tag=player]

# gamerules
gamerule pvp false
team modify red collisionRule never
team modify orange collisionRule never
team modify yellow collisionRule never
team modify lime collisionRule never
team modify cyan collisionRule never
team modify blue collisionRule never
team modify purple collisionRule never
team modify pink collisionRule never

# Reset round, set to 0
scoreboard players set $round sumo_data 0

# Notify players to explore the map
tellraw @a [{"bold":true,"color":"aqua","text":"Explore map "},{"color":"red","score":{"name":"$map","objective":"sumo_data"}},"! The round will begin shortly..."]
# Schedule round
schedule function minecraft:sumo/rounds/round_init 15s