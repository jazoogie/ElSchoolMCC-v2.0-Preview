# Increment id tracker
scoreboard players add $id_track projectile_data 1

# Tag the matching snowball enitity
execute as @e[type=snowball] if score @s projectile_data = $id_track projectile_data run tag @s add match
# As every snowball marker, if there is a corresponding snowball they should follow, tp to it.
# If not, the snowball was broken, and we need to summon the snowball
execute as @e[type=armor_stand, tag=snowball_marker] if score @s projectile_data = $id_track projectile_data if entity @e[type=snowball, tag=match] at @s run tp @s @e[type=snowball, tag=match, limit=1]
execute as @e[type=armor_stand, tag=snowball_marker] if score @s projectile_data = $id_track projectile_data unless entity @e[type=snowball, tag=match] at @s run function minecraft:spleef/rounds/snowball_throw/destroy_snow

tag @e[type=snowball] remove match

# Run iteratively for every concurrent ID
execute if score $id_track projectile_data < $id projectile_data run function minecraft:spleef/rounds/snowball_throw/marker_tp