schedule function minecraft:boat_race/game/loop 1t

# Force players to ride their respective boat
scoreboard players set $ride_track boat_race_data 0
function minecraft:boat_race/game/force_ride

# Mark players that have passed the checkpoints
scoreboard players set @a[tag=player,x=-2307,y=134,z=121,dx=5,dy=1,dz=14,scores={boat_checkpoint=0}] boat_checkpoint 1
scoreboard players set @a[tag=player,x=-2064,y=134,z=202,dx=13,dy=1,dz=5,scores={boat_checkpoint=1}] boat_checkpoint 2

# Grant laps to players that have passed the finish line
execute as @a[tag=player,x=-2123,y=134,z=-22,dx=3,dy=1,dz=17,scores={boat_checkpoint=2}] at @s run function minecraft:boat_race/game/lap