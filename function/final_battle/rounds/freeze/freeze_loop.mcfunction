# Loop
schedule function minecraft:final_battle/rounds/freeze/freeze_loop 1t

#> Hold finalists in arena
# Team 1
tp @a[tag=player,scores={final_battle_data=1},tag=fb_freeze_1] -3.50 74.00 611.50
tp @a[tag=player,scores={final_battle_data=1},tag=fb_freeze_2] -11.50 74.00 603.50
# Team 2
tp @a[tag=player,scores={final_battle_data=2},tag=fb_freeze_1] -11.50 74.00 596.50
tp @a[tag=player,scores={final_battle_data=2},tag=fb_freeze_2] -3.50 74.00 588.50
# Team 3
tp @a[tag=player,scores={final_battle_data=3},tag=fb_freeze_1] 3.50 74.00 588.50
tp @a[tag=player,scores={final_battle_data=3},tag=fb_freeze_2] 11.50 74.00 596.50
# Team 4
tp @a[tag=player,scores={final_battle_data=4},tag=fb_freeze_1] 11.50 74.00 603.50
tp @a[tag=player,scores={final_battle_data=4},tag=fb_freeze_2] 3.50 74.00 611.50