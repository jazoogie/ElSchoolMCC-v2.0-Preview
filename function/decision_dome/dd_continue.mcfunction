# End lobby stuff
schedule clear minecraft:lobby/lobby_loop
stopsound @a voice
kill @e[type=bat,tag=bat_range]
kill @e[type=arrow]

# Set enviroment, gamerules
time set day
gamerule pvp false
team modify red collisionRule always
team modify orange collisionRule always
team modify yellow collisionRule always
team modify lime collisionRule always
team modify cyan collisionRule always
team modify blue collisionRule always
team modify purple collisionRule always
team modify pink collisionRule always

# Initialise player inventory, gamemode, etc
gamemode adventure @a[tag=player]
clear @a[tag=player]
effect clear @a[tag=player]
title @a reset

# Saturation
effect give @a[team=players] saturation infinite 255 true

# Teleport admins
tp @a[team=admin] 0.5 79 300.5

# Teleport players into their respective cells
tp @a[tag=player,team=red] -12.5 87.00 313.5
tp @a[tag=player,team=orange] -17.5 87.00 300.5
tp @a[tag=player,team=yellow] -12.5 87.00 287.5
tp @a[tag=player,team=lime] 0.5 87.00 282.5
tp @a[tag=player,team=cyan] 13.5 87.00 287.5
tp @a[tag=player,team=blue] 18.5 87.00 300.5
tp @a[tag=player,team=purple] 13.5 87.00 313.5
tp @a[tag=player,team=pink] 0.5 87.00 318.5


# Regular mini-game
execute if score $games_played d_dome_data matches ..7 run function minecraft:decision_dome/regular_game

# Commence intro to the final game
execute if score $games_played d_dome_data matches 8 run schedule function minecraft:decision_dome/final_battle/intro 10s