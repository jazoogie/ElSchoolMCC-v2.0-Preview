# Increment the current available snowball id
scoreboard players add $id projectile_data 1

# Assign this snowball the available id
scoreboard players operation @s projectile_data = $id projectile_data

# Summon the corresponding snowball stand with the same id
summon armor_stand ~ ~ ~ {Silent:1b, Marker:1b, Invisible:1b, Tags:["snowball_marker"]}
scoreboard players operation @e[type=armor_stand, tag=snowball_marker, sort=nearest, limit=1] projectile_data = @s projectile_data
