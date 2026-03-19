# Remove their boat 
#  - don't need to grab scores and such
#  - in this scenario they're guaranteed to be closest to their own boat (they're in it)
#  - we also need to kill the anti-passenger marker in the boat too
kill @e[type=cherry_boat,tag=boat_race,sort=nearest,limit=1]
kill @e[type=armor_stand,tag=boat_race,sort=nearest,limit=1]

# Spectator
gamemode spectator @s

# Announce player finished
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2
tellraw @a [{"selector":"@s","bold":true},{"text":" has finished the race!","color":"yellow","bold":false}]

# If no more players are racing, end the whole game
scoreboard players remove $active_players boat_race_data 1
execute if score $active_players boat_race_data matches 0 run function minecraft:boat_race/boat_race_end