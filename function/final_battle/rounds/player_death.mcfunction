# Set died to -1 to not run script multiple times
scoreboard players set @s died -1

# Reset killed_by_player status
scoreboard players set @s killed_by_player 0

# Respawning delayed to allow for ping - currently at 6 ticks delay (negligible)
scoreboard players set @s final_battle_respawn 6

# Death effects
playsound minecraft:entity.bat.death player @a 0.00 74.00 600.00 2
tellraw @a [{"selector":"@s","bold":true},{"text":" has died!","color":"dark_red","bold":false}]

# Clear player's bow and arrows
clear @s bow
clear @s spectral_arrow

# Effects
effect give @s saturation infinite 255 true
effect give @s regeneration infinite 255 true