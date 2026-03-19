# Stop main loop
schedule clear minecraft:decision_dome/loop

# Create minigame-tracking armorstands - mg_marker -> 'minigame marker', d_dome_mg_id -> 'decision dome minigame id'
kill @e[type=armor_stand,tag=mg_marker]
scoreboard players set $mg_marker_track d_dome_mg_id 1
function minecraft:decision_dome/choose_game/summon_mg_markers

# Count votes for each minigame
execute at @e[type=chicken,tag=decision_dome] if block ~ ~-2 ~ red_concrete run scoreboard players add @e[type=armor_stand,tag=mg_marker,scores={d_dome_mg_id=1}] d_dome_data 1
execute at @e[type=chicken,tag=decision_dome] if block ~ ~-2 ~ orange_concrete run scoreboard players add @e[type=armor_stand,tag=mg_marker,scores={d_dome_mg_id=2}] d_dome_data 1
execute at @e[type=chicken,tag=decision_dome] if block ~ ~-2 ~ yellow_concrete run scoreboard players add @e[type=armor_stand,tag=mg_marker,scores={d_dome_mg_id=3}] d_dome_data 1
execute at @e[type=chicken,tag=decision_dome] if block ~ ~-2 ~ lime_concrete run scoreboard players add @e[type=armor_stand,tag=mg_marker,scores={d_dome_mg_id=4}] d_dome_data 1
execute at @e[type=chicken,tag=decision_dome] if block ~ ~-2 ~ cyan_concrete run scoreboard players add @e[type=armor_stand,tag=mg_marker,scores={d_dome_mg_id=5}] d_dome_data 1
execute at @e[type=chicken,tag=decision_dome] if block ~ ~-2 ~ blue_concrete run scoreboard players add @e[type=armor_stand,tag=mg_marker,scores={d_dome_mg_id=6}] d_dome_data 1
execute at @e[type=chicken,tag=decision_dome] if block ~ ~-2 ~ purple_concrete run scoreboard players add @e[type=armor_stand,tag=mg_marker,scores={d_dome_mg_id=7}] d_dome_data 1
execute at @e[type=chicken,tag=decision_dome] if block ~ ~-2 ~ pink_concrete run scoreboard players add @e[type=armor_stand,tag=mg_marker,scores={d_dome_mg_id=8}] d_dome_data 1

# Find highest number of votes
scoreboard players operation $highest d_dome_data > @e[type=armor_stand,tag=mg_marker] d_dome_data
# Temporarily mark minigames that had a number of votes matching this max (-1)
execute as @e[type=armor_stand,tag=mg_marker] if score @s d_dome_data = $highest d_dome_data run scoreboard players set @s d_dome_data -1

# Reset $mg_id
#  - if no minigame is selected at all, we should just have nothing happen
scoreboard players set $mg_id d_dome_mg_id 0
# Select only one of these minigames
scoreboard players operation $mg_id d_dome_mg_id = @e[type=armor_stand,tag=mg_marker,scores={d_dome_data=-1},sort=random,limit=1] d_dome_mg_id

# Kill minigame-trackers
kill @e[type=armor_stand,tag=mg_marker]


#> Announce voted game
# SFX
playsound minecraft:entity.player.levelup player @a 0.5 9999 300.5 9999

# Title
execute if score $mg_id d_dome_mg_id matches 1 run title @a title {"text":"SUMO","color":"yellow"}
execute if score $mg_id d_dome_mg_id matches 1 run fill -1 77 301 -9 77 309 red_concrete replace light_gray_concrete

execute if score $mg_id d_dome_mg_id matches 2 run title @a title {"text":"PARKOUR","color":"yellow"}
execute if score $mg_id d_dome_mg_id matches 2 run fill -1 77 301 -9 77 309 red_concrete replace white_concrete

execute if score $mg_id d_dome_mg_id matches 3 run title @a title {"text":"SPLEEF","color":"yellow"}
execute if score $mg_id d_dome_mg_id matches 3 run fill -1 77 299 -9 77 291 red_concrete replace light_gray_concrete

execute if score $mg_id d_dome_mg_id matches 4 run title @a title {"text":"TAG","color":"yellow"}
execute if score $mg_id d_dome_mg_id matches 4 run fill -1 77 299 -9 77 291 red_concrete replace white_concrete

execute if score $mg_id d_dome_mg_id matches 5 run title @a title {"text":"BATTLE BOX","color":"yellow"}
execute if score $mg_id d_dome_mg_id matches 5 run fill 1 77 299 9 77 291 red_concrete replace light_gray_concrete

execute if score $mg_id d_dome_mg_id matches 6 run title @a title {"text":"ONE SHOT","color":"yellow"}
execute if score $mg_id d_dome_mg_id matches 6 run fill 1 77 299 9 77 291 red_concrete replace white_concrete

execute if score $mg_id d_dome_mg_id matches 7 run title @a title {"text":"BOAT RACE","color":"yellow"}
execute if score $mg_id d_dome_mg_id matches 7 run fill 1 77 301 9 77 309 red_concrete replace light_gray_concrete

execute if score $mg_id d_dome_mg_id matches 8 run title @a title {"text":"GLASS","color":"yellow"}
execute if score $mg_id d_dome_mg_id matches 8 run fill 1 77 301 9 77 309 red_concrete replace white_concrete


# Queue game initiation
schedule function minecraft:decision_dome/choose_game/initiate_game 10s