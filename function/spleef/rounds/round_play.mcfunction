schedule function minecraft:spleef/rounds/round_play 1t

# Exploding snowball
function minecraft:spleef/rounds/snowball_throw/main

# Give players explod-o-balls for every 10 snow blocks mined
give @a[tag=player, scores={snow_mined=10..}] snowball[custom_name={"bold":true,"color":"red","text":"Explode-O-Ball"}]
scoreboard players set @a[tag=player, scores={snow_mined=10..}] snow_mined 0

# Golden shovel
#  - only present in alive players' hotbars
kill @e[type=item,nbt={Item:{id:"minecraft:golden_shovel"}}]
execute as @a[tag=player,scores={spleef_data=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:golden_shovel"}]}] at @s run item replace entity @a container.0 with golden_shovel[enchantments={"minecraft:efficiency":5},unbreakable={},custom_name={"bold":true,"color":"yellow","text":"Spleef Shovel"},can_break=[{blocks:"snow_block"}]]

# Player death handling
execute as @a[tag=player] at @s unless entity @s[y=14, dy=9999] run function minecraft:spleef/rounds/player_death


#> End round if only one team remains
# Reset alive_teams tracker
scoreboard players set $alive_teams spleef_data 0
# Reset team markers' spleef_data
scoreboard players set @e[type=armor_stand,tag=ts_marker] spleef_data 0
# As every team tracking marker, check if a player is alive on that team, and if so increment alive_teams
execute as @e[type=armor_stand,tag=ts_marker] run function minecraft:spleef/rounds/alive_teams

# If there are 1 or less alive teams, end the round
execute if score $alive_teams spleef_data matches 0..1 run function minecraft:spleef/rounds/round_end_queue