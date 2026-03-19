# OLD SCORE ANALYSIS
# * 189 max possible points, approx. 10 - 15 minute playtime *
# 9 rounds !

# Gamerules / Setup
gamerule doTileDrops false
gamerule pvp false
team modify red collisionRule always
team modify orange collisionRule always
team modify yellow collisionRule always
team modify lime collisionRule always
team modify cyan collisionRule always
team modify blue collisionRule always
team modify purple collisionRule always
team modify pink collisionRule always
time set midnight

# Saturation
effect give @a[tag=player] saturation infinite 255 true

# Load area, then setup
tp @a[team=admin] -30.50 103.00 -599.50 90 0
tp @a[tag=player] -46.50 103.00 -599.50
schedule function minecraft:spleef/setup/delayed_setup 4t

# Queue cage destruction
schedule function minecraft:spleef/setup/destroy_cage 30s

# Queue game start
scoreboard players set $round spleef_data 0
schedule function minecraft:spleef/rounds/round_start 45s