#> Info
# This function allows for some time to pass before ending the round, good for:
#  - allowing respawning players (with respawn cooldown) to be teleported properly
#  - dramatic effect

# Clear looping
schedule clear minecraft:final_battle/rounds/round_loop
# Clear second arrow schedule - essentially won't happen, as the round would have to end within 10s
schedule clear minecraft:final_battle/rounds/arrow/second_arrow

# Schedule true round end
schedule function minecraft:final_battle/rounds/round_end 1s