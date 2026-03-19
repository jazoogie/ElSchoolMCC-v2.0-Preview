# Increment bat kills score
scoreboard players add @s bat_kills 1

# Decrement bat_killed
scoreboard players remove @s bat_killed 1

# Playsound to player
execute at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ .2 2

# Re-summon a new bat - under the map so it can be spread
summon bat 123 43 -92 {Silent:1b,Health:1f,Tags:["bat_range"]}


# Repeat if player killed more than one bat in the same tick
execute if score @s bat_killed matches 1.. run function minecraft:lobby/ranges/bat_kill