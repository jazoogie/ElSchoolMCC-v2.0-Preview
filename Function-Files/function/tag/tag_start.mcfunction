# OLD POINTS ANALYSIS
# * 189 max possible points, approx. 10 - 15 minute playtime *

# Gamerule changing
# Note: no pvp for the free roam period
gamerule fallDamage false
gamerule doFireTick false
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
time set 12500

# Saturation and regen
effect give @a[tag=player] saturation infinite 255 true
effect give @a[tag=player] regeneration infinite 255 true

# Load area, then setup
tp @a[tag=player] -1201.0 70 -638.0
tp @a[team=admin] -1201.00 70.00 -629.00 180 0
schedule function minecraft:tag/setup/delayed_setup 4t

# Queue cage destruction
schedule function minecraft:tag/setup/destroy_cage 20s


# Reset rounds
scoreboard players set $round tag_data 0

# Queue round init - 60s to allow for a little map exploration
title @a reset
schedule function minecraft:tag/rounds/round_init 60s