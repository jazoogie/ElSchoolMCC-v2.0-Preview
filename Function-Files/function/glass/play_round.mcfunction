# Loop
schedule function minecraft:glass/play_round 1t

# Anti-connecting-jumps
effect give @a[tag=player, scores={jump=1.., glass_data=0..}] jump_boost 3 255 true
scoreboard players set @a[tag=player] jump 0
# Warn players that they cannot jump
title @a[tag=player, nbt={active_effects:[{id:"minecraft:jump_boost"}]}] actionbar [{"text":"JUMP DISABLED", color:"red"}]


# Decrement timers of activated markers - 2.. as 1 is the point where they will 'reveal'.
scoreboard players remove @e[type=armor_stand, tag=glass_marker, scores={glass_timers=2..}] glass_timers 1

# Activation of 'revealed' markers
# Safe - find players who are within vicinity of the 'revealed' safe marker they are up to, and reward them once
execute as @a[tag=player, scores={glass_data=0..}] at @s if score @s glass_data = @e[type=armor_stand, tag=safe, scores={glass_timers=1}, distance=..1.9, limit=1] glass_data run function minecraft:glass/markers/safe_activate
# Unsafe - delete the platform of 'revealed' unsafe markers
execute as @e[type=armor_stand, tag=unsafe, scores={glass_timers=1}] at @s run function minecraft:glass/markers/unsafe_activate


# Check for players in vicinity of markers
# 40t = 2 seconds - needs to be below anti-connecting-jump duration minus 1.
execute as @e[type=armor_stand, tag=glass_marker, scores={glass_timers=0}] at @s if entity @a[tag=player, distance=..1.9] run scoreboard players set @s glass_timers 40

# Player deaths outside border
execute as @a[tag=player, scores={glass_data=0..}] at @s unless entity @s[y=60, dy=9999] run function minecraft:glass/player_death
execute as @a[tag=player, scores={glass_data=-2}] at @s unless entity @s[x=-1204,y=151,z=560,dx=9,dy=2,dz=7] run tp @s -1199.00 151.00 562.00 0 ~

# Player win condition - currently set to glass_data=16.. for 16 platforms
execute as @a[tag=player, scores={glass_data=16..}, x=-1204,y=151,z=560,dx=9,dy=2,dz=7] at @s run function minecraft:glass/player_win

# End round if everyone is dead, or everyone has finished
execute if score $active_players glass_data matches ..0 run function minecraft:glass/round_end