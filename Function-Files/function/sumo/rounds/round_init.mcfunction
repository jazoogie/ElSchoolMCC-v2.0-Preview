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

# tp players
execute if score $map sumo_data matches 1 run tp @a[tag=player] 518.5 38 -499.5
execute if score $map sumo_data matches 2 run tp @a[tag=player] 698.5 28 -804.5
execute if score $map sumo_data matches 3 run tp @a[tag=player] 866.5 42 -1107.5
execute if score $map sumo_data matches 4 run tp @a[tag=player] 580.5 35 -1366.5
execute if score $map sumo_data matches 5 run tp @a[tag=player] 275.5 47 -1648.5

# gamemode adventure (incase spectator last round)
gamemode adventure @a[tag=player]

# invis so players can see the map
effect give @a[tag=player] invisibility 5 255 true

# Increment round
scoreboard players add $round sumo_data 1

# Say map and round
title @a reset
tellraw @a [{"text":"Map ","color":"yellow","bold":true},{"score":{"name":"$map","objective":"sumo_data"},"color":"yellow","bold":true},{"text":" : Round "},{"score":{"name":"$round","objective":"sumo_data"},"color":"yellow","bold":true}]

# Countdown
scoreboard players set $countdown sumo_data 6
function minecraft:sumo/rounds/countdown/countdown