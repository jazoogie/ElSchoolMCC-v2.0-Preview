# OLD POINTS ANALYSIS
# * 175 max possible points, approx. 10 minute playtime *

# Game setup
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
time set midnight


# Tp admins
tp @a[team=admin] -2229.50 187.00 -22.50 180 0
# Tp players
tp @a[tag=player] -2227.00 186.00 -41.50 -90 0


# Saturation
effect give @a[tag=player] saturation infinite 255 true

# Display boat race lap below name (e.g. '2 lap(s)')
scoreboard players set @a boat_race_lap 0
scoreboard objectives setdisplay below_name boat_race_lap

# Set player checkpoint status to 0
scoreboard players set @a[tag=player] boat_checkpoint 0


# Inform players on how to adjust music volume
tellraw @a [{"bold":true,"color":"aqua","text":" Options > Music & Sounds > Narrator/Voice"},{"color":"white","text":" to adjust volume!"}]

# Schedule the intro - music start
schedule function minecraft:boat_race/setup/intro 5s