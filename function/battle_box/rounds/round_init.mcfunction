#> Resetting everything
# Kill previous effect clouds
kill @e[type=area_effect_cloud]
# Kill previous arrows
kill @e[type=arrow]
# Kill previous items
#  - items dropped by players will no longer possess a battle box tag, so we just kill all items
kill @e[type=item]

#> Saturation and regen until round saturation
effect give @a[tag=player] saturation infinite 255 true
effect give @a[tag=player] regeneration infinite 255 true

#> Fill in floors
#  - this works as air blocks that are not the missing warped slabs have been replaced with light[level=0]
# Side 1
fill -622 117 559 -620 117 409 warped_slab keep
# Side 2
fill -646 117 559 -648 117 409 warped_slab keep

#> Reset player arena and side data
# 'battle_box_arena' tracks what arena a player is currently in
scoreboard players set @a[tag=player] battle_box_arena 0
# 'battle_box_side' tracks what side a player is in their arena - i.e. side (team) 1 or 2
scoreboard players set @a[tag=player] battle_box_side 0

#> Matchup recursion
# Kill bba_marker - robust to do before every round
kill @e[type=armor_stand,tag=bba_marker]
# Summon bba_marker - 'battle box arena marker'
summon armor_stand -633.50 108.00 556.50 {Marker:1b,Invisible:1b,Tags:["bba_marker"]}

# Reset bba_tracker variable
scoreboard players set $bba_tracker battle_box_arena 1

# Process teams into their assigned arenas and matchups
function minecraft:battle_box/rounds/matchups/matchup_recur

# Record how many arenas are in use
scoreboard players operation $active_arenas battle_box_arena = $bba_tracker battle_box_arena

# Kill bba_marker
kill @e[type=armor_stand,tag=bba_marker]

#> Assign player statuses and move into arenas
# Status key:
#  2 = winner  MIGHT NOT DO THIS IF IT'S NOT NECESSARY - jesse
#  1 = alive
#  0 = dead / not playing
# Set all player statuses to not playing (0)
scoreboard players set @a[tag=player] battle_box_status 0
# Set status of players playing in this round to be alive (1)
scoreboard players set @a[tag=player,scores={battle_box_arena=1..4}] battle_box_status 1 

# Tp all players back into lobby
tp @a[tag=player] -592.50 108.00 484.50 90 0
# Tp players into arenas and subsequent sides
execute as @a[tag=player,scores={battle_box_status=1}] run function minecraft:battle_box/rounds/player_tp/tp_init


#> Round start countdown
# Reset title
title @a reset

# Begin round start countdown
scoreboard players set $countdown battle_box_timers 11
function minecraft:battle_box/rounds/round_countdown