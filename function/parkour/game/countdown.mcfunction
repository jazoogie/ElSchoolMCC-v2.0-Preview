# Announce game beginning
scoreboard players remove $countdown parkour_data 1

title @a actionbar [{"text":"Starting in ","color":"yellow","bold":true,"italic":true},{"score":{"name":"$countdown","objective":"parkour_data"},"color":"yellow","bold":true,"italic":true}]

execute if score $countdown parkour_data matches 1.. run playsound minecraft:block.note_block.pling player @a -768.50 65.00 -606.50 10
execute if score $countdown parkour_data matches 0 run playsound minecraft:block.note_block.pling player @a -768.50 65.00 -606.50 10 2

execute if score $countdown parkour_data matches 1.. run schedule function minecraft:parkour/game/countdown 1s
execute if score $countdown parkour_data matches 0 run function minecraft:parkour/game/start_game