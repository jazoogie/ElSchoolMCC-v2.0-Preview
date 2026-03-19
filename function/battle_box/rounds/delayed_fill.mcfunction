# Re-fill floors
# Side 1
fill -622 117 559 -620 117 409 warped_slab keep
# Side 2
fill -646 117 559 -648 117 409 warped_slab keep

# Move alive players still in their lobby area into the actual arena
execute as @a[tag=player,scores={battle_box_status=1}] at @s if entity @s[y=119,dy=3] run function minecraft:battle_box/rounds/player_tp/tp_default