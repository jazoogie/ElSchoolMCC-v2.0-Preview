# DEPRICATED SCORE NOTES:
# * 195 max possible points, approx. 10 - 15 minute playtime *
# worst scorer expected around ~180, best scorer ~20

# Tp players into lobby area
tp @a[tag=player] -1199.00 151.00 649.00 180 0

# Tp admins to squid game area
tp @a[team=admins] -1199.00 151.00 637.00 0 0

# Setting up stuff for the game
time set midnight
gamerule doTileDrops false
gamerule fallDamage false
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

# Reset rounds
scoreboard players set $round glass_data 0

# Saturation
effect give @a[tag=player] saturation infinite 255 true

# Queue first round initiation
schedule function minecraft:glass/round_init 45s