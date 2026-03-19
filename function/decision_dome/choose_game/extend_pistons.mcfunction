# Raise pistons
fill 9 76 309 -9 76 291 redstone_block replace glass

# Clear players' inventories
clear @a[tag=player]
# Kill items
kill @e[type=item]

# Cancel eighths cycling
schedule clear minecraft:decision_dome/cycle_eighths

# Schedule game get
schedule function minecraft:decision_dome/choose_game/get_game 5s