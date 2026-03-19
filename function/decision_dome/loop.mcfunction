schedule function minecraft:decision_dome/loop 1t

# Egg (vote) handling
function minecraft:decision_dome/egg_throw/main

# Move chickens on invalid sections
execute as @e[type=chicken, tag=decision_dome] at @s if block ~ ~-1 ~ red_concrete run function minecraft:decision_dome/chicken_spread