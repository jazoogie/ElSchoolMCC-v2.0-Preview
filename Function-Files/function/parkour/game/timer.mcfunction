# Displaying the timer for everyone

schedule function minecraft:parkour/game/timer 1s

scoreboard players remove $timer parkour_data 1

# Break seconds into mins:secs
scoreboard players operation $minutes parkour_data = $timer parkour_data
scoreboard players operation $minutes parkour_data /= $60 parkour_data
scoreboard players operation $seconds parkour_data = $timer parkour_data
scoreboard players operation $seconds parkour_data %= $60 parkour_data
execute if score $seconds parkour_data matches ..9 run title @a actionbar [{"score":{"name":"$minutes","objective":"parkour_data"},"color":"yellow","bold":true},{"text":":0","color":"yellow","bold":true},{"score":{"name":"$seconds","objective":"parkour_data"},"color":"yellow","bold":true}]
execute if score $seconds parkour_data matches 10.. run title @a actionbar [{"score":{"name":"$minutes","objective":"parkour_data"},"color":"yellow","bold":true},{"text":":","color":"yellow","bold":true},{"score":{"name":"$seconds","objective":"parkour_data"},"color":"yellow","bold":true}]

execute if score $timer parkour_data matches 0 run function minecraft:parkour/parkour_end