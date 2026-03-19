schedule function minecraft:parkour/game/loop 1t

# Level skipper item handling
execute as @a[tag=player] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick"}]}] run item replace entity @s container.0 with carrot_on_a_stick[enchantment_glint_override=true,custom_name={"bold":true,"color":"aqua","italic":false,"text":"Level Skipper"},lore=["Right-click to skip your current level."]]
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]

# Checkpoints for each region
execute as @a[tag=player,tag=!parkour_0, x=-761,y=69,z=-610,dx=0,dy=3,dz=6] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_1, x=-751,y=71,z=-610,dx=0,dy=3,dz=6] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_2, x=-741,y=70,z=-610,dx=0,dy=4,dz=6] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_3, x=-728,y=70,z=-610,dx=0,dy=4,dz=6] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_4, x=-708,y=70,z=-610,dx=0,dy=4,dz=6] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_5, x=-688,y=70,z=-610,dx=0,dy=4,dz=6] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_6, x=-671,y=70,z=-611,dx=0,dy=4,dz=7] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_7, x=-656,y=70,z=-610,dx=0,dy=6,dz=6] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_8, x=-631,y=70,z=-610,dx=0,dy=6,dz=6] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_9, x=-611,y=70,z=-610,dx=0,dy=5,dz=6] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_10,x=-593,y=70,z=-610,dx=0,dy=5,dz=6] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_11,x=-578,y=70,z=-610,dx=0,dy=4,dz=6] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_12,x=-554,y=70,z=-610,dx=0,dy=3,dz=6] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_13,x=-528,y=70,z=-609,dx=0,dy=2,dz=4] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_14,x=-508,y=70,z=-610,dx=0,dy=4,dz=6] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_15,x=-490,y=74,z=-610,dx=0,dy=3,dz=6] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_16,x=-477,y=71,z=-610,dx=0,dy=4,dz=6] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_17,x=-462,y=70,z=-610,dx=0,dy=3,dz=5] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_18,x=-446,y=70,z=-610,dx=0,dy=4,dz=6] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_19,x=-428,y=70,z=-610,dx=0,dy=4,dz=6] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_20,x=-430,y=70,z=-592,dx=0,dy=4,dz=4] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_21,x=-452,y=70,z=-592,dx=0,dy=3,dz=4] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_22,x=-475,y=71,z=-593,dx=0,dy=3,dz=6] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_23,x=-486,y=76,z=-592,dx=0,dy=2,dz=5] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_24,x=-508,y=76,z=-593,dx=0,dy=3,dz=6] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_25,x=-523,y=70,z=-593,dx=0,dy=4,dz=6] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_26,x=-544,y=70,z=-591,dx=0,dy=2,dz=2] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_27,x=-562,y=80,z=-591,dx=0,dy=2,dz=2] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_28,x=-588,y=80,z=-593,dx=0,dy=4,dz=6] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_29,x=-605,y=80,z=-593,dx=0,dy=4,dz=6] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_30,x=-623,y=80,z=-593,dx=0,dy=3,dz=6] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_31,x=-640,y=80,z=-593,dx=0,dy=3,dz=6] at @s run function minecraft:parkour/game/checkpoint
execute as @a[tag=player,tag=!parkour_32,x=-665,y=80,z=-593,dx=0,dy=4,dz=6] at @s run function minecraft:parkour/game/checkpoint

# Level skip checking
execute as @a[tag=player, scores={parkour_used_skip=1.., parkour_completes=..32}] at @s run function minecraft:parkour/game/skip_handling/skip_init
scoreboard players set @a[tag=player] parkour_used_skip 0

# Keep players on 33 levels bound to throne room
execute as @a[tag=player, scores={parkour_completes=33}] unless entity @s[x=-679,y=80,z=-596,dx=14,dy=9,dz=11] run tp @s -665.50 80.00 -589.50 90 0

# Unworthy notification - if a player hasn't completed all levels
execute as @a[tag=player, scores={parkour_completes=..32}, x=-673,y=81,z=-590,dx=0,dy=1,dz=0] at @s run function minecraft:parkour/game/unworthy
# Player win on throne - there are currently 33 levels
execute as @a[tag=player, scores={parkour_completes=33}, x=-673,y=81,z=-590,dx=0,dy=1,dz=0] at @s run function minecraft:parkour/game/player_win