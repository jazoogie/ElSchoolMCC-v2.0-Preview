# announce player death
execute at @s run playsound minecraft:entity.bat.death player @a ~ ~ ~ 99999
tellraw @a [{"selector":"@s","bold":true},{"text":" has died!","color":"dark_red","bold":false}]

# tp player
execute if score $map sumo_data matches 1 run tp @s 518.5 38 -499.5
execute if score $map sumo_data matches 2 run tp @s 698.5 28 -804.5
execute if score $map sumo_data matches 3 run tp @s 866.5 42 -1107.5
execute if score $map sumo_data matches 4 run tp @s 580.5 35 -1366.5
execute if score $map sumo_data matches 5 run tp @s 275.5 47 -1648.5

gamemode spectator @s

# Add score to alive players
scoreboard players set @s sumo_data 0
scoreboard players add @a[tag=player,scores={sumo_data=1}] scores 2

# reset sumo cooldown (robustness)
scoreboard players set @s sumo_cooldown 0