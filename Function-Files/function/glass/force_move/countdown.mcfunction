# Decrement timer
scoreboard players remove $force_move glass_timers 1

# Set bossbar to display second left to move
execute store result bossbar force_move value run scoreboard players get $force_move glass_timers

# If time left, schedule time tick
execute if score $force_move glass_timers matches 1.. run schedule function minecraft:glass/force_move/countdown 1s
# If time's up, kill the player
execute if score $force_move glass_timers matches ..0 as @p[tag=player, scores={glass_force=1}] at @s run function minecraft:glass/player_death