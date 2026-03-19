# decrement sumo barrier score
scoreboard players remove @s sumo_barrier 1


# warn player of impending death
# only play sound once
execute if score @s sumo_barrier matches 100 run playsound minecraft:entity.elder_guardian.curse player @s ~ ~ ~ 0.4
particle smoke ~ ~2.1 ~ 0.2 0.2 0.2 .02 4
title @s actionbar [{"color":"red","text":"Descend or Die - "},{"score":{"name":"@s","objective":"sumo_barrier"}}]

# if sumo barrier score is 0 (time has run out), kill the player
execute if score @s sumo_barrier matches ..0 run function minecraft:sumo/rounds/player_death