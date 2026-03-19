# Kill all previous markers (for robustness, safety)
kill @e[type=armor_stand, tag=glass_marker]

# Master armor stand - creates the platform ones
scoreboard players set $m_counter glass_data 0

summon armor_stand -1201.00 152.00 631.00 {Marker:1b, Invisible:1b, Tags:["master", "glass_marker"]}
execute as @e[type=armor_stand, tag=master, limit=1] at @s run function minecraft:glass/markers/summon_markers

# Set all markers to have a glass timer 0
scoreboard players set @e[type=armor_stand, tag=glass_marker] glass_timers 0

# Delete the master armor stand after.
kill @e[type=armor_stand, tag=master]

# Reset scores
scoreboard players set @a[tag=player] glass_data 0
scoreboard players set @a[tag=player] jump 0

# Get active players
scoreboard players set $active_players glass_data 0
execute as @a[tag=player] run scoreboard players add $active_players glass_data 1


# Increment round
scoreboard players add $round glass_data 1

# Tp players to play area
tp @a[tag=player] -1199.00 151.00 637.00 180 ~

# Block players from prematurely jumping off
fill -1203 152 634 -1196 152 634 barrier

# Announce round
title @a reset
tellraw @a [{"text":"Round ","color":"yellow","bold":true},{"score":{"name":"$round","objective":"glass_data"},"color":"yellow","bold":true}, {"text":" starting soon...","color":"yellow","bold":false}]

# Queue round start
schedule function minecraft:glass/round_start 4s