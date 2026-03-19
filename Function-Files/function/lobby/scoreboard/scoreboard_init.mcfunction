# Get number of total players
scoreboard players set $player_track lobby_scoreboard 0
execute as @a[tag=player] run scoreboard players add $player_track lobby_scoreboard 1

# Re-summon marker armourstand
kill @e[type=armor_stand, tag=scoreboard_marker]
summon armor_stand 92.50 45.25 -61.50 {Marker:1b, Invisible:1b, Tags:["scoreboard_marker"]}

# Kill previous scoreboard
kill @e[type=text_display, tag=scoreboard_text]

# Reset player tracking data
scoreboard players set @a[tag=player] lobby_scoreboard -1
# Iteratively summon text for each player to form scoreboard
function minecraft:lobby/scoreboard/find_lowest