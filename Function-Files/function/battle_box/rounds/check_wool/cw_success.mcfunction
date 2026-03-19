#> Process winning team and losing team
#  - we check if these players are in the given arena, and either match or don't match the winning team (there's only two teams in an arena)
# Winners
execute as @a[tag=player,scores={battle_box_status=1}] if score @s battle_box_arena = $bba_tracker battle_box_arena if score @s team_data = $tid_tracker battle_box_team_id run function minecraft:battle_box/rounds/check_wool/cw_winner
# Losers - just kill
execute as @a[tag=player,scores={battle_box_status=1}] if score @s battle_box_arena = $bba_tracker battle_box_arena unless score @s team_data = $tid_tracker battle_box_team_id run kill @s

# SFX
playsound minecraft:block.note_block.bass player @a -633.50 9999 556.50 9999

# Announce that winning team has beaten the losing team
execute if score $tid_tracker battle_box_team_id matches 1 run tellraw @a [{"text":"Red","color":"red","bold":true},{"text":" has filled their wool!","color":"gray","bold":false}]
execute if score $tid_tracker battle_box_team_id matches 2 run tellraw @a [{"text":"Orange","color":"gold","bold":true},{"text":" has filled their wool!","color":"gray","bold":false}]
execute if score $tid_tracker battle_box_team_id matches 3 run tellraw @a [{"text":"Yellow","color":"yellow","bold":true},{"text":" has filled their wool!","color":"gray","bold":false}]
execute if score $tid_tracker battle_box_team_id matches 4 run tellraw @a [{"text":"Lime","color":"green","bold":true},{"text":" has filled their wool!","color":"gray","bold":false}]
execute if score $tid_tracker battle_box_team_id matches 5 run tellraw @a [{"text":"Cyan","color":"dark_aqua","bold":true},{"text":" has filled their wool!","color":"gray","bold":false}]
execute if score $tid_tracker battle_box_team_id matches 6 run tellraw @a [{"text":"Blue","color":"blue","bold":true},{"text":" has filled their wool!","color":"gray","bold":false}]
execute if score $tid_tracker battle_box_team_id matches 7 run tellraw @a [{"text":"Purple","color":"dark_purple","bold":true},{"text":" has filled their wool!","color":"gray","bold":false}]
execute if score $tid_tracker battle_box_team_id matches 8 run tellraw @a [{"text":"Pink","color":"light_purple","bold":true},{"text":" has filled their wool!","color":"gray","bold":false}]