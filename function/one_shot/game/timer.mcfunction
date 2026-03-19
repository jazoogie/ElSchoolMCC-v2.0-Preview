schedule function minecraft:one_shot/game/timer 1s

scoreboard players remove $timer one_shot_data 1

scoreboard players operation $minutes one_shot_data = $timer one_shot_data
scoreboard players operation $minutes one_shot_data /= $60 one_shot_data
scoreboard players operation $seconds one_shot_data = $timer one_shot_data
scoreboard players operation $seconds one_shot_data %= $60 one_shot_data
execute if score $seconds one_shot_data matches ..9 run title @a actionbar [{"score":{"name":"$minutes","objective":"one_shot_data"},"color":"yellow","bold":true},{"text":":0","color":"yellow","bold":true},{"score":{"name":"$seconds","objective":"one_shot_data"},"color":"yellow","bold":true}]
execute if score $seconds one_shot_data matches 10.. run title @a actionbar [{"score":{"name":"$minutes","objective":"one_shot_data"},"color":"yellow","bold":true},{"text":":","color":"yellow","bold":true},{"score":{"name":"$seconds","objective":"one_shot_data"},"color":"yellow","bold":true}]

# 3 mins in, switch map
execute if score $timer one_shot_data matches 420 run function minecraft:one_shot/map_switch/transporting

# If timer is up, end one shot
execute if score $timer one_shot_data matches 0 run function minecraft:one_shot/one_shot_end