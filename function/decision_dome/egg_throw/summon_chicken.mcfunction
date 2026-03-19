# Kill any baby chickens that could've hatched
execute as @e[type=chicken, tag=!decision_dome, distance=..2] at @s run function minecraft:decision_dome/egg_throw/silent_kill

# Summon the chicken
summon chicken ~ ~ ~ {DeathLootTable:"empty", Tags:["decision_dome"], Invulnerable:1b}

# Kill self
kill @s