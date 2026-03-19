# Increment level counter - 34 levels => parkour completed
scoreboard players add @s parkour_completes 1

# Announce win
tellraw @a [{"bold":true,"selector":"@s"},{"bold":false,"color":"dark_green","text":" has completed the parkour!"}]

# Effects
summon lightning_bolt ~ ~ ~

# Add bonus completion score
scoreboard players add @s scores 5

# Spectator
gamemode spectator @s