scoreboard players remove $countdown lobby_data 1

title @a actionbar [{"text":"Decision Dome in ","color":"yellow","bold":false},{"score":{"name":"$countdown","objective":"lobby_data"},"color":"red","bold":true}]

execute if score $countdown lobby_data matches 1..10 run playsound minecraft:block.note_block.bass player @a 86.5 44.5 -92.5 9999 0.5

execute if score $countdown lobby_data matches 1.. run schedule function minecraft:lobby/countdown 1s
execute if score $countdown lobby_data matches 0 run function minecraft:lobby/transporting