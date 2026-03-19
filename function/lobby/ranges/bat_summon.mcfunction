# Summon bat - under the map so it can be spread
summon bat 123 43 -92 {Silent:1b,Health:1f,Tags:["bat_range"]}

# Repeat until there are 20 bats
scoreboard players add $bat_count lobby_data 1
execute if score $bat_count lobby_data matches ..19 run function minecraft:lobby/ranges/bat_summon