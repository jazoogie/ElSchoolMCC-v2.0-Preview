# Cancel 'find_next' by setting buffer higher than max level
scoreboard players set @s parkour_skip_buffer 9999

# TP player to this new level
execute if score @s parkour_data matches 0 run tp @s -769 65 -607 -90 0
execute if score @s parkour_data matches 1 run tp @s -759 67 -607 -90 0
execute if score @s parkour_data matches 2 run tp @s -749 69 -607 -90 0
execute if score @s parkour_data matches 3 run tp @s -739 68 -607 -90 0
execute if score @s parkour_data matches 4 run tp @s -725 68 -607 -90 0
execute if score @s parkour_data matches 5 run tp @s -705 68 -607 -90 0
execute if score @s parkour_data matches 6 run tp @s -685 68 -607 -90 0
execute if score @s parkour_data matches 7 run tp @s -668 68 -607 -90 0
execute if score @s parkour_data matches 8 run tp @s -653 68 -607 -90 0
execute if score @s parkour_data matches 9 run tp @s -628 68 -607 -90 0
execute if score @s parkour_data matches 10 run tp @s -608 68 -607 -90 0
execute if score @s parkour_data matches 11 run tp @s -591 68 -607 -90 0
execute if score @s parkour_data matches 12 run tp @s -576 68 -607 -90 0
execute if score @s parkour_data matches 13 run tp @s -551 68 -607 -90 0
execute if score @s parkour_data matches 14 run tp @s -525 68 -607 -90 0
execute if score @s parkour_data matches 15 run tp @s -505 68 -607 -90 0
execute if score @s parkour_data matches 16 run tp @s -487 72 -607 -90 0
execute if score @s parkour_data matches 17 run tp @s -475 68 -607 -90 0
execute if score @s parkour_data matches 18 run tp @s -459 68 -607 -90 0
execute if score @s parkour_data matches 19 run tp @s -443 68 -607 -90 0
execute if score @s parkour_data matches 20 run tp @s -425 68 -607 0 0
execute if score @s parkour_data matches 21 run tp @s -433 68 -590 90 0
execute if score @s parkour_data matches 22 run tp @s -455 68 -590 90 0
execute if score @s parkour_data matches 23 run tp @s -477 68 -590 90 0
execute if score @s parkour_data matches 24 run tp @s -489 74 -590 90 0
execute if score @s parkour_data matches 25 run tp @s -511 74 -590 90 0
execute if score @s parkour_data matches 26 run tp @s -526 68 -590 90 0
execute if score @s parkour_data matches 27 run tp @s -546 68 -590 90 0
execute if score @s parkour_data matches 28 run tp @s -565 78 -590 90 0
execute if score @s parkour_data matches 29 run tp @s -591 78 -590 90 0
execute if score @s parkour_data matches 30 run tp @s -608 78 -590 90 0
execute if score @s parkour_data matches 31 run tp @s -626 78 -590 90 0
execute if score @s parkour_data matches 32 run tp @s -643 78 -590 90 0

# Notify player about skip
tellraw @s {"color":"aqua","text":"Skipping to the next uncompleted level..."}
# SFX
execute at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1.2