# Increment current level
scoreboard players add @s parkour_data 1
# Loop back to 0 if we're at 33 (max level ID is 32)
execute if score @s parkour_data matches 33.. run scoreboard players set @s parkour_data 0

execute if entity @s[tag=player, tag=!parkour_0 , scores={parkour_data=0 }] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_1 , scores={parkour_data=1 }] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_2 , scores={parkour_data=2 }] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_3 , scores={parkour_data=3 }] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_4 , scores={parkour_data=4 }] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_5 , scores={parkour_data=5 }] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_6 , scores={parkour_data=6 }] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_7 , scores={parkour_data=7 }] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_8 , scores={parkour_data=8 }] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_9 , scores={parkour_data=9 }] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_10, scores={parkour_data=10}] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_11, scores={parkour_data=11}] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_12, scores={parkour_data=12}] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_13, scores={parkour_data=13}] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_14, scores={parkour_data=14}] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_15, scores={parkour_data=15}] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_16, scores={parkour_data=16}] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_17, scores={parkour_data=17}] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_18, scores={parkour_data=18}] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_19, scores={parkour_data=19}] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_20, scores={parkour_data=20}] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_21, scores={parkour_data=21}] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_22, scores={parkour_data=22}] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_23, scores={parkour_data=23}] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_24, scores={parkour_data=24}] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_25, scores={parkour_data=25}] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_26, scores={parkour_data=26}] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_27, scores={parkour_data=27}] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_28, scores={parkour_data=28}] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_29, scores={parkour_data=29}] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_30, scores={parkour_data=30}] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_31, scores={parkour_data=31}] run function minecraft:parkour/game/skip_handling/found_next
execute if entity @s[tag=player, tag=!parkour_32, scores={parkour_data=32}] run function minecraft:parkour/game/skip_handling/found_next

# Keep searching if the uncompleted level hasn't been found
execute if score @s parkour_skip_buffer matches ..33 run function minecraft:parkour/game/skip_handling/find_next