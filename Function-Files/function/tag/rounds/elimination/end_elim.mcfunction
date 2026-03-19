# Sound
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 9
# Announce explosion
tellraw @a [{"selector":"@s","bold":true},{"text":" exploded!","color":"dark_red","bold":false}]

# Removing tnt and effects
clear @s tnt
effect clear @s speed
effect clear @s jump_boost

# Set score to -1 (dead)
scoreboard players set @s tag_data -1

# Add score to alive players
scoreboard players add @a[tag=player,scores={tag_data=0}] scores 7

# Gamemode spectator
gamemode spectator @s

# Reset damage dealt / taken data
# - this could fix the same-tick elimination + tag bug that was present in the last mcc.
# - the 'round_loop' executes after 'end_elim', meaning the tagged players can be eliminated, but will still tag.
scoreboard players set @a[tag=player] damage_dealt 0
scoreboard players set @a[tag=player] damage_taken 0

# Queue elimination initialisation - to decide whether to end the round or create a new tagger
schedule function minecraft:tag/rounds/elimination/init_elim 5s