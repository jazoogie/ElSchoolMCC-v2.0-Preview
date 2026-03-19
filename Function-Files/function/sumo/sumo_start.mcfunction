# OLD POINTS ANALYSIS
# * 210 max possible points, approx. 10 - 15 minute playtime *

# Uses the original 'sumo_data' scoreboard

# Setting up stuff for the game
gamerule fallDamage false
gamerule pvp false
team modify red collisionRule always
team modify orange collisionRule always
team modify yellow collisionRule always
team modify lime collisionRule always
team modify cyan collisionRule always
team modify blue collisionRule always
team modify purple collisionRule always
team modify pink collisionRule always
team modify red friendlyFire false
team modify orange friendlyFire false
team modify yellow friendlyFire false
team modify lime friendlyFire false
team modify cyan friendlyFire false
team modify blue friendlyFire false
team modify purple friendlyFire false
team modify pink friendlyFire false
time set day

# Potion effects
effect give @a[tag=player] saturation infinite 255 true
effect give @a[tag=player] regeneration infinite 255 true

# Reset title from decision dome
title @a reset

# Tp players to lobby area
tp @a[tag=player] 514.50 51.00 -67.50 0 0
# Tp admins to lobby area
tp @a[team=admin] 508.00 56.00 -73.00 -45 30

# Schedule map initiation
scoreboard players set $map sumo_data 1
schedule function minecraft:sumo/maps/map_start 30s