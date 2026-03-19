# Reset bats out of arena (or too high)
execute as @e[type=bat, tag=bat_range] unless entity @s[x=114,y=44,z=-102,dx=18,dy=12,dz=18] run function minecraft:lobby/ranges/bat_reset

# Bat kill handling - SFX, re-summon, etc
execute as @a[tag=player,scores={bat_killed=1..}] run function minecraft:lobby/ranges/bat_kill


# Tag players in bat range
tag @a[tag=player,x=114,y=44,z=-102,dx=18,dy=21,dz=18] add lobby_bat_player

# Give players swords
item replace entity @a[tag=player, tag=lobby_bat_player] container.0 with wooden_sword

# Clear player swords
clear @a[tag=player, tag=!lobby_bat_player] wooden_sword

# Remove tag
tag @a[tag=player, tag=lobby_bat_player] remove lobby_bat_player