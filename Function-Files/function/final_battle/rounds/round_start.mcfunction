# Stop holding finalists in arena
schedule clear minecraft:final_battle/rounds/freeze/freeze_loop

# Reset finalists' death status
scoreboard players set @a[tag=player, scores={final_battle_data=1..4}] died 0
# Reset finalists' killed_by_player status
scoreboard players set @a[tag=player, scores={final_battle_data=1..4}] killed_by_player 0
# Reset used_bow
scoreboard players set @a[tag=player, scores={final_battle_data=1..4}] used_bow 0
# Reset arrow_cooldown
scoreboard players set @a[tag=player, scores={final_battle_data=1..4}] final_battle_cooldown 0
# Reset respawn cooldown
scoreboard players set @a[tag=player, scores={final_battle_data=1..4}] final_battle_respawn 0

# Clear regen for finalists - to allow death in lava
effect clear @a[tag=player, scores={final_battle_data=1..4}] regeneration

# Queue second arrow spawning
schedule function minecraft:final_battle/rounds/arrow/second_arrow 10s

# Begin game loop
function minecraft:final_battle/rounds/round_loop