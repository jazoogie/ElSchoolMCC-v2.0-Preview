# Note: this will only run once permitted in init_elim - when there is more than one alive team

# Reset damage dealt / taken data
scoreboard players set @a[tag=player] damage_dealt 0
scoreboard players set @a[tag=player] damage_taken 0
# Reset immunity
scoreboard players set @a[tag=player] tag_immunity 0

# Get number of alive players
scoreboard players set $alive_players tag_data 0
execute as @a[tag=player,scores={tag_data=0}] run scoreboard players add $alive_players tag_data 1

# Assign one tagger
execute as @r[tag=player,scores={tag_data=0}] at @s run function minecraft:tag/rounds/tagger_handling/assign_tagger
# If there are more than 2 players, assign another tagger
execute if score $alive_players tag_data matches 3.. as @r[tag=player,scores={tag_data=0}] at @s run function minecraft:tag/rounds/tagger_handling/assign_tagger


# Glowing
effect give @a[tag=player,scores={tag_data=0}] glowing infinite 0 true

# Start elimination timer
scoreboard players set $timer tag_data 31
function minecraft:tag/rounds/elimination/timer