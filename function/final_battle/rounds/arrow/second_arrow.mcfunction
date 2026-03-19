# Announce the second arrow has spawned 
tellraw @a {"bold":true,"color":"dark_purple","text":"A second arrow has spawned!"}

# Set $max_arrows to 2
#  - this will cause another arrow to spawn via the round_loop
scoreboard players set $max_arrows final_battle_data 2