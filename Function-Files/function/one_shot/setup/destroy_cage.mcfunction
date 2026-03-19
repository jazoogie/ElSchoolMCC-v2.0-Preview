# Destroy cage - let players roam before starting the game
fill -1170 92 4 -1169 94 2 air destroy

# Notify players to explore the map
tellraw @a {"text":"Explore the map! One Shot will begin soon...","color":"aqua","bold":true}
playsound block.note_block.pling player @a -1200.5 93 0.0 10 1.5