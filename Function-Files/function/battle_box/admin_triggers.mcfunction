schedule function minecraft:admin_triggers 1t

# -- Current games --
# Lobby
tp @a[scores={lobby=1}] 86.5 44.5 -92.5
scoreboard players reset @a lobby
scoreboard players enable @a[team=admin] lobby

# Decision dome
tp @a[scores={decision_dome=1}] 0.5 79 300.5
scoreboard players reset @a decision_dome
scoreboard players enable @a[team=admin] decision_dome

# Sumo
tp @a[scores={sumo_1=1}] 518.5 38 -499.5
scoreboard players reset @a sumo_1
scoreboard players enable @a[team=admin] sumo_1

tp @a[scores={sumo_2=1}] 698.5 28 -804.5
scoreboard players reset @a sumo_2
scoreboard players enable @a[team=admin] sumo_2

tp @a[scores={sumo_3=1}] 866.5 42 -1107.5
scoreboard players reset @a sumo_3
scoreboard players enable @a[team=admin] sumo_3

tp @a[scores={sumo_4=1}] 580.5 35 -1366.5
scoreboard players reset @a sumo_4
scoreboard players enable @a[team=admin] sumo_4

tp @a[scores={sumo_5=1}] 275.5 47 -1648.5
scoreboard players reset @a sumo_5
scoreboard players enable @a[team=admin] sumo_5

# Parkour
tp @a[scores={parkour=1}] -768.50 65.00 -606.50
scoreboard players reset @a parkour
scoreboard players enable @a[team=admin] parkour

# Tag
tp @a[scores={tag=1}] -1201.0 70 -638.0
scoreboard players reset @a tag
scoreboard players enable @a[team=admin] tag

# Spleef
tp @a[scores={spleef=1}] -30.50 103.00 -599.50
scoreboard players reset @a spleef
scoreboard players enable @a[team=admin] spleef

# One shot
tp @a[scores={one_shot_1=1}] -1200.5 93 0.0
scoreboard players reset @a one_shot_1
scoreboard players enable @a[team=admin] one_shot_1

tp @a[scores={one_shot_2=1}] -617.0 106 -18.0
scoreboard players reset @a one_shot_2
scoreboard players enable @a[team=admin] one_shot_2

# Boat race (waiting area)
tp @a[scores={boat_race=1}] -2227.00 186.00 -41.50
scoreboard players reset @a boat_race
scoreboard players enable @a[team=admin] boat_race

# Final battle
tp @a[scores={final_battle=1}] 0.0 82 621.0
scoreboard players reset @a final_battle
scoreboard players enable @a[team=admin] final_battle

# Rocket spleef
tp @a[scores={rocket_spleef_1=1}] 447 149 1064
scoreboard players reset @a rocket_spleef_1
scoreboard players enable @a[team=admin] rocket_spleef_1

tp @a[scores={rocket_spleef_2=1}] 1244 143 1066
scoreboard players reset @a rocket_spleef_2
scoreboard players enable @a[team=admin] rocket_spleef_2

tp @a[scores={rocket_spleef_3=1}] 2041 120 1059
scoreboard players reset @a rocket_spleef_3
scoreboard players enable @a[team=admin] rocket_spleef_3

# Glass (squid game)
tp @a[scores={glass=1}] -1199.0 151 638.0
scoreboard players reset @a glass
scoreboard players enable @a[team=admin] glass

# Battle box
tp @a[scores={battle_box=1}] -592.50 108.00 484.50
scoreboard players reset @a battle_box
scoreboard players enable @a[team=admin] battle_box


# -- Game start triggers --
execute if entity @a[scores={lobby.s=1}] run function minecraft:lobby/lobby_start
scoreboard players reset @a lobby.s
scoreboard players enable @a[team=admin] lobby.s

execute if entity @a[scores={mcc.s=1}] run function minecraft:lobby/mcc_start
scoreboard players reset @a mcc.s
scoreboard players enable @a[team=admin] mcc.s



# -- Archaic triggers --
# Old lobby
tp @a[scores={lobby_old=1}] 8.50 4.00 8.50
scoreboard players reset @a lobby_old
scoreboard players enable @a[team=admin] lobby_old

# Old boat race (waiting area)
tp @a[scores={boat_race_old=1}] -529.50 147.00 1071.50
scoreboard players reset @a boat_race_old
scoreboard players enable @a[team=admin] boat_race_old