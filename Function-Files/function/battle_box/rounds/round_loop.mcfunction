# Loop
schedule function minecraft:battle_box/rounds/round_loop 1t

# Check for team wins - wool has been filled in with a team's color
function minecraft:battle_box/rounds/check_wool/cw_init

# Player death handling delayed to allow for ping - currently at 7 ticks delay (slightly noticable)
scoreboard players set @a[tag=player,scores={battle_box_status=1,died=1..}] battle_box_timers 7
scoreboard players set @a[tag=player] died 0

scoreboard players remove @a[tag=player,scores={battle_box_timers=1..}] battle_box_timers 1
execute as @a[tag=player,scores={battle_box_timers=1}] at @s run function minecraft:battle_box/rounds/player_death

# Player kill handling
execute as @a[tag=player,scores={battle_box_status=1,killed_player=1}] at @s run function minecraft:battle_box/rounds/player_kill

# If there are no more alive, non-winning players in the round, end the round
execute unless entity @a[tag=player,scores={battle_box_status=1}] run function minecraft:battle_box/rounds/round_end_queue