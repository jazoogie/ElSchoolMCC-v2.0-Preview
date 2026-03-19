# Start the timer for them to make a move
scoreboard players set $force_move glass_timers 21

# Announce impending doom :)
tellraw @a [{"selector":"@s","bold":true},{"text":" has 20 seconds...","color":"dark_red","bold":false}]
particle minecraft:smoke ~ ~2 ~ 0.2 0.2 0.2 .02 25

# Start the countdown
function minecraft:glass/force_move/countdown