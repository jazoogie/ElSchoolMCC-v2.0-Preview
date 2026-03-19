# Enable pvp
gamerule pvp true

# Reset kills, deaths
scoreboard players set @a[tag=player] killed_player 0
scoreboard players set @a[tag=player] died 0

# Reset map score
scoreboard players set $map one_shot_data 1

# Set spawnpoint on top of arena 1 (over barriers)
spawnpoint @a[tag=player] -1198 126 -1

# Re-summon respawner armour stand - killed for safety
kill @e[type=armor_stand, tag=one_shot, tag=respawn_location]
summon armor_stand -1198 126 -1 {Marker:1b, Invisible:1b, Tags:["one_shot","respawn_location"]}

# Start the game timer
scoreboard players set $timer one_shot_data 600
function minecraft:one_shot/game/timer

# Start game loop
scoreboard players set $loop one_shot_data 1
function minecraft:one_shot/game/loop_check
