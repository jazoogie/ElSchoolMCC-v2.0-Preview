# If there are no egg markers, we can reset the id
execute unless entity @e[type=armor_stand, tag=egg_marker] run scoreboard players set $id projectile_data 0

# Assign all new egg entities a tracking id
execute as @e[type=egg] unless score @s projectile_data matches 1.. at @s run function minecraft:decision_dome/egg_throw/assign_id

# If there are eggs, tp their respective markers to them
scoreboard players set $id_track projectile_data 0
execute if score $id projectile_data matches 1.. run function minecraft:decision_dome/egg_throw/marker_tp