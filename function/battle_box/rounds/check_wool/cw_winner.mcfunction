# Clear inventory
clear @s

# Reset potion effects + saturation & regen
effect clear @s
effect give @s saturation infinite 255 true
effect give @s regeneration infinite 255 true

# Win effects
execute at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2
execute at @s run particle minecraft:totem_of_undying ^ ^1 ^2 1 1 1 1 50 force

# Mark player as a winner
scoreboard players set @s battle_box_status 2

# Grant player score for winning
scoreboard players add @s scores 40