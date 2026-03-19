# Block lobby area from game (only necessary for first round)
fill -1200 70 -634 -1203 73 -634 honey_block keep

# Enable pvp
gamerule pvp true

# Tp to center of arena
tp @a[tag=player] -1202.00 68.00 -602.00 -90 0

# Gamemode adventure
gamemode adventure @a[tag=player]

# Clear glowing
effect clear @a[tag=player] glowing

# Increment and announce round
scoreboard players add $round tag_data 1
tellraw @a [{"text":"Round ","color":"yellow","bold":true},{"score":{"name":"$round","objective":"tag_data"}}]

# Round countdown
scoreboard players set $countdown tag_data 11
function minecraft:tag/rounds/round_countdown