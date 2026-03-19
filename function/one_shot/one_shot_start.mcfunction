# OLD POINTS ANALYSIS
# * ~195 estimated points (assuming a kill every 4s on avg.), approx. 10 minute playtime *
# 7 mins in, we switch to double points.


# Setup
gamerule fallDamage false
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule showDeathMessages false
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
time set night

# Kills scoreboard - killed scoreboard is 'player_killed'
scoreboard objectives remove kills
scoreboard objectives add kills dummy "kills"
scoreboard objectives setdisplay below_name kills

# Saturation
effect give @a[tag=player] saturation infinite 255 true

# Load area, then setup
tp @a[tag=player] -1165.00 92.00 6.00
tp @a[team=admin] -1176.00 91.50 3.00 90 0
schedule function minecraft:one_shot/setup/delayed_setup 4t

# Queue cage destruction
schedule function minecraft:one_shot/setup/destroy_cage 30s

# Schedule gamestart countdown
title @a reset
scoreboard players set $countdown one_shot_data 11
schedule function minecraft:one_shot/game/countdown 45s