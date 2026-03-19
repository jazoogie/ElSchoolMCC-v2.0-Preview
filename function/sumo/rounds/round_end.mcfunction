# stop increase_kb schedule
schedule clear minecraft:sumo/rounds/kb_stick/kb_increase

# stop death barrier descention
schedule clear minecraft:sumo/rounds/death_barrier/barrier_descend

# reset stuff
clear @a[tag=player]
kill @e[type=item,nbt={Item:{id:"minecraft:stick"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:wind_charge"}}]
kill @e[type=wind_charge]
effect clear @a[tag=player] glowing

# set players to spectator
gamemode spectator @a[tag=player]

#> Announce round winner
# SFX
execute if score $map sumo_data matches 1 run playsound minecraft:entity.player.levelup player @a 518 38 -499 99999 2
execute if score $map sumo_data matches 2 run playsound minecraft:entity.player.levelup player @a 698 28 -804 99999 2
execute if score $map sumo_data matches 3 run playsound minecraft:entity.player.levelup player @a 866 42 -1107 99999 2
execute if score $map sumo_data matches 4 run playsound minecraft:entity.player.levelup player @a 580 35 -1366 99999 2
execute if score $map sumo_data matches 5 run playsound minecraft:entity.player.levelup player @a 275 47 -1648 99999 2
# Display winner of round - only one team will be alive at round end
execute if entity @a[tag=player,team=red,scores={sumo_data=1}] run title @a title [{"text":"Red","color":"red","bold":true},{"text":" won!","color":white,"bold":false}]
execute if entity @a[tag=player,team=orange,scores={sumo_data=1}] run title @a title [{"text":"Orange","color":"gold","bold":true},{"text":" won!","color":white,"bold":false}]
execute if entity @a[tag=player,team=yellow,scores={sumo_data=1}] run title @a title [{"text":"Yellow","color":"yellow","bold":true},{"text":" won!","color":white,"bold":false}]
execute if entity @a[tag=player,team=lime,scores={sumo_data=1}] run title @a title [{"text":"Lime","color":"green","bold":true},{"text":" won!","color":white,"bold":false}]
execute if entity @a[tag=player,team=cyan,scores={sumo_data=1}] run title @a title [{"text":"Cyan","color":"dark_aqua","bold":true},{"text":" won!","color":white,"bold":false}]
execute if entity @a[tag=player,team=blue,scores={sumo_data=1}] run title @a title [{"text":"Blue","color":"blue","bold":true},{"text":" won!","color":white,"bold":false}]
execute if entity @a[tag=player,team=purple,scores={sumo_data=1}] run title @a title [{"text":"Purple","color":"dark_purple","bold":true},{"text":" won!","color":white,"bold":false}]
execute if entity @a[tag=player,team=pink,scores={sumo_data=1}] run title @a title [{"text":"Pink","color":"light_purple","bold":true},{"text":" won!","color":white,"bold":false}]

# initiate next map / event end (replace functions)
execute if score $round sumo_data matches ..1 run schedule function minecraft:sumo/rounds/round_init 7s
execute if score $round sumo_data matches 2 run schedule function minecraft:sumo/maps/map_next 10s