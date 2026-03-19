scoreboard players remove $countdown tag_data 1

title @a actionbar [{"text":"Starting in ","color":"yellow","bold":true,"italic":true},{"score":{"name":"$countdown","objective":"tag_data"},"color":"yellow","bold":true,"italic":true}]

execute if score $countdown tag_data matches 1.. run playsound minecraft:block.note_block.pling player @a -1202.00 68.00 -602.00 10
execute if score $countdown tag_data matches 0 run playsound minecraft:block.note_block.pling player @a -1202.00 68.00 -602.00 10 2

execute if score $countdown tag_data matches 1.. run schedule function minecraft:tag/rounds/round_countdown 1s
execute if score $countdown tag_data matches 0 run function minecraft:tag/rounds/round_start