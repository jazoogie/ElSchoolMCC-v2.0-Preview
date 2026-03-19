# Loop
schedule function minecraft:final_battle/rounds/round_loop 1t

#> Inventory handling
# Give bows to only alive players with no cooldown
execute as @a[tag=player,scores={final_battle_data=1..4,final_battle_cooldown=0,died=0}] unless entity @s[nbt={Inventory:[{id:"minecraft:bow"}]}] run item replace entity @s container.0 with bow[enchantments={"minecraft:power":255},unbreakable={}]
kill @e[type=item,nbt={Item:{id:"minecraft:bow"}}]

# Move arrows in first slot to second slot
#  - see 'arrow_inventory' function for more info
execute as @a[tag=player,scores={final_battle_data=1..4,died=0}] if entity @s[nbt={Inventory:[{id:"minecraft:spectral_arrow",Slot:0b}]}] run function minecraft:final_battle/rounds/arrow/arrow_inventory


#> Cooldown handling
# Apply the cooldown (5s) to both the player who fired the bow and their teammate
execute as @a[tag=player,scores={final_battle_data=1..4,died=0}] if score @s team_data = @p[tag=player,scores={final_battle_data=1..4,died=0,used_bow=1}] team_data at @s run scoreboard players set @s final_battle_cooldown 100

# Decrement cooldown
scoreboard players remove @a[tag=player, scores={final_battle_data=1..4,final_battle_cooldown=1..}] final_battle_cooldown 1

# Tell players not on cooldown they can go to the centre to pickup arrows and use their bow
title @a[tag=player,scores={final_battle_data=1..4,died=0,final_battle_cooldown=0}] actionbar [{"color":"green","text":"✔ Centre & Bow"}]
# Warn players on cooldown that they cannot go to the centre to pickup arrows or use their bow
execute as @a[tag=player,scores={final_battle_data=1..4,died=0,final_battle_cooldown=1..}] run title @s actionbar [{"color":"red","text":"❌ Centre & Bow - "},{"score":{"name":"@s","objective":"final_battle_cooldown"}}]

# Reset used_bow for finalists
scoreboard players set @a[tag=player,scores={final_battle_data=1..4}] used_bow 0


#> Arrow & arrow entity handling
# Make arrows pickupable
execute as @e[type=spectral_arrow] run data merge entity @s {pickup:1b}

# Kill arrows that have exited the player area
execute as @e[type=spectral_arrow] positioned 0.00 74.00 600.00 if entity @s[distance=17..] run kill @s
# Kill arrow items
kill @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow"}}]

#> Arrow re-summoning
# Count how many arrows are in players' inventories
execute store result score $active_arrows final_battle_data run clear @a[tag=player,scores={final_battle_data=1..4,died=0}] spectral_arrow 0
# Add 1 for every arrow entity
execute as @e[type=spectral_arrow] run scoreboard players add $active_arrows final_battle_data 1

# If there are less than the desired number of concurrent arrows, spawn another
execute if score $active_arrows final_battle_data < $max_arrows final_battle_data run function minecraft:final_battle/rounds/arrow/arrow_summon


#> Cooldown denials
# Disallow players on cooldown from approaching the centre to pickup arrows
# Team 1
execute as @a[tag=player,scores={final_battle_data=1,died=0,final_battle_cooldown=1..}] positioned 0.00 74.00 600.00 if entity @s[distance=..3] run tp @s -7.50 74.00 607.50 -135 0
# Team 2
execute as @a[tag=player,scores={final_battle_data=2,died=0,final_battle_cooldown=1..}] positioned 0.00 74.00 600.00 if entity @s[distance=..3] run tp @s -7.50 74.00 592.50 -45 0
# Team 3
execute as @a[tag=player,scores={final_battle_data=3,died=0,final_battle_cooldown=1..}] positioned 0.00 74.00 600.00 if entity @s[distance=..3] run tp @s 7.50 74.00 592.50 45 0
# Team 4
execute as @a[tag=player,scores={final_battle_data=4,died=0,final_battle_cooldown=1..}] positioned 0.00 74.00 600.00 if entity @s[distance=..3] run tp @s 7.50 74.00 607.50 135 0

# Disallow players from leaving their quadrant
# Team 1 
execute as @a[tag=player,scores={final_battle_data=1,died=0}] at @s unless entity @s[x=-21,z=600,dx=20,dz=20] if entity @s[y=74,dy=3] run tp @s -7.50 74.00 607.50 -135 0
# Team 2 
execute as @a[tag=player,scores={final_battle_data=2,died=0}] at @s unless entity @s[x=-21,z=579,dx=20,dz=20] if entity @s[y=74,dy=3] run tp @s -7.50 74.00 592.50 -45 0
# Team 3 
execute as @a[tag=player,scores={final_battle_data=3,died=0}] at @s unless entity @s[x=0,z=579,dx=20,dz=20] if entity @s[y=74,dy=3] run tp @s 7.50 74.00 592.50 45 0
# Team 4 
execute as @a[tag=player,scores={final_battle_data=4,died=0}] at @s unless entity @s[x=0,z=600,dx=20,dz=20] if entity @s[y=74,dy=3] run tp @s 7.50 74.00 607.50 135 0

# Disallow players on cooldown from holding a bow
clear @a[tag=player,scores={final_battle_data=1..4,died=0,final_battle_cooldown=1..}] bow


# Player death handling
#  - died = 1 => player has JUST died the previous tick
#  - died = -1 => player has BEEN dead
execute as @a[tag=player, scores={final_battle_data=1..4,died=1}] run function minecraft:final_battle/rounds/player_death

# Tp players that have died to a random location around the arena
scoreboard players remove @a[tag=player,scores={final_battle_data=1..4,died=-1,final_battle_respawn=1..}] final_battle_respawn 1
execute as @a[tag=player,scores={final_battle_data=1..4,died=-1,final_battle_respawn=1}] run tp @s @e[type=armor_stand,tag=fb_arena,tag=respawn_location,sort=random,limit=1]


# Count how many teams are currently alive
scoreboard players set $alive_teams final_battle_data 0
execute if entity @a[tag=player,scores={final_battle_data=1,died=0}] run scoreboard players add $alive_teams final_battle_data 1
execute if entity @a[tag=player,scores={final_battle_data=2,died=0}] run scoreboard players add $alive_teams final_battle_data 1
execute if entity @a[tag=player,scores={final_battle_data=3,died=0}] run scoreboard players add $alive_teams final_battle_data 1
execute if entity @a[tag=player,scores={final_battle_data=4,died=0}] run scoreboard players add $alive_teams final_battle_data 1

# If only one team remains, end the round
execute if score $alive_teams final_battle_data matches ..1 run function minecraft:final_battle/rounds/round_end_queue