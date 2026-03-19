# Decrement timer
scoreboard players remove $timer tag_data 1

# Announce time left
execute if score $timer tag_data matches 6.. run title @a actionbar [{"score":{"name":"$timer","objective":"tag_data"},"color":"yellow","bold":true},{"text":" seconds till explosion","bold":false}]
execute if score $timer tag_data matches ..5 run title @a actionbar [{"score":{"name":"$timer","objective":"tag_data"},"color":"red","bold":true},{"text":" seconds till explosion!","color":"yellow","bold":false}]

# Reschedule timer if $timer >= 1, else end elimination
execute if score $timer tag_data matches 1.. run schedule function minecraft:tag/rounds/elimination/timer 1s
execute if score $timer tag_data matches 0 as @a[tag=player,scores={tag_data=1}] at @s run function minecraft:tag/rounds/elimination/end_elim