# Increase kb level
scoreboard players add $kb_level sumo_data 1

# Clear current outdated kb stick
clear @a[tag=player, scores={sumo_data=1}] stick

# Announce kb increase
tellraw @a [{"color":"aqua","text":"Knockback has increased to level "},{"bold":true,"color":"red","score":{"name":"$kb_level","objective":"sumo_data"}}]
execute if score $map sumo_data matches 1 run playsound minecraft:entity.elder_guardian.ambient player @a 518 38 -499 99999 2
execute if score $map sumo_data matches 2 run playsound minecraft:entity.elder_guardian.ambient player @a 698 28 -804 99999 2
execute if score $map sumo_data matches 3 run playsound minecraft:entity.elder_guardian.ambient player @a 866 42 -1107 99999 2
execute if score $map sumo_data matches 4 run playsound minecraft:entity.elder_guardian.ambient player @a 580 35 -1366 99999 2
execute if score $map sumo_data matches 5 run playsound minecraft:entity.elder_guardian.ambient player @a 275 47 -1648 99999 2

# Reschedule kb level increase if applicable - up to level 3
execute if score $kb_level sumo_data matches ..2 run schedule function minecraft:sumo/rounds/kb_stick/kb_increase 30s