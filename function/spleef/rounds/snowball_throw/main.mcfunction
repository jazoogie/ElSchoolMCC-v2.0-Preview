# If there are no snowball markers, we can reset the id
execute unless entity @e[type=armor_stand, tag=snowball_marker] run scoreboard players set $id projectile_data 0

# Assign all new snowball entities a tracking id
execute as @e[type=snowball] unless score @s projectile_data matches 1.. at @s run function minecraft:spleef/rounds/snowball_throw/assign_id

# If there are snowballs, tp their respective markers to them
scoreboard players set $id_track projectile_data 0
execute if score $id projectile_data matches 1.. run function minecraft:spleef/rounds/snowball_throw/marker_tp