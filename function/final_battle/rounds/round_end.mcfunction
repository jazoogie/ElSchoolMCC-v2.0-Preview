# Tp winners out of the arena
execute as @a[tag=player,scores={final_battle_data=1..4,died=0}] run tp @s @e[type=armor_stand,tag=fb_arena,tag=respawn_location,sort=random,limit=1]

# Give regen to winners
effect give @a[tag=player,scores={final_battle_data=1..4,died=0}] regeneration infinite 255 true

# Reset
title @a reset
clear @a[tag=player, scores={final_battle_data=1..4}] stick
clear @a[tag=player, scores={final_battle_data=1..4}] bow
clear @a[tag=player, scores={final_battle_data=1..4}] spectral_arrow
kill @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow"}}]
kill @e[type=spectral_arrow]

# Display winner of round - only one team will be alive at round end
execute if entity @a[tag=player,team=red,scores={final_battle_data=1..4,died=0}] run title @a title [{"text":"Red","color":"red","bold":true},{"text":" won!","color":white,"bold":false}]
execute if entity @a[tag=player,team=orange,scores={final_battle_data=1..4,died=0}] run title @a title [{"text":"Orange","color":"gold","bold":true},{"text":" won!","color":white,"bold":false}]
execute if entity @a[tag=player,team=yellow,scores={final_battle_data=1..4,died=0}] run title @a title [{"text":"Yellow","color":"yellow","bold":true},{"text":" won!","color":white,"bold":false}]
execute if entity @a[tag=player,team=lime,scores={final_battle_data=1..4,died=0}] run title @a title [{"text":"Lime","color":"green","bold":true},{"text":" won!","color":white,"bold":false}]
execute if entity @a[tag=player,team=cyan,scores={final_battle_data=1..4,died=0}] run title @a title [{"text":"Cyan","color":"dark_aqua","bold":true},{"text":" won!","color":white,"bold":false}]
execute if entity @a[tag=player,team=blue,scores={final_battle_data=1..4,died=0}] run title @a title [{"text":"Blue","color":"blue","bold":true},{"text":" won!","color":white,"bold":false}]
execute if entity @a[tag=player,team=purple,scores={final_battle_data=1..4,died=0}] run title @a title [{"text":"Purple","color":"dark_purple","bold":true},{"text":" won!","color":white,"bold":false}]
execute if entity @a[tag=player,team=pink,scores={final_battle_data=1..4,died=0}] run title @a title [{"text":"Pink","color":"light_purple","bold":true},{"text":" won!","color":white,"bold":false}]
# SFX
playsound minecraft:entity.player.levelup player @a 0.00 74.00 600.00 2

# Add one point to winning team
execute as @e[type=armor_stand,tag=ts_marker,scores={final_battle_data=2}] if score @s team_data = @p[tag=player,scores={final_battle_data=1..4,died=0}] team_data run scoreboard players add @s final_battle_team_scores 1

# Schedule commencement of next round - to be cancelled if needed
schedule function minecraft:final_battle/rounds/round_init 7s

# If a team has scored 3 points, they have won the MCC!
#  - this logic will cancel the schedule for the next round and queue the final_battle_end
execute if entity @e[type=armor_stand,tag=ts_marker,scores={final_battle_data=2,final_battle_team_scores=3..}] run function minecraft:final_battle/final_battle_end_queue