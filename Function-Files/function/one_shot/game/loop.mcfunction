# Making sure players have items
execute as @a[tag=player] unless entity @s[nbt={Inventory:[{id:"minecraft:bow"}]}] run item replace entity @s container.0 with bow[enchantments={"minecraft:power":255,"minecraft:knockback":1},unbreakable={}]
kill @e[type=item,nbt={Item:{id:"minecraft:bow"}}]
execute as @a[tag=player] unless entity @s[nbt={Inventory:[{id:"minecraft:spectral_arrow"}]}] run item replace entity @s container.1 with spectral_arrow[enchantment_glint_override=true]
kill @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow"}}]

# Arrow handling
# might be redundant: execute as @e[type=spectral_arrow] run data merge entity @s {pickup:2b}
kill @e[type=spectral_arrow, nbt={inGround:1b}]

# Respawning delayed to allow for ping - currently at 7 ticks delay (slightly noticable)
scoreboard players set @a[tag=player, scores={died=1..}] one_shot_data 7
scoreboard players set @a[tag=player] died 0

scoreboard players remove @a[tag=player, scores={one_shot_data=1..}] one_shot_data 1
execute as @a[tag=player, scores={one_shot_data=1}] at @s run function minecraft:one_shot/game/respawn

# Player kills
execute as @a[tag=player, scores={killed_player=1..}] at @s run function minecraft:one_shot/game/kill

# Effects
effect give @a[tag=player] saturation infinite 255 true
effect give @a[tag=player] speed infinite 0 true
# Only glow when they have no spawn prot.
execute as @a[tag=player] unless entity @s[nbt={active_effects:[{id:"minecraft:resistance"}]}] run effect give @s glowing infinite 0 true