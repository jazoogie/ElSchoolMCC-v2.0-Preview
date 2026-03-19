# Announce player death
execute at @s run playsound minecraft:entity.bat.death player @a ~ ~ ~ 99999
tellraw @a [{"selector":"@s","bold":true},{"text":" has died!","color":"dark_red","bold":false}]

# Tp player to the VIP box
tp @s -1226.00 155.00 601.00 -90 ~


# Mark as dead (-1)
scoreboard players set @s glass_data -1

# Remove no. of alive players if not won - currently configured for 16 players
execute unless score @s glass_data matches -2 run scoreboard players remove $active_players glass_data 1

# If this player was 'forced', choose a new forced player
execute if entity @s[scores={glass_force=1}] run function minecraft:glass/force_move/assign