# Remove snow from adjacent area
fill ~-0.5 ~-1 ~-0.5 ~0.5 ~-0.5 ~0.5 air replace snow_block destroy
fill ~-1.3 ~ ~-1.3 ~1.3 ~ ~1.3 air replace snow_block destroy

# Play tnt sound
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.1 1.5

# Kill snowball marker
kill @s