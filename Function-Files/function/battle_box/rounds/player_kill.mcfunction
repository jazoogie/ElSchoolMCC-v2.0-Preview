# SFX
playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2

# Tell player they've been awarded 5 points
tellraw @s {"color":"dark_gray","text":"+5 points for player kill"}

# Reset killed_player
scoreboard players set @s killed_player 0

# Grant player score for player kill
scoreboard players add @s scores 5