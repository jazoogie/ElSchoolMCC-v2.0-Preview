# loop
schedule function minecraft:sumo/rounds/round_play 1t

# player deaths outside border
execute as @a[tag=player, scores={sumo_data=1}] at @s unless entity @s[y=-50, dy=9999] run function minecraft:sumo/rounds/player_death

# kill thrown items
kill @e[type=item,nbt={Item:{id:"minecraft:stick"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:wind_charge"}}]

# KB stick
# Store kb_level score in an intermediary data storage
execute store result storage kb_level kb_level int 1 run scoreboard players get $kb_level sumo_data
# Pass kb_level as a macro parameter into the kb_replace function
execute as @a[tag=player,scores={sumo_data=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:stick"}]}] run function minecraft:sumo/rounds/kb_stick/kb_replace with storage minecraft:kb_level

# wind charge replacement - cooldown of 7 seconds
# stop offhand dupe glitch
item replace entity @a[tag=player, scores={sumo_data=1}] weapon.offhand with air
execute as @a[tag=player, scores={sumo_cooldown=0, sumo_data=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:wind_charge"}]}] run scoreboard players set @s sumo_cooldown 120
scoreboard players remove @a[tag=player, scores={sumo_cooldown=1..}] sumo_cooldown 1
item replace entity @a[tag=player, scores={sumo_cooldown=1}] container.1 with wind_charge

# death barrier handling
execute as @a[tag=player, scores={sumo_data=1}] at @s run function minecraft:sumo/rounds/death_barrier/barrier_process

#> End round if only one team remains
# Reset alive_teams tracker
scoreboard players set $alive_teams sumo_data 0
# Reset team markers' sumo_data
scoreboard players set @e[type=armor_stand,tag=ts_marker] sumo_data 0
# As every team tracking marker, check if a player is alive on that team, and if so increment alive_teams
execute as @e[type=armor_stand,tag=ts_marker] run function minecraft:sumo/rounds/alive_teams

# If there are 1 or less alive teams, end the round
execute if score $alive_teams sumo_data matches 0..1 run function minecraft:sumo/rounds/round_end_queue