# Pick lowest scoring player and set them in their applicable spot
scoreboard players set $lowest lobby_scoreboard 999999
scoreboard players operation $lowest lobby_scoreboard < @a[tag=player, scores={lobby_scoreboard=-1}] scores
# Temporary set all lowest scoring players to -2, to pick only one of them - give score of 0
execute as @a[tag=player, scores={lobby_scoreboard=-1}] if score @s scores = $lowest lobby_scoreboard run scoreboard players set @s lobby_scoreboard -2
scoreboard players set @r[tag=player, scores={lobby_scoreboard=-2}] lobby_scoreboard 0
# Reset all non-selected players
scoreboard players set @a[tag=player, scores={lobby_scoreboard=-2}] lobby_scoreboard -1

# Summon text for this lowest-score selected player
execute as @e[type=armor_stand, tag=scoreboard_marker, limit=1] at @s run function minecraft:lobby/scoreboard/summon_text