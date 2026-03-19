# NEED TO CONDUCT POINTS ANALYSIS


# Setup
gamerule fallDamage false
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule showDeathMessages false
gamerule pvp false
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
time set midnight

# Saturation
effect give @a[tag=player] saturation infinite 255 true

# Tp all into lobby area
tp @a -592.50 108.00 484.50 90 0

# Set spawnpoint - a black box near the arenas; players will be tp'd on death
spawnpoint @a[tag=player] -607 115 484

# Count the number of teams
#  - IMPORTANT: this only works assuming the number of team markers matches that of the teams in the MCC.
#               this should be the case, as is configured in dd_init.
#  - we need to create new abitrary team id's, as the fixture only uses numbers from 1 to the number of teams.
#  - e.g. if there are 3 teams, each team needs to be assigned an id between 1-3.
scoreboard players set $n_teams battle_box_team_id 0
execute as @e[type=armor_stand,tag=ts_marker] run function minecraft:battle_box/setup/assign_team_id

# Initialise fixtures - works for ANY number of teams (1-8)
execute if score $n_teams battle_box_team_id matches 2 run data merge storage minecraft:fixture {fixture:[[[1,2]]]}
execute if score $n_teams battle_box_team_id matches 3 run data merge storage minecraft:fixture {fixture:[[[2,3]],[[1,2]],[[3,1]]]}
execute if score $n_teams battle_box_team_id matches 4 run data merge storage minecraft:fixture {fixture:[[[1,4],[2,3]],[[3,4],[1,2]],[[2,4],[3,1]]]}
execute if score $n_teams battle_box_team_id matches 5 run data merge storage minecraft:fixture {fixture:[[[2,5],[3,4]],[[1,4],[2,3]],[[5,3],[1,2]],[[4,2],[5,1]],[[3,1],[4,5]]]}
execute if score $n_teams battle_box_team_id matches 6 run data merge storage minecraft:fixture {fixture:[[[1,6],[2,5],[3,4]],[[5,6],[1,4],[2,3]],[[4,6],[5,3],[1,2]],[[3,6],[4,2],[5,1]],[[2,6],[3,1],[4,5]]]}
execute if score $n_teams battle_box_team_id matches 7 run data merge storage minecraft:fixture {fixture:[[[2,7],[3,6],[4,5]],[[1,6],[2,5],[3,4]],[[7,5],[1,4],[2,3]],[[6,4],[7,3],[1,2]],[[5,3],[6,2],[7,1]],[[4,2],[5,1],[6,7]],[[3,1],[4,7],[5,6]]]}
execute if score $n_teams battle_box_team_id matches 8 run data merge storage minecraft:fixture {fixture:[[[1,8],[2,7],[3,6],[4,5]],[[7,8],[1,6],[2,5],[3,4]],[[6,8],[7,5],[1,4],[2,3]],[[5,8],[6,4],[7,3],[1,2]],[[4,8],[5,3],[6,2],[7,1]],[[3,8],[4,2],[5,1],[6,7]],[[2,8],[3,1],[4,7],[5,6]]]}

# If we can play, schedule round initialisation
execute if score $n_teams battle_box_team_id matches 2..8 run schedule function minecraft:battle_box/rounds/round_init 45s

# If there's one or no teams, just don't play the game lol
execute if score $n_teams battle_box_team_id matches 0..1 run schedule function minecraft:battle_box/battle_box_end 3s

