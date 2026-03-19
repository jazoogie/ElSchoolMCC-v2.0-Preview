# Set $max_arrows to 1 for the first part of the round
scoreboard players set $max_arrows final_battle_data 1
# Summon centre arrow - cool to have it here for everyone to see
function minecraft:final_battle/rounds/arrow/arrow_summon

# Assign each player in each team either of the two starting locations
tag @a[tag=player] remove fb_freeze_1
tag @a[tag=player] remove fb_freeze_2
tag @a[tag=player] remove freeze_selected
scoreboard players set $freeze_track final_battle_data 1
function minecraft:final_battle/rounds/freeze/freeze_assign

# Begin freeze looping
function minecraft:final_battle/rounds/freeze/freeze_loop

# Begin round countdown - from 5s
scoreboard players set $countdown final_battle_data 6
function minecraft:final_battle/rounds/countdown

