# Summon mg_marker
#  - at origin as it's force-loaded; doesn't have to be at decision dome necessarily
summon armor_stand 0 0 0 {Marker:1b,Invisible:1b,Tags:["mg_marker"]}

# Set marker's d_dome_mg_id id to mg_marker_track
#  - need 'unless' as newly spawned armorstands don't have a score of 0, they have no score at all
execute as @e[type=armor_stand,tag=mg_marker] unless score @s d_dome_mg_id matches 1.. run scoreboard players operation @s d_dome_mg_id = $mg_marker_track d_dome_mg_id

# Increment mg_marker_track
scoreboard players add $mg_marker_track d_dome_mg_id 1
# Recursion loop - for all 8 minigames
execute if score $mg_marker_track d_dome_mg_id matches 1..8 run function minecraft:decision_dome/choose_game/summon_mg_markers