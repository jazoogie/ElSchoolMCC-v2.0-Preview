# For this player that has taken damage, we need to confidently conclude that they took damage from a tagged player
# Note: this is in a seperate function, as I'm not sure the 'if entity ...' statement will execute for each player in the 'as'.

# Check if there is a nearby tagger that has dealt damage
execute if entity @a[tag=player,scores={tag_data=1,damage_dealt=1..},distance=..7] run function minecraft:tag/rounds/tagger_handling/switch_tagger