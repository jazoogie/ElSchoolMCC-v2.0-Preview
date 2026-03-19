# Set player spawnpoints
spawnpoint @a[tag=player] -603 134 2

# Re-summon respawner armour stand at arena 2
summon armor_stand -603 134.00 2 {Marker:1b, Invisible:1b, Tags:["one_shot","respawn_location"]}

# Set map data to reflect we're now in map 2
scoreboard players set $map one_shot_data 2

# Kill everyone to respawn
kill @a[tag=player]

# Re-enable pvp
gamerule pvp true

# Begin loop - will respawn everyone to the new arena
scoreboard players set $loop one_shot_data 1
function minecraft:one_shot/game/loop_check

# Note: levitation is cleared when the player is killed - respawned
# Give slow falling - particles visible
effect give @a[tag=player] slow_falling 5 0 false