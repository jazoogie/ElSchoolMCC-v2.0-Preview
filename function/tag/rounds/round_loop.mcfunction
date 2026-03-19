# Loop
schedule function minecraft:tag/rounds/round_loop 1t

# Taggers keep tnt in inventory - needs to be specific as they also wear a TNT on their head
execute as @a[tag=player,scores={tag_data=1}] unless entity @s[nbt={Inventory:[{id:"minecraft:tnt",components:{"minecraft:custom_name":{"bold":true,"text":"Tag"}}}]}] run item replace entity @s container.0 with tnt[custom_name={"bold":true,"text":"Tag"}]
kill @e[type=item,nbt={Item:{id:"minecraft:tnt"}}]

# Tagger switching
#  - for non-tagged players, if they have taken damage and are not immune, swap them with the tagger that hit them
execute as @a[tag=player,scores={tag_data=0,damage_taken=1..,tag_immunity=0}] at @s run function minecraft:tag/rounds/tagger_handling/check_tagger
# Reset damage dealt / taken data
scoreboard players set @a[tag=player] damage_dealt 0
scoreboard players set @a[tag=player] damage_taken 0

# Decrement immunity timer
scoreboard players remove @a[tag=player,scores={tag_immunity=1..}] tag_immunity 1