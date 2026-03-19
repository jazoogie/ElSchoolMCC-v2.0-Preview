# Gamerules and such
gamerule doFireTick false
gamerule fallDamage false
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule showDeathMessages false
gamerule pvp true
team modify red collisionRule always
team modify orange collisionRule always
team modify yellow collisionRule always
team modify lime collisionRule always
team modify cyan collisionRule always
team modify blue collisionRule always
team modify purple collisionRule always
team modify pink collisionRule always
team modify red friendlyFire false
team modify orange friendlyFire false
team modify yellow friendlyFire false
team modify lime friendlyFire false
team modify cyan friendlyFire false
team modify blue friendlyFire false
team modify purple friendlyFire false
team modify pink friendlyFire false


# Scoreboard resetting and stuff
scoreboard objectives remove final_battle_team_scores
scoreboard objectives add final_battle_team_scores dummy "Final Battle Scores"
scoreboard objectives setdisplay sidebar final_battle_team_scores

# Add and format (both in one step) finalist teams display names for the "Final Battle Scores" scoreboard
execute as @e[type=armor_stand,tag=ts_marker,scores={final_battle_data=2,team_data=1}] run scoreboard players display name @s final_battle_team_scores {"text":"Red", color:"red"}
execute as @e[type=armor_stand,tag=ts_marker,scores={final_battle_data=2,team_data=2}] run scoreboard players display name @s final_battle_team_scores {"text":"Orange", color:"gold"}
execute as @e[type=armor_stand,tag=ts_marker,scores={final_battle_data=2,team_data=3}] run scoreboard players display name @s final_battle_team_scores {"text":"Yellow", color:"yellow"}
execute as @e[type=armor_stand,tag=ts_marker,scores={final_battle_data=2,team_data=4}] run scoreboard players display name @s final_battle_team_scores {"text":"Lime", color:"green"}
execute as @e[type=armor_stand,tag=ts_marker,scores={final_battle_data=2,team_data=5}] run scoreboard players display name @s final_battle_team_scores {"text":"Cyan", color:"dark_aqua"}
execute as @e[type=armor_stand,tag=ts_marker,scores={final_battle_data=2,team_data=6}] run scoreboard players display name @s final_battle_team_scores {"text":"Blue", color:"blue"}
execute as @e[type=armor_stand,tag=ts_marker,scores={final_battle_data=2,team_data=7}] run scoreboard players display name @s final_battle_team_scores {"text":"Purple", color:"dark_purple"}
execute as @e[type=armor_stand,tag=ts_marker,scores={final_battle_data=2,team_data=8}] run scoreboard players display name @s final_battle_team_scores {"text":"Pink", color:"light_purple"}


# Tp and spawnpoint - players will be spread around arena with delayed_setup
tp @a 0.0 82 621.0 180 0
spawnpoint @a 0 82 621 180 0

# Delayed setup
schedule function minecraft:final_battle/setup/delayed_setup 6t

# Give all players regen and saturation
effect give @a[tag=player] saturation infinite 255 true
effect give @a[tag=player] regeneration infinite 255 true

# Queue first round start
schedule function minecraft:final_battle/rounds/round_init 10s