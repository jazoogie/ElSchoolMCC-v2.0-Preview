#> Note:
# - This loop check is because of the fact that loop.mcfunction would run AFTER transporting.mcfunction
# - This caused problems when trying to clear player inventories - loop would run thereafter and put the items back.
# - This could be fixed by delaying the item clear with /schedule, but this is a more robust solution.

schedule function minecraft:one_shot/game/loop_check 1t

execute if score $loop one_shot_data matches 1 run function minecraft:one_shot/game/loop