# Destroy cage - let players roam before starting the game
fill -1200 70 -634 -1203 73 -634 air replace honey_block destroy

# Notify players to explore the map
tellraw @a {"bold":true,"color":"aqua","text":"Explore the map! Tag will begin soon..."}
playsound block.note_block.pling player @a -1202.00 68.00 -602.00 10 1.5
