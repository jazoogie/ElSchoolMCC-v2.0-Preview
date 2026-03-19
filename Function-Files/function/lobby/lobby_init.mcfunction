# Gamerules / Setup
time set day
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

# Bat range kills tracking
scoreboard objectives remove bat_killed
scoreboard objectives add bat_killed minecraft.killed:minecraft.bat

# Summon bats in bat range
scoreboard players set $bat_count lobby_data 0
function minecraft:lobby/ranges/bat_summon

# Start loops
function minecraft:lobby/lobby_loop