# Stop play_round loop
schedule clear minecraft:glass/play_round
schedule clear minecraft:glass/force_move/countdown

# Kill all previous markers
kill @e[type=armor_stand, tag=glass_marker]

# Clear jump boost
effect clear @a[tag=player] jump_boost

# Hide bossbar
bossbar remove force_move

# Tp winning players to the VIP box 
tp @a[tag=player, scores={glass_data=-2}] -1226.00 155.00 601.00 -90 ~

# SFX
playsound minecraft:entity.player.levelup player @a -1199.00 151.00 601.00 99999 2

# Announce if no players won
execute unless entity @a[tag=player, scores={glass_data=-2}] run tellraw @a {"text":"Nobody survived...","color":"yellow","bold":true}

title @a title {"text":"Round end!","color":"yellow"}

# Initiate next round if applicable, otherwise end game
execute if score $round glass_data matches ..2 run schedule function minecraft:glass/round_init 10s
execute if score $round glass_data matches 3 run schedule function minecraft:glass/glass_end 10s