scoreboard players remove $countdown one_shot_data 1

title @a actionbar [{"text":"Starting in ","color":"yellow","bold":true,"italic":true},{"score":{"name":"$countdown","objective":"one_shot_data"},"color":"yellow","bold":true,"italic":true}]

execute if score $countdown one_shot_data matches 1.. run playsound block.note_block.pling player @a -1200.5 93 0.0 10
execute if score $countdown one_shot_data matches 0 run playsound block.note_block.pling player @a -1200.5 93 0.0 10 2

execute if score $countdown one_shot_data matches 1.. run schedule function minecraft:one_shot/game/countdown 1s
execute if score $countdown one_shot_data matches 0 run function minecraft:one_shot/game/start_game