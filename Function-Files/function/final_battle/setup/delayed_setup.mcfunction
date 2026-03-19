# Kill previous
kill @e[type=spectral_arrow]

# Reset all to white blocks
fill 15 72 615 -16 73 584 white_concrete replace red_concrete
fill 15 72 615 -16 73 584 white_concrete replace orange_concrete
fill 15 72 615 -16 73 584 white_concrete replace yellow_concrete
fill 15 72 615 -16 73 584 white_concrete replace lime_concrete
fill 15 72 615 -16 73 584 white_concrete replace cyan_concrete
fill 15 72 615 -16 73 584 white_concrete replace blue_concrete
fill 15 72 615 -16 73 584 white_concrete replace purple_concrete
fill 15 72 615 -16 73 584 white_concrete replace pink_concrete

fill 15 72 615 -16 73 584 white_stained_glass replace red_stained_glass
fill 15 72 615 -16 73 584 white_stained_glass replace orange_stained_glass
fill 15 72 615 -16 73 584 white_stained_glass replace yellow_stained_glass
fill 15 72 615 -16 73 584 white_stained_glass replace lime_stained_glass
fill 15 72 615 -16 73 584 white_stained_glass replace cyan_stained_glass
fill 15 72 615 -16 73 584 white_stained_glass replace blue_stained_glass
fill 15 72 615 -16 73 584 white_stained_glass replace purple_stained_glass
fill 15 72 615 -16 73 584 white_stained_glass replace pink_stained_glass


#> Fill quadrants with respective team colours
#  - if a player exists on the given final battle team (1-4), fill in the quadrant with their colour
# Quadrant 1
# Concrete
execute if entity @a[tag=player,team=red,scores={final_battle_data=1}] run fill -1 73 600 -16 72 615 red_concrete replace white_concrete
execute if entity @a[tag=player,team=orange,scores={final_battle_data=1}] run fill -1 73 600 -16 72 615 orange_concrete replace white_concrete
execute if entity @a[tag=player,team=yellow,scores={final_battle_data=1}] run fill -1 73 600 -16 72 615 yellow_concrete replace white_concrete
execute if entity @a[tag=player,team=lime,scores={final_battle_data=1}] run fill -1 73 600 -16 72 615 lime_concrete replace white_concrete
execute if entity @a[tag=player,team=cyan,scores={final_battle_data=1}] run fill -1 73 600 -16 72 615 cyan_concrete replace white_concrete
execute if entity @a[tag=player,team=blue,scores={final_battle_data=1}] run fill -1 73 600 -16 72 615 blue_concrete replace white_concrete
execute if entity @a[tag=player,team=purple,scores={final_battle_data=1}] run fill -1 73 600 -16 72 615 purple_concrete replace white_concrete
execute if entity @a[tag=player,team=pink,scores={final_battle_data=1}] run fill -1 73 600 -16 72 615 pink_concrete replace white_concrete
# Glass
execute if entity @a[tag=player,team=red,scores={final_battle_data=1}] run fill -1 73 600 -16 73 615 red_stained_glass replace white_stained_glass
execute if entity @a[tag=player,team=orange,scores={final_battle_data=1}] run fill -1 73 600 -16 73 615 orange_stained_glass replace white_stained_glass
execute if entity @a[tag=player,team=yellow,scores={final_battle_data=1}] run fill -1 73 600 -16 73 615 yellow_stained_glass replace white_stained_glass
execute if entity @a[tag=player,team=lime,scores={final_battle_data=1}] run fill -1 73 600 -16 73 615 lime_stained_glass replace white_stained_glass
execute if entity @a[tag=player,team=cyan,scores={final_battle_data=1}] run fill -1 73 600 -16 73 615 cyan_stained_glass replace white_stained_glass
execute if entity @a[tag=player,team=blue,scores={final_battle_data=1}] run fill -1 73 600 -16 73 615 blue_stained_glass replace white_stained_glass
execute if entity @a[tag=player,team=purple,scores={final_battle_data=1}] run fill -1 73 600 -16 73 615 purple_stained_glass replace white_stained_glass
execute if entity @a[tag=player,team=pink,scores={final_battle_data=1}] run fill -1 73 600 -16 73 615 pink_stained_glass replace white_stained_glass

# Quadrant 2
# Concrete
execute if entity @a[tag=player,team=red,scores={final_battle_data=2}] run fill -1 73 599 -16 72 584 red_concrete replace white_concrete
execute if entity @a[tag=player,team=orange,scores={final_battle_data=2}] run fill -1 73 599 -16 72 584 orange_concrete replace white_concrete
execute if entity @a[tag=player,team=yellow,scores={final_battle_data=2}] run fill -1 73 599 -16 72 584 yellow_concrete replace white_concrete
execute if entity @a[tag=player,team=lime,scores={final_battle_data=2}] run fill -1 73 599 -16 72 584 lime_concrete replace white_concrete
execute if entity @a[tag=player,team=cyan,scores={final_battle_data=2}] run fill -1 73 599 -16 72 584 cyan_concrete replace white_concrete
execute if entity @a[tag=player,team=blue,scores={final_battle_data=2}] run fill -1 73 599 -16 72 584 blue_concrete replace white_concrete
execute if entity @a[tag=player,team=purple,scores={final_battle_data=2}] run fill -1 73 599 -16 72 584 purple_concrete replace white_concrete
execute if entity @a[tag=player,team=pink,scores={final_battle_data=2}] run fill -1 73 599 -16 72 584 pink_concrete replace white_concrete
# Glass
execute if entity @a[tag=player,team=red,scores={final_battle_data=2}] run fill -1 73 599 -16 73 584 red_stained_glass replace white_stained_glass
execute if entity @a[tag=player,team=orange,scores={final_battle_data=2}] run fill -1 73 599 -16 73 584 orange_stained_glass replace white_stained_glass
execute if entity @a[tag=player,team=yellow,scores={final_battle_data=2}] run fill -1 73 599 -16 73 584 yellow_stained_glass replace white_stained_glass
execute if entity @a[tag=player,team=lime,scores={final_battle_data=2}] run fill -1 73 599 -16 73 584 lime_stained_glass replace white_stained_glass
execute if entity @a[tag=player,team=cyan,scores={final_battle_data=2}] run fill -1 73 599 -16 73 584 cyan_stained_glass replace white_stained_glass
execute if entity @a[tag=player,team=blue,scores={final_battle_data=2}] run fill -1 73 599 -16 73 584 blue_stained_glass replace white_stained_glass
execute if entity @a[tag=player,team=purple,scores={final_battle_data=2}] run fill -1 73 599 -16 73 584 purple_stained_glass replace white_stained_glass
execute if entity @a[tag=player,team=pink,scores={final_battle_data=2}] run fill -1 73 599 -16 73 584 pink_stained_glass replace white_stained_glass

# Quadrant 3
# Concrete
execute if entity @a[tag=player,team=red,scores={final_battle_data=3}] run fill 0 73 599 15 72 584 red_concrete replace white_concrete
execute if entity @a[tag=player,team=orange,scores={final_battle_data=3}] run fill 0 73 599 15 72 584 orange_concrete replace white_concrete
execute if entity @a[tag=player,team=yellow,scores={final_battle_data=3}] run fill 0 73 599 15 72 584 yellow_concrete replace white_concrete
execute if entity @a[tag=player,team=lime,scores={final_battle_data=3}] run fill 0 73 599 15 72 584 lime_concrete replace white_concrete
execute if entity @a[tag=player,team=cyan,scores={final_battle_data=3}] run fill 0 73 599 15 72 584 cyan_concrete replace white_concrete
execute if entity @a[tag=player,team=blue,scores={final_battle_data=3}] run fill 0 73 599 15 72 584 blue_concrete replace white_concrete
execute if entity @a[tag=player,team=purple,scores={final_battle_data=3}] run fill 0 73 599 15 72 584 purple_concrete replace white_concrete
execute if entity @a[tag=player,team=pink,scores={final_battle_data=3}] run fill 0 73 599 15 72 584 pink_concrete replace white_concrete
# Glass
execute if entity @a[tag=player,team=red,scores={final_battle_data=3}] run fill 0 73 599 15 73 584 red_stained_glass replace white_stained_glass
execute if entity @a[tag=player,team=orange,scores={final_battle_data=3}] run fill 0 73 599 15 73 584 orange_stained_glass replace white_stained_glass
execute if entity @a[tag=player,team=yellow,scores={final_battle_data=3}] run fill 0 73 599 15 73 584 yellow_stained_glass replace white_stained_glass
execute if entity @a[tag=player,team=lime,scores={final_battle_data=3}] run fill 0 73 599 15 73 584 lime_stained_glass replace white_stained_glass
execute if entity @a[tag=player,team=cyan,scores={final_battle_data=3}] run fill 0 73 599 15 73 584 cyan_stained_glass replace white_stained_glass
execute if entity @a[tag=player,team=blue,scores={final_battle_data=3}] run fill 0 73 599 15 73 584 blue_stained_glass replace white_stained_glass
execute if entity @a[tag=player,team=purple,scores={final_battle_data=3}] run fill 0 73 599 15 73 584 purple_stained_glass replace white_stained_glass
execute if entity @a[tag=player,team=pink,scores={final_battle_data=3}] run fill 0 73 599 15 73 584 pink_stained_glass replace white_stained_glass

# Quadrant 4
# Concrete
execute if entity @a[tag=player,team=red,scores={final_battle_data=4}] run fill 0 73 600 15 72 615 red_concrete replace white_concrete
execute if entity @a[tag=player,team=orange,scores={final_battle_data=4}] run fill 0 73 600 15 72 615 orange_concrete replace white_concrete
execute if entity @a[tag=player,team=yellow,scores={final_battle_data=4}] run fill 0 73 600 15 72 615 yellow_concrete replace white_concrete
execute if entity @a[tag=player,team=lime,scores={final_battle_data=4}] run fill 0 73 600 15 72 615 lime_concrete replace white_concrete
execute if entity @a[tag=player,team=cyan,scores={final_battle_data=4}] run fill 0 73 600 15 72 615 cyan_concrete replace white_concrete
execute if entity @a[tag=player,team=blue,scores={final_battle_data=4}] run fill 0 73 600 15 72 615 blue_concrete replace white_concrete
execute if entity @a[tag=player,team=purple,scores={final_battle_data=4}] run fill 0 73 600 15 72 615 purple_concrete replace white_concrete
execute if entity @a[tag=player,team=pink,scores={final_battle_data=4}] run fill 0 73 600 15 72 615 pink_concrete replace white_concrete
# Glass
execute if entity @a[tag=player,team=red,scores={final_battle_data=4}] run fill 0 73 600 15 73 615 red_stained_glass replace white_stained_glass
execute if entity @a[tag=player,team=orange,scores={final_battle_data=4}] run fill 0 73 600 15 73 615 orange_stained_glass replace white_stained_glass
execute if entity @a[tag=player,team=yellow,scores={final_battle_data=4}] run fill 0 73 600 15 73 615 yellow_stained_glass replace white_stained_glass
execute if entity @a[tag=player,team=lime,scores={final_battle_data=4}] run fill 0 73 600 15 73 615 lime_stained_glass replace white_stained_glass
execute if entity @a[tag=player,team=cyan,scores={final_battle_data=4}] run fill 0 73 600 15 73 615 cyan_stained_glass replace white_stained_glass
execute if entity @a[tag=player,team=blue,scores={final_battle_data=4}] run fill 0 73 600 15 73 615 blue_stained_glass replace white_stained_glass
execute if entity @a[tag=player,team=purple,scores={final_battle_data=4}] run fill 0 73 600 15 73 615 purple_stained_glass replace white_stained_glass
execute if entity @a[tag=player,team=pink,scores={final_battle_data=4}] run fill 0 73 600 15 73 615 pink_stained_glass replace white_stained_glass


# Tp all to a random position around the arena
execute as @a run tp @s @e[type=armor_stand,tag=fb_arena,tag=respawn_location,sort=random,limit=1]