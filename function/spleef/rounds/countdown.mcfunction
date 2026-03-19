scoreboard players remove $countdown spleef_data 1

title @a actionbar [{"text":"Starting in ","color":"yellow","bold":true,"italic":true},{"score":{"name":"$countdown","objective":"spleef_data"},"color":"yellow","bold":true,"italic":true}]

execute if score $countdown spleef_data matches 1.. run playsound minecraft:block.note_block.pling player @a 0.50 101.00 -599.50 4
execute if score $countdown spleef_data matches 0 run playsound minecraft:block.note_block.pling player @a 0.50 101.00 -599.50 4 2

execute if score $countdown spleef_data matches 1.. run schedule function minecraft:spleef/rounds/countdown 1s
execute if score $countdown spleef_data matches 0 run function minecraft:spleef/rounds/round_play