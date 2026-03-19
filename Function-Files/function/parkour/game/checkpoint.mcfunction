# Effects
execute at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2
execute at @s run particle minecraft:totem_of_undying ^ ^1 ^2 1 1 1 1 50 force

# Increment level counter
scoreboard players add @s parkour_completes 1

# Notify player on how many levels they have completed of 33
tellraw @s [{"bold":true,"color":"red","score":{"name":"@s","objective":"parkour_completes"}},{"bold":false,"color":"aqua","text":"/33 Levels Completed"}]

# Add score
scoreboard players add @s scores 8

# Tag player with appropriate level tag
execute if entity @s[x=-761,y=69,z=-610,dx=0,dy=3,dz=6] run tag @s add parkour_0
execute if entity @s[x=-751,y=71,z=-610,dx=0,dy=3,dz=6] run tag @s add parkour_1
execute if entity @s[x=-741,y=70,z=-610,dx=0,dy=4,dz=6] run tag @s add parkour_2
execute if entity @s[x=-728,y=70,z=-610,dx=0,dy=4,dz=6] run tag @s add parkour_3
execute if entity @s[x=-708,y=70,z=-610,dx=0,dy=4,dz=6] run tag @s add parkour_4
execute if entity @s[x=-688,y=70,z=-610,dx=0,dy=4,dz=6] run tag @s add parkour_5
execute if entity @s[x=-671,y=70,z=-611,dx=0,dy=4,dz=7] run tag @s add parkour_6
execute if entity @s[x=-656,y=70,z=-610,dx=0,dy=6,dz=6] run tag @s add parkour_7
execute if entity @s[x=-631,y=70,z=-610,dx=0,dy=6,dz=6] run tag @s add parkour_8
execute if entity @s[x=-611,y=70,z=-610,dx=0,dy=5,dz=6] run tag @s add parkour_9
execute if entity @s[x=-593,y=70,z=-610,dx=0,dy=5,dz=6] run tag @s add parkour_10
execute if entity @s[x=-578,y=70,z=-610,dx=0,dy=4,dz=6] run tag @s add parkour_11
execute if entity @s[x=-554,y=70,z=-610,dx=0,dy=3,dz=6] run tag @s add parkour_12
execute if entity @s[x=-528,y=70,z=-609,dx=0,dy=2,dz=4] run tag @s add parkour_13
execute if entity @s[x=-508,y=70,z=-610,dx=0,dy=4,dz=6] run tag @s add parkour_14
execute if entity @s[x=-490,y=74,z=-610,dx=0,dy=3,dz=6] run tag @s add parkour_15
execute if entity @s[x=-477,y=71,z=-610,dx=0,dy=4,dz=6] run tag @s add parkour_16
execute if entity @s[x=-462,y=70,z=-610,dx=0,dy=3,dz=5] run tag @s add parkour_17
execute if entity @s[x=-446,y=70,z=-610,dx=0,dy=4,dz=6] run tag @s add parkour_18
execute if entity @s[x=-428,y=70,z=-610,dx=0,dy=4,dz=6] run tag @s add parkour_19
execute if entity @s[x=-430,y=70,z=-592,dx=0,dy=4,dz=4] run tag @s add parkour_20
execute if entity @s[x=-452,y=70,z=-592,dx=0,dy=3,dz=4] run tag @s add parkour_21
execute if entity @s[x=-475,y=71,z=-593,dx=0,dy=3,dz=6] run tag @s add parkour_22
execute if entity @s[x=-486,y=76,z=-592,dx=0,dy=2,dz=5] run tag @s add parkour_23
execute if entity @s[x=-508,y=76,z=-593,dx=0,dy=3,dz=6] run tag @s add parkour_24
execute if entity @s[x=-523,y=70,z=-593,dx=0,dy=4,dz=6] run tag @s add parkour_25
execute if entity @s[x=-544,y=70,z=-591,dx=0,dy=2,dz=2] run tag @s add parkour_26
execute if entity @s[x=-562,y=80,z=-591,dx=0,dy=2,dz=2] run tag @s add parkour_27
execute if entity @s[x=-588,y=80,z=-593,dx=0,dy=4,dz=6] run tag @s add parkour_28
execute if entity @s[x=-605,y=80,z=-593,dx=0,dy=4,dz=6] run tag @s add parkour_29
execute if entity @s[x=-623,y=80,z=-593,dx=0,dy=3,dz=6] run tag @s add parkour_30
execute if entity @s[x=-640,y=80,z=-593,dx=0,dy=3,dz=6] run tag @s add parkour_31
execute if entity @s[x=-665,y=80,z=-593,dx=0,dy=4,dz=6] run tag @s add parkour_32


# Increment what level they're on - parkour_data
scoreboard players add @s parkour_data 1

# If they are now on a level they've already completed, make them skip it
execute if entity @s[tag=parkour_1 , scores={parkour_data=1 }] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_2 , scores={parkour_data=2 }] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_3 , scores={parkour_data=3 }] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_4 , scores={parkour_data=4 }] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_5 , scores={parkour_data=5 }] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_6 , scores={parkour_data=6 }] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_7 , scores={parkour_data=7 }] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_8 , scores={parkour_data=8 }] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_9 , scores={parkour_data=9 }] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_10, scores={parkour_data=10}] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_11, scores={parkour_data=11}] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_12, scores={parkour_data=12}] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_13, scores={parkour_data=13}] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_14, scores={parkour_data=14}] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_15, scores={parkour_data=15}] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_16, scores={parkour_data=16}] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_17, scores={parkour_data=17}] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_18, scores={parkour_data=18}] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_19, scores={parkour_data=19}] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_20, scores={parkour_data=20}] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_21, scores={parkour_data=21}] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_22, scores={parkour_data=22}] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_23, scores={parkour_data=23}] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_24, scores={parkour_data=24}] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_25, scores={parkour_data=25}] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_26, scores={parkour_data=26}] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_27, scores={parkour_data=27}] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_28, scores={parkour_data=28}] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_29, scores={parkour_data=29}] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_30, scores={parkour_data=30}] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_31, scores={parkour_data=31}] run function minecraft:parkour/game/skip_handling/skip_init
execute if entity @s[tag=parkour_32, scores={parkour_data=32}] run function minecraft:parkour/game/skip_handling/skip_init