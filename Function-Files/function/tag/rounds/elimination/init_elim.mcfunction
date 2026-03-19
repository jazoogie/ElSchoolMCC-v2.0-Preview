#> Count number of alive teams
# Reset alive_teams tracker
scoreboard players set $alive_teams tag_data 0
# Reset team markers' tag_data
scoreboard players set @e[type=armor_stand,tag=ts_marker] tag_data 0
# As every team tracking marker, check if a player is alive on that team, and if so increment alive_teams
execute as @e[type=armor_stand,tag=ts_marker] run function minecraft:tag/rounds/elimination/alive_teams


#> Check if a new elimination (tagger) should be assigned, or we should end the round - one team is left standing
# New tagger
execute if score $alive_teams tag_data matches 2.. run function minecraft:tag/rounds/elimination/new_elim
# End round
execute if score $alive_teams tag_data matches 0..1 run function minecraft:tag/rounds/round_end