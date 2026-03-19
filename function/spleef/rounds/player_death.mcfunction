execute at @s run playsound minecraft:entity.bat.death player @a ~ ~ ~ 99999
tellraw @a [{"selector":"@s","bold":true},{"text":" has fallen!","color":"dark_red","bold":false}]

# Tp player to a random respawn location (faces centre of arena)
tp @s @e[type=armor_stand, tag=spleef_marker, tag=respawn_location, sort=random, limit=1]

# Clear inventory
clear @s

# Set player status to dead (0)
scoreboard players set @s spleef_data 0

# Add score to alive players
scoreboard players add @a[tag=player, scores={spleef_data=1}] scores 3

scoreboard players remove $alive_players spleef_data 1