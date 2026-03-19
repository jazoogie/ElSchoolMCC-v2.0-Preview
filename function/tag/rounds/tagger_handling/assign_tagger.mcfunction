# Assign tagger should be independent from switch tagger, as it is called in 'new_elim' without the need to remove currrent taggers

# Replace head with tnt
item replace entity @s armor.head with tnt[enchantments={"minecraft:binding_curse":1}]

# Set tag_data score to 1 (indicating player is tagged)
scoreboard players set @s tag_data 1

# Playsound effect
playsound minecraft:entity.creeper.primed player @a ~ ~ ~ 2 1.25

# Announce tag
tellraw @a [{"selector":"@s","bold":true},{"text":" is it!","color":"aqua","bold":false}]

# Potion effects for help
effect give @s speed infinite 1 true
effect give @s jump_boost infinite 1 true

# Clear glowing
effect clear @s glowing