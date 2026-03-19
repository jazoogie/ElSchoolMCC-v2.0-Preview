scoreboard players remove $countdown final_battle_data 1

title @a actionbar [{"text":"Starting in ","color":"yellow","bold":true,"italic":true},{"score":{"name":"$countdown","objective":"final_battle_data"},"color":"yellow","bold":true,"italic":true}]

execute if score $countdown final_battle_data matches 1.. run schedule function minecraft:final_battle/rounds/countdown 1s
execute if score $countdown final_battle_data matches 0 run function minecraft:final_battle/rounds/round_start