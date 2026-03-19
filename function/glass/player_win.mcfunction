# Announce player win
execute at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2
execute at @s run particle minecraft:totem_of_undying ^ ^1 ^1 1 1 1 1 100 force
tellraw @a [{"selector":"@s","bold":true},{"text":" has won!","color":"dark_green","bold":false}]

# Give player their win bonus score (TBA)
scoreboard players add @s scores 30

# Set player status to won (-2)
scoreboard players set @s glass_data -2

# Remove no. of alive players
scoreboard players remove $active_players glass_data 1

# If this player was 'forced', choose a new forced player
execute if entity @s[scores={glass_force=1}] run function minecraft:glass/force_move/assign