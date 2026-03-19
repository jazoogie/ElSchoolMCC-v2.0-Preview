# Increment id tracker
scoreboard players add $id_track projectile_data 1

# Tag the matching egg enitity
execute as @e[type=egg] if score @s projectile_data = $id_track projectile_data run tag @s add match
# As every egg marker, if there is a corresponding egg they should follow, tp to it.
# If not, the egg was broken, and we need to summon the chicken
execute as @e[type=armor_stand, tag=egg_marker] if score @s projectile_data = $id_track projectile_data if entity @e[type=egg, tag=match] run tp @s @e[type=egg, tag=match, limit=1]
execute as @e[type=armor_stand, tag=egg_marker] if score @s projectile_data = $id_track projectile_data unless entity @e[type=egg, tag=match] at @s run function minecraft:decision_dome/egg_throw/summon_chicken

tag @e[type=egg] remove match

# Run iteratively for every concurrent ID
execute if score $id_track projectile_data < $id projectile_data run function minecraft:decision_dome/egg_throw/marker_tp