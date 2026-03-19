# Remove tagged status from one tagger that has dealt damage
#  - if the other tagger has also dealt damage in this tick, they too will have their tagging swapped, executed by the other branch
#    in the 'execute as' logic in round_loop
execute as @p[tag=player,scores={tag_data=1,damage_dealt=1..}] at @s run function minecraft:tag/rounds/tagger_handling/remove_tagger

# Make this damaged player the new tagger
function minecraft:tag/rounds/tagger_handling/assign_tagger