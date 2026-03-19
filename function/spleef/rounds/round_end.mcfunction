# Clear inventories
clear @a[tag=player]

# Tp surviving players to outside 
execute as @a[tag=player, scores={spleef_data=1}] run tp @s @e[type=armor_stand, tag=spleef_marker, tag=respawn_location, sort=random, limit=1]

# SFX
playsound minecraft:entity.player.levelup player @a 0.50 101.00 -599.50 3 2
# Display winner of round - only one team will be alive at round end
execute if entity @a[tag=player,team=red,scores={spleef_data=1}] run title @a title [{"text":"Red","color":"red","bold":true},{"text":" won!","color":white,"bold":false}]
execute if entity @a[tag=player,team=orange,scores={spleef_data=1}] run title @a title [{"text":"Orange","color":"gold","bold":true},{"text":" won!","color":white,"bold":false}]
execute if entity @a[tag=player,team=yellow,scores={spleef_data=1}] run title @a title [{"text":"Yellow","color":"yellow","bold":true},{"text":" won!","color":white,"bold":false}]
execute if entity @a[tag=player,team=lime,scores={spleef_data=1}] run title @a title [{"text":"Lime","color":"green","bold":true},{"text":" won!","color":white,"bold":false}]
execute if entity @a[tag=player,team=cyan,scores={spleef_data=1}] run title @a title [{"text":"Cyan","color":"dark_aqua","bold":true},{"text":" won!","color":white,"bold":false}]
execute if entity @a[tag=player,team=blue,scores={spleef_data=1}] run title @a title [{"text":"Blue","color":"blue","bold":true},{"text":" won!","color":white,"bold":false}]
execute if entity @a[tag=player,team=purple,scores={spleef_data=1}] run title @a title [{"text":"Purple","color":"dark_purple","bold":true},{"text":" won!","color":white,"bold":false}]
execute if entity @a[tag=player,team=pink,scores={spleef_data=1}] run title @a title [{"text":"Pink","color":"light_purple","bold":true},{"text":" won!","color":white,"bold":false}]

# Currently set to 7 rounds
execute if score $round spleef_data matches ..6 run schedule function minecraft:spleef/rounds/round_start 10s
execute if score $round spleef_data matches 7 run schedule function minecraft:spleef/spleef_end 10s
