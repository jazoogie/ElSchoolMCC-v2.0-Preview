scoreboard players remove $countdown sumo_data 1

title @a actionbar [{"text":"Starting in ","color":"yellow","bold":true,"italic":true},{"score":{"name":"$countdown","objective":"sumo_data"},"color":"yellow","bold":true,"italic":true}]

# Play note block sounds
execute if score $map sumo_data matches 1 positioned 518 38 -499 run function minecraft:sumo/rounds/countdown/playsound
execute if score $map sumo_data matches 2 positioned 698 28 -804 run function minecraft:sumo/rounds/countdown/playsound
execute if score $map sumo_data matches 3 positioned 866 42 -1107 run function minecraft:sumo/rounds/countdown/playsound
execute if score $map sumo_data matches 4 positioned 580 35 -1366 run function minecraft:sumo/rounds/countdown/playsound
execute if score $map sumo_data matches 5 positioned 275 47 -1648 run function minecraft:sumo/rounds/countdown/playsound

# Call start round if countdown is finished
execute if score $countdown sumo_data matches 0 run function minecraft:sumo/rounds/round_start

# Call function again if countdown not done
execute if score $countdown sumo_data matches 1.. run schedule function minecraft:sumo/rounds/countdown/countdown 1s