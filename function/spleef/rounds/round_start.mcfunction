# Fill snow
fill 24 99 -624 -24 99 -576 snow_block keep

# Increment round
scoreboard players add $round spleef_data 1

# Set alive players
scoreboard players set $alive_players spleef_data 0
execute as @a[tag=player] run scoreboard players add $alive_players spleef_data 1

# Announce round
title @a reset
title @a title [{"text":"Round ","color":"yellow"},{"score":{"name":"$round","objective":"spleef_data"},"bold":true}]

# Give players invisibility
effect give @a[tag=player] invisibility 5 0 true

# Kill snowball markers
kill @e[type=armor_stand, tag=snowball_marker]

# Reset snowball score
scoreboard players set @a[tag=player, scores={snow_mined=5..}] snow_mined 0
# Set player status to alive
scoreboard players set @a[tag=player] spleef_data 1

# Tp into arena
tp @a[tag=player] 0.50 101.00 -599.50

# Queue countdown
scoreboard players set $countdown spleef_data 6
function minecraft:spleef/rounds/countdown