# Note: this function is executed as the armorstand marker

# Summon text display - at new armorstand location
# White (no shadow) - 4th, 5th, ...
execute if score $player_track lobby_scoreboard matches 4.. run summon text_display ~ ~ ~ {billboard:"vertical",Tags:["scoreboard_text"],text:[{"bold":true,"color":"yellow","score":{"name":"$player_track","objective":"lobby_scoreboard"}},". ",{"bold":false,"color":"white","selector":"@p[tag=player, scores={lobby_scoreboard=0}]"},{"bold":false,"color":"white","text":" - "},{"bold":true,"color":"white","score":{"name":"@p[tag=player, scores={lobby_scoreboard=0}]","objective":"scores"}}]}
# Bronze shadow - 3rd
execute if score $player_track lobby_scoreboard matches 3 run summon text_display ~ ~ ~ {billboard:"vertical",Tags:["scoreboard_text"],text:[{"bold":true,"color":"yellow","score":{"name":"$player_track","objective":"lobby_scoreboard"}},". ",{"bold":false,"color":"#CD7F32","selector":"@p[tag=player, scores={lobby_scoreboard=0}]","shadow_color":-936174336},{"bold":false,"color":"#CD7F32","shadow_color":-936174336,"text":" - "},{"bold":true,"color":"#CD7F32","score":{"name":"@p[tag=player, scores={lobby_scoreboard=0}]","objective":"scores"},"shadow_color":-936174336}]}
# Silver shadow - 2nd
execute if score $player_track lobby_scoreboard matches 2 run summon text_display ~ ~ ~ {billboard:"vertical",Tags:["scoreboard_text"],text:[{"bold":true,"color":"yellow","score":{"name":"$player_track","objective":"lobby_scoreboard"}},". ",{"bold":false,"color":"#C0C0C0","selector":"@p[tag=player, scores={lobby_scoreboard=0}]","shadow_color":-936892119},{"bold":false,"color":"#C0C0C0","shadow_color":-936892119,"text":" - "},{"bold":true,"color":"#C0C0C0","score":{"name":"@p[tag=player, scores={lobby_scoreboard=0}]","objective":"scores"},"shadow_color":-936892119}]}
# Gold shadow - 1st
execute if score $player_track lobby_scoreboard matches 1 run summon text_display ~ ~ ~ {billboard:"vertical",Tags:["scoreboard_text"],text:[{"bold":true,"color":"yellow","score":{"name":"$player_track","objective":"lobby_scoreboard"}},". ",{"bold":false,"color":"#F5C430","selector":"@p[tag=player, scores={lobby_scoreboard=0}]","shadow_color":-12829379},{"bold":false,"color":"#F5C430","shadow_color":-12829379,"text":" - "},{"bold":true,"color":"#F5C430","score":{"name":"@p[tag=player, scores={lobby_scoreboard=0}]","objective":"scores"},"shadow_color":-12829379}]}


# Increment all players that have been selected (including the current selection) so they aren't targeted again
scoreboard players add @a[tag=player, scores={lobby_scoreboard=0..}] lobby_scoreboard 1

# Move armorstand up
tp @s ~ ~0.25 ~

# Decrement player_track tracker
scoreboard players remove $player_track lobby_scoreboard 1
# Repeat if there are more players
execute if score $player_track lobby_scoreboard matches 1.. run function minecraft:lobby/scoreboard/find_lowest