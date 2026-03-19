# Increment lap
scoreboard players add @s boat_race_lap 1

# Grant points for every player this player is ahead of - TBA
tag @s add lap
execute as @a[tag=player] if score @s boat_race_lap < @p[tag=player, tag=lap] boat_race_lap run scoreboard players add @p[tag=player, tag=lap] scores 4
tag @s remove lap

# Set checkpoint status to 0
scoreboard players set @s boat_checkpoint 0

# Effects
particle minecraft:totem_of_undying ^ ^1 ^2 1 1 1 1 100 force
playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2

# If sufficient laps have been done, consider them fininshed
execute if score @s boat_race_lap matches 5 run function minecraft:boat_race/game/finished