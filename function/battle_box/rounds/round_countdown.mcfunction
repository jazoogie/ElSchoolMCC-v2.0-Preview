scoreboard players remove $countdown battle_box_timers 1

title @a actionbar [{"text":"Starting in ","color":"yellow","bold":true,"italic":true},{"score":{"name":"$countdown","objective":"battle_box_timers"},"color":"yellow","bold":true,"italic":true}]

# SFX
execute if score $countdown battle_box_timers matches 1.. run playsound minecraft:block.note_block.pling player @a -620.50 9999 556.50 9999
execute if score $countdown battle_box_timers matches 0 run playsound minecraft:block.note_block.pling player @a -620.50 9999 556.50 9999 2

# If countdown is not done, repeat
execute if score $countdown battle_box_timers matches 1.. run schedule function minecraft:battle_box/rounds/round_countdown 1s
# If countdown is done, start round
execute if score $countdown battle_box_timers matches 0 run function minecraft:battle_box/rounds/round_start