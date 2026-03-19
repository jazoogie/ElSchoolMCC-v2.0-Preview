# OLD POINTS ANALYSIS
# * 187 max possible points, approx. 15 minute playtime *

# Gamerules / Setup
gamerule fallDamage false
gamerule doFireTick false
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

# Effects
effect give @a[tag=player] saturation infinite 255 true
effect give @a[tag=player] regeneration infinite 255 true
effect give @a[tag=player] fire_resistance infinite 255 true

# Tp all to first box
tp @a[team=admin] -768.50 65.00 -606.50 90 0
tp @a[tag=player] -777.5 64 -606.5

# Reset title from decision dome (if applicable)
title @a reset

# Queue round countdown and shii
# 6 => 5 second countdown.
scoreboard players set $countdown parkour_data 6
schedule function minecraft:parkour/game/countdown 25s

# Stop players from starting the parkour
schedule function minecraft:parkour/setup/delayed_setup 4t