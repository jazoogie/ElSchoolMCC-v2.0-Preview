# Stop gameplay looping
schedule clear minecraft:tag/rounds/round_loop

# Gamemode spectator
gamemode spectator @a[tag=player]

# SFX
playsound minecraft:entity.player.levelup player @a -1202.00 68.00 -602.00 10
# Display winner of round - only one team will be alive at round end
execute if entity @a[tag=player,team=red,scores={tag_data=0}] run title @a title [{"text":"Red","color":"red","bold":true},{"text":" won!","color":white,"bold":false}]
execute if entity @a[tag=player,team=orange,scores={tag_data=0}] run title @a title [{"text":"Orange","color":"gold","bold":true},{"text":" won!","color":white,"bold":false}]
execute if entity @a[tag=player,team=yellow,scores={tag_data=0}] run title @a title [{"text":"Yellow","color":"yellow","bold":true},{"text":" won!","color":white,"bold":false}]
execute if entity @a[tag=player,team=lime,scores={tag_data=0}] run title @a title [{"text":"Lime","color":"green","bold":true},{"text":" won!","color":white,"bold":false}]
execute if entity @a[tag=player,team=cyan,scores={tag_data=0}] run title @a title [{"text":"Cyan","color":"dark_aqua","bold":true},{"text":" won!","color":white,"bold":false}]
execute if entity @a[tag=player,team=blue,scores={tag_data=0}] run title @a title [{"text":"Blue","color":"blue","bold":true},{"text":" won!","color":white,"bold":false}]
execute if entity @a[tag=player,team=purple,scores={tag_data=0}] run title @a title [{"text":"Purple","color":"dark_purple","bold":true},{"text":" won!","color":white,"bold":false}]
execute if entity @a[tag=player,team=pink,scores={tag_data=0}] run title @a title [{"text":"Pink","color":"light_purple","bold":true},{"text":" won!","color":white,"bold":false}]

# New round if round <= 2, else end tag
execute if score $round tag_data matches ..2 run schedule function minecraft:tag/rounds/round_init 7s
execute if score $round tag_data matches 3 run schedule function minecraft:tag/tag_end 10s